package com.etc.pojo;

public class Movies {
    private Integer movieId;

    private String movieName;

    private String movieTime;

    private String movieDate;

    private String movieArea;

    private String movieLang;

    private String movieDirector;

    private String movieWriter;

    private String movieActor;

    private String movieType;

    private Float movieMark;

    private String keyWord;

    private Integer movieSize;


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
        this.movieName = movieName;
    }

    public String getMovieTime() {
        return movieTime;
    }

    public void setMovieTime(String movieTime) {
        this.movieTime = movieTime;
    }

    public String getMovieDate() {
        return movieDate;
    }

    public void setMovieDate(String movieDate) {
        this.movieDate = movieDate;
    }

    public String getMovieArea() {
        return movieArea;
    }

    public void setMovieArea(String movieArea) {
        this.movieArea = movieArea;
    }

    public String getMovieLang() {
        return movieLang;
    }

    public void setMovieLang(String movieLang) {
        this.movieLang = movieLang;
    }

    public String getMovieDirector() {
        return movieDirector;
    }

    public void setMovieDirector(String movieDirector) {
        this.movieDirector = movieDirector;
    }

    public String getMovieWriter() {
        return movieWriter;
    }

    public void setMovieWriter(String movieWriter) {
        this.movieWriter = movieWriter;
    }

    public String getMovieActor() {
        return movieActor;
    }

    public void setMovieActor(String movieActor) {
        this.movieActor = movieActor;
    }

    public String getMovieType() {
        return movieType;
    }

    public void setMovieType(String movieType) {
        this.movieType = movieType;
    }

    public Float getMovieMark() {
        return movieMark;
    }

    public void setMovieMark(Float movieMark) {
        this.movieMark = movieMark;
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public Integer getMovieSize() {
        return movieSize;
    }

    public void setMovieSize(Integer movieSize) {
        this.movieSize = movieSize;
    }

    @Override
    public String toString() {
        return "Movies{" +
                "movieId=" + movieId +
                ", movieName='" + movieName + '\'' +
                ", movieTime='" + movieTime + '\'' +
                ", movieDate='" + movieDate + '\'' +
                ", movieArea='" + movieArea + '\'' +
                ", movieLang='" + movieLang + '\'' +
                ", movieDirector='" + movieDirector + '\'' +
                ", movieWriter='" + movieWriter + '\'' +
                ", movieActor='" + movieActor + '\'' +
                ", movieType='" + movieType + '\'' +
                ", movieMark=" + movieMark +
                ", keyWord='" + keyWord + '\'' +
                ", movieSize=" + movieSize +
                '}';
    }
}