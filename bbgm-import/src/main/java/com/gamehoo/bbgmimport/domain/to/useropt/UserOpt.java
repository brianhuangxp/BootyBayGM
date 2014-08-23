package com.gamehoo.bbgmimport.domain.to.useropt;

import com.gamehoo.bbgmimport.domain.to.OptTo;

public class UserOpt extends OptTo {
    private Long i; // player id
    private Integer v; //player level
    private String n; // player name

    private UserLogin l;
    private GameAction a;
    private UserPrepay p;

    public Long getI() {
        return i;
    }

    public void setI(Long i) {
        this.i = i;
    }

    public Integer getV() {
        return v;
    }

    public void setV(Integer v) {
        this.v = v;
    }

    public String getN() {
        return n;
    }

    public void setN(String n) {
        this.n = n;
    }

    public UserLogin getL() {
        return l;
    }

    public void setL(UserLogin l) {
        this.l = l;
    }

    public GameAction getA() {
        return a;
    }

    public void setA(GameAction a) {
        this.a = a;
    }

    public UserPrepay getP() {
        return p;
    }

    public void setP(UserPrepay p) {
        this.p = p;
    }
}
