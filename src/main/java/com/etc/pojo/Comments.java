package com.etc.pojo;

import java.util.Date;

public class Comments {
    private Integer commentId;

    private Integer commentScore;

    private Date commentTime;

    private Integer userId;

    private Integer movieId;

    private String commentContent;

    private Users users;

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getCommentScore() {
        return commentScore;
    }

    public void setCommentScore(Integer commentScore) {
        this.commentScore = commentScore;
    }

    public Date getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(Date commentTime) {
        this.commentTime = commentTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent == null ? null : commentContent.trim();
    }

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "Comments{" +
                "commentId=" + commentId +
                ", commentScore=" + commentScore +
                ", commentTime=" + commentTime +
                ", userId=" + userId +
                ", movieId=" + movieId +
                ", commentContent='" + commentContent + '\'' +
                ", users=" + users +
                '}';
    }
}