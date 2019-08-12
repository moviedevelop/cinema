package com.etc.dao;

import com.etc.pojo.Movies;
import com.etc.pojo.MoviesWithBLOBs;

import java.util.List;

public interface MoviesMapper {


    int deleteByPrimaryKey(Integer movieId);

    int insert(MoviesWithBLOBs record);

    int insertSelective(MoviesWithBLOBs record);

    MoviesWithBLOBs selectByPrimaryKey(Integer movieId);

    int updateByPrimaryKeySelective(MoviesWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(MoviesWithBLOBs record);

    int updateByPrimaryKey(Movies record);

    List<MoviesWithBLOBs> selectRecentMovie();

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