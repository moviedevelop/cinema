package com.etc.dao;

import com.etc.pojo.Regions;

import java.util.List;

public interface RegionsMapper {

    int deleteByPrimaryKey(Integer regionId);

    int insert(Regions record);

    int insertSelective(Regions record);

    Regions selectByPrimaryKey(Integer regionId);

    int updateByPrimaryKeySelective(Regions record);

    int updateByPrimaryKey(Regions record);

    List<Regions> selectAllCity();
}