package com.gamehoo.domain.to.response;

import com.gamehoo.domain.to.BaseTo;

public class AttrInfo extends BaseTo {
    private String name;
    private Long sid;
    private Long oid;
    private Long amount;
    private Integer level;
    private Integer rank;
    private Integer hc;//英雄修炼次数

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getSid() {
        return sid;
    }

    public void setSid(Long sid) {
        this.sid = sid;
    }

    public Long getOid() {
        return oid;
    }

    public void setOid(Long oid) {
        this.oid = oid;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    public Integer getHc() {
        return hc;
    }

    public void setHc(Integer hc) {
        this.hc = hc;
    }

    @Override
    public String toString() {
        return "AttrInfo{" +
                "name='" + name + '\'' +
                ", sid=" + sid +
                ", oid=" + oid +
                ", amount=" + amount +
                ", level=" + level +
                '}';
    }
}
