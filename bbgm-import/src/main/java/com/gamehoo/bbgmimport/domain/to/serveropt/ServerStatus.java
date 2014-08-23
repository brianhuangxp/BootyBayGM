package com.gamehoo.bbgmimport.domain.to.serveropt;

import com.gamehoo.domain.to.BaseTo;

public class ServerStatus extends BaseTo {
    private Long dpNum;         //dataPersistenceCount；持久化数据个数
    private Long lpdTime;       //lastPersistenceTime;最近持久化时间
    private Long lrrTime;       //lastReceiveRequestTime;最近接受请求时间
    private Integer olNum;         //onlineCount;在线玩家数
    private Long  rrNum;         //receiveRequestIncremental;接收请求增减值
    private Integer rNum;          //registerCount;注册用户总数
    private Long sumRRNum;     //sumReceiveRequestCount；接收请求数
    private Integer  av;            // allianceVictories;联盟胜利点
    private Integer  hv;            //hordeVictories;部落胜利点
    private Integer  ab;            //allianceBlessings;联盟祝福数
    private Integer  hb;            //hordeBlessings部落祝福数

    public Long getDpNum() {
        return dpNum;
    }

    public void setDpNum(Long dpNum) {
        this.dpNum = dpNum;
    }

    public Long getLpdTime() {
        return lpdTime;
    }

    public void setLpdTime(Long lpdTime) {
        this.lpdTime = lpdTime;
    }

    public Long getLrrTime() {
        return lrrTime;
    }

    public void setLrrTime(Long lrrTime) {
        this.lrrTime = lrrTime;
    }

    public Integer getOlNum() {
        return olNum;
    }

    public void setOlNum(Integer olNum) {
        this.olNum = olNum;
    }

    public Long getRrNum() {
        return rrNum;
    }

    public void setRrNum(Long rrNum) {
        this.rrNum = rrNum;
    }

    public Integer getrNum() {
        return rNum;
    }

    public void setrNum(Integer rNum) {
        this.rNum = rNum;
    }

    public Long getSumRRNum() {
        return sumRRNum;
    }

    public void setSumRRNum(Long sumRRNum) {
        this.sumRRNum = sumRRNum;
    }

    public Integer getAv() {
        return av;
    }

    public void setAv(Integer av) {
        this.av = av;
    }

    public Integer getHv() {
        return hv;
    }

    public void setHv(Integer hv) {
        this.hv = hv;
    }

    public Integer getAb() {
        return ab;
    }

    public void setAb(Integer ab) {
        this.ab = ab;
    }

    public Integer getHb() {
        return hb;
    }

    public void setHb(Integer hb) {
        this.hb = hb;
    }
}