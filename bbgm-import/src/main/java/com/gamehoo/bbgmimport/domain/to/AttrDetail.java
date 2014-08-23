package com.gamehoo.bbgmimport.domain.to;

import com.gamehoo.domain.to.BaseTo;

public class AttrDetail extends BaseTo {
    private Integer t;        //Type
    private Long c;        //数量
    private Long o;    //OriginId
    private Long s;    //实例ID
    private Integer r;        //品质rank
    private Integer v;     //等级

    public Integer getT() {
        return t;
    }

    public void setT(Integer t) {
        this.t = t;
    }

    public Long getC() {
        return c;
    }

    public void setC(Long c) {
        this.c = c;
    }

    public Long getO() {
        return o;
    }

    public void setO(Long o) {
        this.o = o;
    }

    public Long getS() {
        return s;
    }

    public void setS(Long s) {
        this.s = s;
    }

    public Integer getR() {
        return r;
    }

    public void setR(Integer r) {
        this.r = r;
    }

    public Integer getV() {
        return v;
    }

    public void setV(Integer v) {
        this.v = v;
    }
}
