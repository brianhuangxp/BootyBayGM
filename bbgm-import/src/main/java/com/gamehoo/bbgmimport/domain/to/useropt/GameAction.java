package com.gamehoo.bbgmimport.domain.to.useropt;

import com.gamehoo.bbgmimport.domain.to.AttrDetail;
import com.gamehoo.domain.to.BaseTo;

import java.util.List;

public class GameAction extends BaseTo {
    private Integer t;// action type
    private List<AttrDetail> a; // attribute detail list
    private String s; // status;

    public Integer getT() {
        return t;
    }

    public void setA(Integer t) {
        this.t = t;
    }

    public List<AttrDetail> getA() {
        return a;
    }

    public void setA(List<AttrDetail> a) {
        this.a = a;
    }

    public String getS() {
        return s;
    }

    public void setS(String s) {
        this.s = s;
    }

}
