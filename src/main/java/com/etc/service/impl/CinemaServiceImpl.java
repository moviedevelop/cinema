package com.etc.service.impl;

import com.etc.dao.CinemasMapper;
import com.etc.service.CinemaService;
import com.etc.vo.CinemaVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("cinemaService")
public class CinemaServiceImpl implements CinemaService {

    @Autowired
    private CinemasMapper mapper;

    @Override
    public List<CinemaVo> selectCinemaByCity(Integer cityId) {
        return mapper.selectCinemaByCity(cityId);
    }
}
