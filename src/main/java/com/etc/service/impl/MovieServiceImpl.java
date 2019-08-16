package com.etc.service.impl;

import com.etc.dao.MoviesMapper;
import com.etc.pojo.MoviesWithBLOBs;
import com.etc.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("movieService")
public class MovieServiceImpl implements MovieService {
    @Autowired
    private MoviesMapper mapper;

    @Override
    public List<MoviesWithBLOBs> selectRecentMovie() {
        return mapper.selectRecentMovie();
    }

    @Override
    public int insert(MoviesWithBLOBs record) {
        return mapper.insert(record);
    }

    @Override
    public int insertSelective(MoviesWithBLOBs record) {
        return mapper.insertSelective(record);
    }

    @Override
    public MoviesWithBLOBs selectByPrimaryKey(Integer movieId) {
        return mapper.selectByPrimaryKey(movieId);
    }

    @Override
    public List<MoviesWithBLOBs> selectMovieOrderByMark() {
        return mapper.selectMovieOrderByMark();
    }

    @Override
    public List<MoviesWithBLOBs> selectComics() {
        return mapper.selectComics();
    }

    @Override
    public List<MoviesWithBLOBs> selectTelePlays() {
        return mapper.selectTelePlays();
    }
}