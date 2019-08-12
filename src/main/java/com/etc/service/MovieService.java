package com.etc.service;

import com.etc.pojo.MoviesWithBLOBs;

import java.util.List;

public interface MovieService {
    List<MoviesWithBLOBs> selectRecentMovie();

    int insert(MoviesWithBLOBs record);

    int insertSelective(MoviesWithBLOBs record);

    MoviesWithBLOBs selectByPrimaryKey(Integer movieId);

    List<MoviesWithBLOBs> selectMovieOrderByMark();

    List<MoviesWithBLOBs> selectComics();

    List<MoviesWithBLOBs> selectTelePlays();

    List<MoviesWithBLOBs> selectTelePlaysOrderByMark();

    List<MoviesWithBLOBs> selectRecentTelePlays();

    List<MoviesWithBLOBs> selectTelePlaysByChina();

    List<MoviesWithBLOBs> selectTelePlaysByUnChina();

    List<MoviesWithBLOBs> selectVarietyShows();

    List<MoviesWithBLOBs> selectRecentComics();
}
