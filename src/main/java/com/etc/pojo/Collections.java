package com.etc.pojo;

public class Collections {
    private Integer collectionId;

    private Integer userId;

    private Integer movieId;

    public Integer getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(Integer collectionId) {
        this.collectionId = collectionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    @Override
    public String toString() {
        return "Collections{" +
                "collectionId=" + collectionId +
                ", userId=" + userId +
                ", movieId=" + movieId +
                '}';
    }
}