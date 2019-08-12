package com.etc.service.impl;

import com.etc.dao.CollectionsMapper;
import com.etc.pojo.Collections;
import com.etc.service.CollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("collectionService")
public class CollectionServiceImpl implements CollectionService {
    @Autowired
    private CollectionsMapper mapper;

    @Override
    public int deleteByPrimaryKey(Integer collectionId) {
        return mapper.deleteByPrimaryKey(collectionId);
    }

    @Override
    public int insert(Collections record) {
        return mapper.insert(record);
    }

    @Override
    public int insertSelective(Collections record) {
        return mapper.insertSelective(record);
    }

    @Override
    public Collections selectByPrimaryKey(Integer collectionId) {
        return mapper.selectByPrimaryKey(collectionId);
    }

    @Override
    public int updateByPrimaryKeySelective(Collections record) {
        return mapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Collections record) {
        return mapper.updateByPrimaryKey(record);
    }
}
