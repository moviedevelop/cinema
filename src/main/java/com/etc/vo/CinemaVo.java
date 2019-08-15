package com.etc.vo;

public class CinemaVo {
    private Integer cinemaId;

    private String cinemaName;

    private String city;

    private String county;

    private String cinemaAddress;

    public Integer getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Integer cinemaId) {
        this.cinemaId = cinemaId;
    }

    public String getCinemaName() {
        return cinemaName;
    }

    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getCinemaAddress() {
        return cinemaAddress;
    }

    public void setCinemaAddress(String cinemaAddress) {
        this.cinemaAddress = cinemaAddress;
    }

    @Override
    public String toString() {
        return "CinemaVo{" +
                "cinemaId=" + cinemaId +
                ", cinemaName='" + cinemaName + '\'' +
                ", city='" + city + '\'' +
                ", county='" + county + '\'' +
                ", cinemaAddress='" + cinemaAddress + '\'' +
                '}';
    }
}
