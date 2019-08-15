package com.etc.dao;

import com.etc.pojo.Cinemas;
import com.etc.vo.CinemaVo;

import java.util.List;

public interface CinemasMapper {


    int deleteByPrimaryKey(Integer cinemaId);

    int insert(Cinemas record);

    int insertSelective(Cinemas record);

    Cinemas selectByPrimaryKey(Integer cinemaId);

    int updateByPrimaryKeySelective(Cinemas record);

    int updateByPrimaryKeyWithBLOBs(Cinemas record);

    int updateByPrimaryKey(Cinemas record);

    List<CinemaVo> selectCinemaByCity(Integer cityId);
}