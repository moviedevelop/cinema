package com.etc.vo;

/**
 * 用于接收查询影院和影片信息的实体类
 */
public class ArgumentVo {
    private Integer movieId;

    private Integer cinemaId;

    private Integer cityId;

    private Integer countyId;

    private String chooseDay;

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public Integer getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Integer cinemaId) {
        this.cinemaId = cinemaId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public Integer getCountyId() {
        return countyId;
    }

    public void setCountyId(Integer countyId) {
        this.countyId = countyId;
    }

    public String getChooseDay() {
        return chooseDay;
    }

    public void setChooseDay(String chooseDay) {
        this.chooseDay = chooseDay;
    }

    @Override
    public String toString() {
        return "ArgumentVo{" +
                "movieId=" + movieId +
                ", cinemaId=" + cinemaId +
                ", cityId=" + cityId +
                ", countyId=" + countyId +
                ", chooseDay='" + chooseDay + '\'' +
                '}';
    }
}
