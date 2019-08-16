package com.etc.service.impl;

import com.etc.dao.CMListMapper;
import com.etc.service.CMListService;
import com.etc.vo.ArgumentVo;
import com.etc.vo.CMListVo;
import com.etc.vo.MovieTimeListVo;
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
}
