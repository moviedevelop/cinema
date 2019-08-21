package com.etc.vo;

public class AlipayArgument {
    private Integer orderId;
    private String orderNo;
    private Integer listId;
    private String showTime;
    private String startTime;
    private String orderNum;
    private Float orderPrice;
    private String movieName;
    private String cinemaName;
    private String orderSeat;
    private final String product_code = "FAST_INSTANT_TRADE_PAY";
    private final String timeout_express = "15m";

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

    public Integer getListId() {
        return listId;
    }

    public void setListId(Integer listId) {
        this.listId = listId;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public Float getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Float orderPrice) {
        this.orderPrice = orderPrice;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getCinemaName() {
        return cinemaName;
    }

    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName;
    }

    public String getProduct_code() {
        return product_code;
    }

    public String getTimeout_express() {
        return timeout_express;
    }

    public String getOrderSeat() {
        return orderSeat;
    }

    public void setOrderSeat(String orderSeat) {
        this.orderSeat = orderSeat;
    }

    @Override
    public String toString() {
        return "AlipayArgument{" +
                "orderId=" + orderId +
                ", orderNo='" + orderNo + '\'' +
                ", listId=" + listId +
                ", showTime='" + showTime + '\'' +
                ", startTime='" + startTime + '\'' +
                ", orderNum='" + orderNum + '\'' +
                ", orderPrice=" + orderPrice +
                ", movieName='" + movieName + '\'' +
                ", cinemaName='" + cinemaName + '\'' +
                ", orderSeat='" + orderSeat + '\'' +
                ", product_code='" + product_code + '\'' +
                ", timeout_express='" + timeout_express + '\'' +
                '}';
    }
}
