package com.etc.dao;

import com.etc.pojo.CMList;
import com.etc.vo.*;

import java.util.List;

public interface CMListMapper {

    int deleteByPrimaryKey(Integer listId);

    int insert(CMList record);

    int insertSelective(CMList record);

    CMList selectByPrimaryKey(Integer listId);

    int updateByPrimaryKeySelective(CMList record);

    int updateByPrimaryKey(CMList record);

    List<MovieTimeListVo> selectUseTime(Integer movieId);

    List<CMListVo> selectCinemaInfo(ArgumentVo args);

    List<MovieCinemaInfo> selectCinemaDisplayInfo(ArgumentVo args);

    MovieSeatVo forChooseSeat(Integer listId);
}