package com.etc.service.impl;

import com.etc.dao.CMListMapper;
import com.etc.service.CMListService;
import com.etc.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("cmListService")
public class CMListServiceImpl implements CMListService {
    @Autowired
    private CMListMapper mapper;

    @Override
    public List<MovieTimeListVo> selectUseTime(Integer movieId) {
        return mapper.selectUseTime(movieId);
    }

    @Override
    public List<CMListVo> selectCinemaInfo(ArgumentVo args) {
        return mapper.selectCinemaInfo(args);
    }

    @Override
    public List<MovieCinemaInfo> selectCinemaDisplayInfo(ArgumentVo args) {
        return mapper.selectCinemaDisplayInfo(args);
    }

    @Override
    public MovieSeatVo forChooseSeat(Integer listId) {
        return mapper.forChooseSeat(listId);
    }

    @Override
    public Float getPrice(Integer listId) {
        return mapper.getPrice(listId);
    }

    @Override
    public void updateSeatInfo(UpdateCMListVo updateCMListVo) {
        mapper.updateSeatInfo(updateCMListVo);
    }
}
