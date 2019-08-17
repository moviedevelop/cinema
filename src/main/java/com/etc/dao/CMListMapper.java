package com.etc.dao;

import com.etc.pojo.CMList;
import com.etc.vo.ArgumentVo;
import com.etc.vo.CMListVo;
import com.etc.vo.MovieCinemaInfo;
import com.etc.vo.MovieTimeListVo;

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
}