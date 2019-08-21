package com.etc.vo;

/**
 * 用于保存根据影院查询对应电影的放映场次的信息
 */
public class MovieCinemaInfo {
    private Integer listId;

    private String startTime;

    private String MovieLang;

    private String movieTime;

    private String roomName;

    private Integer cinemaId;

    private Integer movieId;

    private Float price;

    public Integer getListId() {
        return listId;
    }

    public void setListId(Integer listId) {
        this.listId = listId;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getMovieLang() {
        return MovieLang;
    }

    public void setMovieLang(String movieLang) {
        MovieLang = movieLang;
    }

    public String getMovieTime() {
        return movieTime;
    }

    public void setMovieTime(String movieTime) {
        this.movieTime = movieTime;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Integer cinemaId) {
        this.cinemaId = cinemaId;
    }

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    @Override
    public String toString() {
        return "MovieCinemaInfo{" +
                "listId=" + listId +
                ", startTime='" + startTime + '\'' +
                ", MovieLang='" + MovieLang + '\'' +
                ", movieTime='" + movieTime + '\'' +
                ", roomName='" + roomName + '\'' +
                ", cinemaId=" + cinemaId +
                ", movieId=" + movieId +
                ", price=" + price +
                '}';
    }
}
