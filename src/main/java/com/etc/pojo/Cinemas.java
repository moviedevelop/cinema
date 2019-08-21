package com.etc.pojo;

public class Cinemas {
    private Integer cinemaId;

    private String cinemaName;

    private Integer cinemaCity;

    private Integer cinemaArea;

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
        this.cinemaName = cinemaName == null ? null : cinemaName.trim();
    }

    public Integer getCinemaCity() {
        return cinemaCity;
    }

    public void setCinemaCity(Integer cinemaCity) {
        this.cinemaCity = cinemaCity;
    }

    public Integer getCinemaArea() {
        return cinemaArea;
    }

    public void setCinemaArea(Integer cinemaArea) {
        this.cinemaArea = cinemaArea;
    }

    public String getCinemaAddress() {
        return cinemaAddress;
    }

    public void setCinemaAddress(String cinemaAddress) {
        this.cinemaAddress = cinemaAddress == null ? null : cinemaAddress.trim();
    }
}