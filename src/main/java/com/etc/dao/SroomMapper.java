package com.etc.dao;

import com.etc.pojo.Sroom;

public interface SroomMapper {
    int deleteByPrimaryKey(Integer roomId);

    int insert(Sroom record);

    int insertSelective(Sroom record);

    Sroom selectByPrimaryKey(Integer roomId);

    int updateByPrimaryKeySelective(Sroom record);

    int updateByPrimaryKey(Sroom record);
}