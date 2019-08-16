package com.etc.service.impl;

import com.etc.dao.RegionsMapper;
import com.etc.pojo.Regions;
import com.etc.service.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("regionService")
public class RegionServiceImpl implements RegionService {
    @Autowired
    private RegionsMapper mapper;

    @Override
    public List<Regions> selectAllCity() {
        return mapper.selectAllCity();
    }

    @Override
    public List<Regions> selectCountyByCityId(Integer parentId) {
        return mapper.selectCountyByCityId(parentId);
    }
}
