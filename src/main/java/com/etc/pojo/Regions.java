package com.etc.pojo;

import java.io.Serializable;

public class Regions implements Serializable {
    private Integer regionId;

    private String regionName;

    private Integer regionLevel;

    private String regionPinyin;

    private Integer parentId;

    public Integer getRegionId() {
        return regionId;
    }

    public void setRegionId(Integer regionId) {
        this.regionId = regionId;
    }

    public String getRegionName() {
        return regionName;
    }

    public void setRegionName(String regionName) {
        this.regionName = regionName == null ? null : regionName.trim();
    }

    public Integer getRegionLevel() {
        return regionLevel;
    }

    public void setRegionLevel(Integer regionLevel) {
        this.regionLevel = regionLevel;
    }

    public String getRegionPinyin() {
        return regionPinyin;
    }

    public void setRegionPinyin(String regionPinyin) {
        this.regionPinyin = regionPinyin;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    @Override
    public String toString() {
        return "Regions{" +
                "regionId=" + regionId +
                ", regionName='" + regionName + '\'' +
                ", regionLevel=" + regionLevel +
                ", regionPinyin='" + regionPinyin + '\'' +
                ", parentId=" + parentId +
                '}';
    }
}