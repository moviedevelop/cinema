package com.etc.vo;

/**
 * 用于将一些基本的订单信息传到后台进行处理
 */
public class SaveOrderVo {
    private Integer listId;     //放映厅放映信息编号
    private String seat;        //用户实际选择作为的情况
    private String unavailableSeat;     //存入数据库的数据
    private Integer totalCount;     //票数
    private Float totalPrice;       //总价

    public Integer getListId() {
        return listId;
    }

    public void setListId(Integer listId) {
        this.listId = listId;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public String getUnavailableSeat() {
        return unavailableSeat;
    }

    public void setUnavailableSeat(String unavailableSeat) {
        this.unavailableSeat = unavailableSeat;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public Float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Float totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Override
    public String toString() {
        return "SaveOrderVo{" +
                "listId=" + listId +
                ", seat='" + seat + '\'' +
                ", unavailableSeat='" + unavailableSeat + '\'' +
                ", totalCount=" + totalCount +
                ", totalPrice=" + totalPrice +
                '}';
    }
}
