package com.etc.service;

import com.etc.pojo.MoviesWithBLOBs;

import java.util.List;

public interface MovieService {
    List<MoviesWithBLOBs> selectRecentMovie();

    int insert(MoviesWithBLOBs record);

    int insertSelective(MoviesWithBLOBs record);

    MoviesWithBLOBs selectByPrimaryKey(Integer movieId);

    List<MoviesWithBLOBs> selectMovieOrderByMark();
}
