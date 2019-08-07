package com.etc.dao;

import com.etc.pojo.CMList;

public interface CMListMapper {

    int deleteByPrimaryKey(Integer listId);

    int insert(CMList record);

    int insertSelective(CMList record);

    CMList selectByPrimaryKey(Integer listId);

    int updateByPrimaryKeySelective(CMList record);

    int updateByPrimaryKey(CMList record);
}