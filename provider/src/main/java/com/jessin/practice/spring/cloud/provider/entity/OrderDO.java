package com.jessin.practice.spring.cloud.provider.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.jessin.practice.spring.cloud.provider.es.EsDocument;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 是否针对es对象单独再搞个DO
 */
public class OrderDO implements Serializable, EsDocument {
    private Long id;

    private Long orderNo;

    private String remark;

    private String cancelReason;

    private Long uid;

    private Long storeId;

    private BigDecimal totalAmount;

    private BigDecimal payAmount;

    private Byte orderStatus;

    private Date createTime;

    private Date lastModifiedTime;

    private long version;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(Long orderNo) {
        this.orderNo = orderNo;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getCancelReason() {
        return cancelReason;
    }

    public void setCancelReason(String cancelReason) {
        this.cancelReason = cancelReason == null ? null : cancelReason.trim();
    }

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public Long getStoreId() {
        return storeId;
    }

    public void setStoreId(Long storeId) {
        this.storeId = storeId;
    }

    public BigDecimal getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(BigDecimal totalAmount) {
        this.totalAmount = totalAmount;
    }

    public BigDecimal getPayAmount() {
        return payAmount;
    }

    public void setPayAmount(BigDecimal payAmount) {
        this.payAmount = payAmount;
    }

    public Byte getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Byte orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastModifiedTime() {
        return lastModifiedTime;
    }

    public void setLastModifiedTime(Date lastModifiedTime) {
        this.lastModifiedTime = lastModifiedTime;
    }

    /**
     * todo @Transient
     * 不持久化，仅内存临时使用
     * @return
     */
    @JsonIgnore
    @Override
    public String getDocId() {
        return String.valueOf(orderNo);
    }

    @JsonIgnore
    @Override
    public long getVersion() {
        return version;
    }

    @Override
    public void setVersion(long version) {
        this.version = version;
    }

    @Override
    public String toString() {
        return "OrderDO{" +
                "id=" + id +
                ", orderNo=" + orderNo +
                ", remark='" + remark + '\'' +
                ", cancelReason='" + cancelReason + '\'' +
                ", uid=" + uid +
                ", storeId=" + storeId +
                ", totalAmount=" + totalAmount +
                ", payAmount=" + payAmount +
                ", orderStatus=" + orderStatus +
                ", createTime=" + createTime +
                ", lastModifiedTime=" + lastModifiedTime +
                ", version=" + version +
                '}';
    }
}