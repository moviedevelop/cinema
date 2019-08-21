package com.etc.service;

import com.etc.pojo.Regions;

import java.util.List;

public interface RegionService {
    List<Regions> selectAllCity();

    List<Regions> selectCountyByCityId(Integer parentId);
}
