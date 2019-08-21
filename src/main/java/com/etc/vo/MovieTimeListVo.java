package com.etc.vo;


import java.util.Date;

public class MovieTimeListVo {
    private Date showTime;

    public Date getShowTime() {
        return showTime;
    }

    public void setShowTime(Date showTime) {
        this.showTime = showTime;
    }

    @Override
    public String toString() {
        return "MovieTimeListVo{" +
                "showTime=" + showTime +
                '}';
    }
}
