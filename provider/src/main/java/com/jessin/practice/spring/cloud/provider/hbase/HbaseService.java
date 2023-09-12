package com.jessin.practice.spring.cloud.provider.hbase;


import com.google.common.collect.Lists;
import com.jessin.practice.spring.cloud.provider.constant.HbaseConstants;
import com.jessin.practice.spring.cloud.provider.entity.OrderDO;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.client.Scan;
import org.apache.hadoop.hbase.filter.*;
import org.apache.hadoop.hbase.util.Bytes;
import org.springframework.data.hadoop.hbase.HbaseTemplate;
import org.springframework.data.hadoop.hbase.RowMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * https://blog.csdn.net/yangbindxj/article/details/125037756
 *
 * 单条数据写入比较强，复杂查询比较弱，需要构建个二级索引，例如这里的rowKey可以是订单号，存储订单详情。然后二级索引支持复杂查询，可以找到订单号，
 * 再查订单详情即可
 */
@Service
@Slf4j
public class HbaseService {

    @Resource
    private HbaseTemplate hbaseTemplate;

    public List<OrderDO> query(String uid, Date createTimeBegin, Date createTimeEnd) {
        String startRowKey = buildRowKey(uid, new Date(createTimeBegin == null ? 0 : createTimeBegin.getTime()), "0");
        String stopRowKey = buildRowKey(uid, new Date(createTimeEnd == null ? System.currentTimeMillis() : createTimeEnd.getTime()), "0");

//        List<OrderDO> dtos = getRowKeyAndColumn(HbaseConstants.ORDER_INFO, startRowKey, stopRowKey, HbaseConstants.COLUMN_FAMILY_STR, "id", new OrderRowMapper());

        List<OrderDO> dtos = getRowKeyAndColumn(HbaseConstants.ORDER_INFO, startRowKey, stopRowKey, HbaseConstants.COLUMN_FAMILY_STR, null, new OrderRowMapper());

        return dtos;
    }

    /**
     * 可以只返回对应的列族和列
     * @param tableName
     * @param startRowkey
     * @param stopRowkey
     * @param familyColumn 列族
     * @param qualifier 列
     * @param rowMapper
     * @return
     */
    private <T> List<T> getRowKeyAndColumn(String tableName, String startRowkey, String stopRowkey, String familyColumn, String qualifier, RowMapper<T> rowMapper) {
        FilterList filterList = new FilterList(FilterList.Operator.MUST_PASS_ALL);
        if (StringUtils.isNotBlank(familyColumn)) {
            log.debug("{}", familyColumn);
            filterList.addFilter(new FamilyFilter(CompareFilter.CompareOp.EQUAL, new BinaryComparator(Bytes.toBytes(familyColumn))));
        }
        if (StringUtils.isNotBlank(qualifier)) {
            log.debug("{}", qualifier);
            filterList.addFilter(new QualifierFilter(CompareFilter.CompareOp.EQUAL, new BinaryComparator(Bytes.toBytes(qualifier))));
        }
        Scan scan = new Scan();
        if (filterList.getFilters().size() > 0) {
            scan.setFilter(filterList);
        }
        scan.setStartRow(Bytes.toBytes(startRowkey));
        scan.setStopRow(Bytes.toBytes(stopRowkey));

        return hbaseTemplate.find(tableName, scan, rowMapper);
    }


    public OrderDO query(String uid, Date createTimeBegin, String orderNo) {
//        List<OrderDO> orderList = getListRowkeyData(HbaseConstants.ORDER_INFO, Lists.newArrayList(buildRowKey(uid, createTimeBegin, orderNo)), HbaseConstants.COLUMN_FAMILY_STR, "id", new OrderRowMapper());

        List<OrderDO> orderList = getListRowkeyData(HbaseConstants.ORDER_INFO, Lists.newArrayList(buildRowKey(uid, createTimeBegin, orderNo)), HbaseConstants.COLUMN_FAMILY_STR, null, new OrderRowMapper());

        return orderList.stream().findFirst().orElse(null);
    }

    /**
     * 查询多个rowKey，这里是循环查询
     * @param tableName
     * @param rowKeys
     * @param familyColumn
     * @param column
     * @param rowMapper
     * @return
     * @param <T>
     */
    private <T> List<T> getListRowkeyData(String tableName, List<String> rowKeys, String familyColumn, String column, RowMapper<T> rowMapper) {
        return rowKeys.stream().map(rk -> {
            if (StringUtils.isNotBlank(familyColumn)) {
                if (StringUtils.isNotBlank(column)) {
                    return hbaseTemplate.get(tableName, rk, familyColumn, column, rowMapper);
                } else {
                    return hbaseTemplate.get(tableName, rk, familyColumn, rowMapper);
                }
            }
            return hbaseTemplate.get(tableName, rk, rowMapper);
        }).collect(Collectors.toList());
    }

    public void putDataToHBase(OrderDO orderDO) {
        // message是所有详情都放到一列中
        Put put = new Put(buildRowKey(orderDO));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.id, Bytes.toBytes(orderDO.getId()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.ORDER_NO, Bytes.toBytes(orderDO.getOrderNo()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.REMARK, Bytes.toBytes(orderDO.getRemark()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.cancelReason, Bytes.toBytes(orderDO.getCancelReason()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.uid, Bytes.toBytes(orderDO.getUid()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.storeId, Bytes.toBytes(orderDO.getStoreId()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.totalAmount, Bytes.toBytes(orderDO.getTotalAmount()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.payAmount, Bytes.toBytes(orderDO.getPayAmount()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.orderStatus, Bytes.toBytes(orderDO.getOrderStatus()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.createTime, Bytes.toBytes(orderDO.getCreateTime().getTime()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.lastModifiedTime, Bytes.toBytes(orderDO.getLastModifiedTime().getTime()));
        put.addColumn(HbaseConstants.COLUMN_FAMILY, HbaseConstants.version, Bytes.toBytes(orderDO.getVersion()));

        hbaseTemplate.execute(HbaseConstants.ORDER_INFO, (table) -> {
            table.put(put);
            return null;
        });
    }

    private byte[] buildRowKey(String uid, long createTime) {
        return Bytes.toBytes(buildRowKey(uid, new Date(createTime), "0"));
    }

    private byte[] buildRowKey(OrderDO orderDO) {
        return Bytes.toBytes(buildRowKey(String.valueOf(orderDO.getUid()), orderDO.getCreateTime(), String.valueOf(orderDO.getOrderNo())));
    }

    /**
     * rowKey = uid + createTime + orderNo
     * 底层转换为string进行编码，增加可读性，适配api
     * @return
     */
    private String buildRowKey(String uid, Date createTime, String orderNo) {
        String rowKey = prefixZero(uid, 20) + prefixZero(createTime, 20) + prefixZero(orderNo, 20);
        log.info("(uid={} createTime={} orderNo={}) -> build rowKey {}", uid, createTime, orderNo, rowKey);
        return rowKey;
    }

    /**
     * long类型，最大20个字符
     * @param a
     * @param charLen
     * @return
     */
    private String prefixZero(Object a, int charLen) {
        StringBuilder stringBuilder = new StringBuilder();
        String aStr;
        if (a instanceof Date) {
            // 时间戳不要用毫秒，数据库只会存到秒
            aStr = String.valueOf(((Date)a).getTime() / 1000 * 1000);
        } else {
            aStr = String.valueOf(a);
        }
        int len = charLen - aStr.length();
        for (int i = 0; i < len; i++) {
            stringBuilder.append('0');
        }
        stringBuilder.append(aStr);
        return stringBuilder.toString();
    }
}
