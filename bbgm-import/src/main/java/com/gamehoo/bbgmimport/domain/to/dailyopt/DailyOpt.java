package com.gamehoo.bbgmimport.domain.to.dailyopt;

import com.gamehoo.bbgmimport.domain.to.AttrDetail;
import com.gamehoo.bbgmimport.domain.to.OptTo;

import java.util.List;

public class DailyOpt extends OptTo {
    private Long i;       //player id
    private String n;   // player name
    private Integer v;  // player level
    private Double m;      // 充值总金额
    private Integer d;  //总钻石
    private Long g;        // 总金币
    private Long s;       // 总积分
    private Integer f;      // 通灵塔层数
    private Integer t;      // 通灵塔星数
    private Integer p;      //背包格子数
    private Integer l;      //最大连胜数
    private Integer y;      //当天胜利点
    private Long e;         //当前经验值

    private List<AttrDetail> a;// daily明细

    public Long getI() {
        return i;
    }

    public void setI(Long i) {
        this.i = i;
    }

    public String getN() {
        return n;
    }

    public void setN(String n) {
        this.n = n;
    }

    public Integer getV() {
        return v;
    }

    public void setV(Integer v) {
        this.v = v;
    }

    public Double getM() {
        return m;
    }

    public void setM(Double m) {
        this.m = m;
    }

    public Integer getD() {
        return d;
    }

    public void setD(Integer d) {
        this.d = d;
    }

    public Long getG() {
        return g;
    }

    public void setG(Long g) {
        this.g = g;
    }

    public Long getS() {
        return s;
    }

    public void setS(Long s) {
        this.s = s;
    }

    public Integer getF() {
        return f;
    }

    public void setF(Integer f) {
        this.f = f;
    }

    public Integer getT() {
        return t;
    }

    public void setT(Integer t) {
        this.t = t;
    }

    public Integer getP() {
        return p;
    }

    public void setP(Integer p) {
        this.p = p;
    }

    public List<AttrDetail> getA() {
        return a;
    }

    public void setA(List<AttrDetail> a) {
        this.a = a;
    }

    public Integer getL() {
        return l;
    }

    public void setL(Integer l) {
        this.l = l;
    }

    public Integer getY() {
        return y;
    }

    public void setY(Integer y) {
        this.y = y;
    }

    public Long getE() {
        return e;
    }

    public void setE(Long e) {
        this.e = e;
    }
}
