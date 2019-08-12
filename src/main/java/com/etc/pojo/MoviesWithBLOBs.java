package com.etc.pojo;

import java.io.Serializable;

public class MoviesWithBLOBs extends Movies implements Serializable {
    private String movieImg;

    private String description;

    public String getMovieImg() {
        return movieImg;
    }

    public void setMovieImg(String movieImg) {
        this.movieImg = movieImg == null ? null : movieImg.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    @Override
    public String toString() {
        return super.toString() + "MoviesWithBLOBs{" +
                "movieImg='" + movieImg + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}