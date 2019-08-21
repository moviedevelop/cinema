package com.etc.service;

import com.etc.pojo.Collections;

public interface CollectionService {
    int deleteByPrimaryKey(Integer collectionId);

    int insert(Collections record);

    int insertSelective(Collections record);

    Collections selectByPrimaryKey(Integer collectionId);

    int updateByPrimaryKeySelective(Collections record);

    int updateByPrimaryKey(Collections record);
}
