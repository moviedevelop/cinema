package com.etc.pojo;

import java.util.Date;

public class Orders {
    private Integer orderId;

    private String orderNo;

    private Date orderTime;

    private Integer listId;

    private Integer orderNum;

    private String orderSeat;

    private Integer userId;

    private Integer orderStatus;

    private Float orderPrice;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Integer getListId() {
        return listId;
    }

    public void setListId(Integer listId) {
        this.listId = listId;
    }

    public Integer getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    public String getOrderSeat() {
        return orderSeat;
    }

    public void setOrderSeat(String orderSeat) {
        this.orderSeat = orderSeat == null ? null : orderSeat.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Integer orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Float getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Float orderPrice) {
        this.orderPrice = orderPrice;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "orderId=" + orderId +
                ", orderNo='" + orderNo + '\'' +
                ", orderTime=" + orderTime +
                ", listId=" + listId +
                ", orderNum=" + orderNum +
                ", orderSeat='" + orderSeat + '\'' +
                ", userId=" + userId +
                ", orderStatus=" + orderStatus +
                ", orderPrice=" + orderPrice +
                '}';
    }
}