package com.etc.pojo;

import java.util.Date;

public class Movies {
    private Integer movieId;

    private String movieName;

    private Integer movieTime;

    private Date movieDate;

    private String movieArea;

    private String movieLang;

    private String movieDirector;

    private String movieWriter;

    private String movieActor;

    private String movieType;

    private Long movieBox;

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName == null ? null : movieName.trim();
    }

    public Integer getMovieTime() {
        return movieTime;
    }

    public void setMovieTime(Integer movieTime) {
        this.movieTime = movieTime;
    }

    public Date getMovieDate() {
        return movieDate;
    }

    public void setMovieDate(Date movieDate) {
        this.movieDate = movieDate;
    }

    public String getMovieArea() {
        return movieArea;
    }

    public void setMovieArea(String movieArea) {
        this.movieArea = movieArea == null ? null : movieArea.trim();
    }

    public String getMovieLang() {
        return movieLang;
    }

    public void setMovieLang(String movieLang) {
        this.movieLang = movieLang == null ? null : movieLang.trim();
    }

    public String getMovieDirector() {
        return movieDirector;
    }

    public void setMovieDirector(String movieDirector) {
        this.movieDirector = movieDirector == null ? null : movieDirector.trim();
    }

    public String getMovieWriter() {
        return movieWriter;
    }

    public void setMovieWriter(String movieWriter) {
        this.movieWriter = movieWriter == null ? null : movieWriter.trim();
    }

    public String getMovieActor() {
        return movieActor;
    }

    public void setMovieActor(String movieActor) {
        this.movieActor = movieActor == null ? null : movieActor.trim();
    }

    public String getMovieType() {
        return movieType;
    }

    public void setMovieType(String movieType) {
        this.movieType = movieType == null ? null : movieType.trim();
    }

    public Long getMovieBox() {
        return movieBox;
    }

    public void setMovieBox(Long movieBox) {
        this.movieBox = movieBox;
    }
}