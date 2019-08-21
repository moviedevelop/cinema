package com.etc.service;

import com.etc.vo.*;

import java.util.List;

public interface CMListService {
    List<MovieTimeListVo> selectUseTime(Integer movieId);

    List<CMListVo> selectCinemaInfo(ArgumentVo args);

    List<MovieCinemaInfo> selectCinemaDisplayInfo(ArgumentVo args);

    MovieSeatVo forChooseSeat(Integer listId);

    Float getPrice(Integer listId);

    void updateSeatInfo(UpdateCMListVo updateCMListVo);
}
