package com.etc.vo;

public class UpdateCMListVo {
    private Integer listId;
    private String unavailableSeat;

    public Integer getListId() {
        return listId;
    }

    public void setListId(Integer listId) {
        this.listId = listId;
    }

    public String getUnavailableSeat() {
        return unavailableSeat;
    }

    public void setUnavailableSeat(String unavailableSeat) {
        this.unavailableSeat = unavailableSeat;
    }

    @Override
    public String toString() {
        return "UpdateCMListVo{" +
                "listId=" + listId +
                ", unavailableSeat='" + unavailableSeat + '\'' +
                '}';
    }
}
