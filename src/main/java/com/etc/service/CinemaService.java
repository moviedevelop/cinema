package com.etc.service;

import com.etc.pojo.Cinemas;
import com.etc.vo.CinemaVo;

import java.util.List;

public interface CinemaService {
    List<CinemaVo> selectCinemaByCity(Integer cityId);

    Cinemas selectByPrimaryKey(Integer cinemaId);
}
