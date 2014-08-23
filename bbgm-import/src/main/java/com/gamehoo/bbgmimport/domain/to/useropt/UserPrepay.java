package com.gamehoo.bbgmimport.domain.to.useropt;

import com.gamehoo.domain.to.BaseTo;

public class UserPrepay extends BaseTo{
    private String fc;     //是否首充；1：首冲；0：再次充值
    private Double c;           // 充值现金
    private Integer gem;          //获得的钻石
    private String t;          // 充值类型
    private Integer od;         // 服务器开服天数

    public String getFc() {
        return fc;
    }

    public void setFc(String fc) {
        this.fc = fc;
    }

    public Double getC() {
        return c;
    }

    public void setC(Double c) {
        this.c = c;
    }

    public Integer getGem() {
        return gem;
    }

    public void setGem(Integer gem) {
        this.gem = gem;
    }

    public String getT() {
        return t;
    }

    public void setT(String t) {
        this.t = t;
    }

    public Integer getOd() {
        return od;
    }

    public void setOd(Integer od) {
        this.od = od;
    }
}