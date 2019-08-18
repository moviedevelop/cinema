package com.etc.vo;

public class MovieSeatVo {
    private Integer listId;

    private String movieName;

    private String movieTime;

    private String cinemaName;

    private String roomName;

    private String startTime;

    private String showTime;

    private Float price;

    private String unavailableSeat;

    private String roomMap;

    public Integer getListId() {
        return listId;
    }

    public void setListId(Integer listId) {
        this.listId = listId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieTime() {
        return movieTime;
    }

    public void setMovieTime(String movieTime) {
        this.movieTime = movieTime;
    }

    public String getCinemaName() {
        return cinemaName;
    }

    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getUnavailableSeat() {
        return unavailableSeat;
    }

    public void setUnavailableSeat(String unavailableSeat) {
        this.unavailableSeat = unavailableSeat;
    }

    public String getRoomMap() {
        return roomMap;
    }

    public void setRoomMap(String roomMap) {
        this.roomMap = roomMap;
    }

    @Override
    public String toString() {
        return "MovieSeatVo{" +
                "listId=" + listId +
                ", movieName='" + movieName + '\'' +
                ", movieTime='" + movieTime + '\'' +
                ", cinemaName='" + cinemaName + '\'' +
                ", roomName='" + roomName + '\'' +
                ", startTime='" + startTime + '\'' +
                ", showTime='" + showTime + '\'' +
                ", price=" + price +
                ", unavailableSeat='" + unavailableSeat + '\'' +
                ", roomMap='" + roomMap + '\'' +
                '}';
    }
}
