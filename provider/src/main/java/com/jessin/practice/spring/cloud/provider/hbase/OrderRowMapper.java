package com.jessin.practice.spring.cloud.provider.hbase;

import com.jessin.practice.spring.cloud.provider.constant.HbaseConstants;
import com.jessin.practice.spring.cloud.provider.entity.OrderDO;
import org.apache.commons.lang.BooleanUtils;
import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.util.Bytes;
import org.springframework.data.hadoop.hbase.RowMapper;

import java.util.Date;

public class OrderRowMapper implements RowMapper<OrderDO> {

    @Override
    public OrderDO mapRow(Result result, int rowNum) throws Exception {

        if (BooleanUtils.isFalse(result.getExists())) {
            // 可能查不出来，返回null
            return null;
        }

        OrderDO dto = new OrderDO();
        byte[] idB = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.id);
        dto.setId(idB == null ? null : Bytes.toLong(idB));

        byte[] orderNoB = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.ORDER_NO);
        dto.setOrderNo(orderNoB == null ? null : Bytes.toLong(orderNoB));

        byte[] remarkB = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.REMARK);
        dto.setRemark(remarkB == null ? null : Bytes.toString(remarkB));

        byte[] cancelReasonB = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.cancelReason);
        dto.setCancelReason(cancelReasonB == null ? null : Bytes.toString(cancelReasonB));

        byte[] uidB = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.uid);
        dto.setUid(uidB == null ? null : Bytes.toLong(uidB));

        byte[] storeIdB = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.storeId);
        dto.setStoreId(storeIdB == null ? null : Bytes.toLong(storeIdB));

        byte[] totalAmountB = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.totalAmount);
        dto.setTotalAmount(totalAmountB == null? null : Bytes.toBigDecimal(totalAmountB));

        byte[] payAmount = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.payAmount);
        dto.setPayAmount(payAmount == null ? null : Bytes.toBigDecimal(payAmount));

        byte[] orderStatus = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.orderStatus);
        dto.setOrderStatus(orderStatus == null ? null : orderStatus[0]);

        byte[] createTime = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.createTime);
        dto.setCreateTime(createTime == null ? null : new Date(Bytes.toLong(createTime)));

        byte[] lastModifiedTime = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.lastModifiedTime);
        dto.setLastModifiedTime(lastModifiedTime == null ? null : new Date(Bytes.toLong(lastModifiedTime)));

        byte[] version = result.getValue(HbaseConstants.COLUMN_FAMILY, HbaseConstants.version);
        dto.setVersion(version == null ? 0 : Bytes.toLong(version));

        return dto;
    }
}
