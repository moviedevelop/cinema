package com.etc.pojo;

import java.util.Date;

public class Orders {
    private Integer orderId;

    private Date orderTime;

    private Integer listId;

    private Integer orderNum;

    private String orderSeat;

    private Integer userId;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
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
}