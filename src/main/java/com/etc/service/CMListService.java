package com.etc.service;

import com.etc.vo.ArgumentVo;
import com.etc.vo.CMListVo;
import com.etc.vo.MovieCinemaInfo;
import com.etc.vo.MovieTimeListVo;

import java.util.List;

public interface CMListService {
    List<MovieTimeListVo> selectUseTime(Integer movieId);

    List<CMListVo> selectCinemaInfo(ArgumentVo args);

    List<MovieCinemaInfo> selectCinemaDisplayInfo(ArgumentVo args);
}
