package com.gamehoo.bbgmimport.domain.to.serveropt;

import com.gamehoo.domain.to.BaseTo;

public class UserRole extends BaseTo {
    private String ip;
    private String mac;
    private String ot;     //operation type;1: regist, 2 create role, 3 import...
    private Long pId;           //player id
    private String n;       //player name
    private String udId;
    private String vId;

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public String getOt() {
        return ot;
    }

    public void setOt(String ot) {
        this.ot = ot;
    }

    public Long getpId() {
        return pId;
    }

    public void setpId(Long pId) {
        this.pId = pId;
    }

    public String getN() {
        return n;
    }

    public void setN(String n) {
        this.n = n;
    }

    public String getUdId() {
        return udId;
    }

    public void setUdId(String udId) {
        this.udId = udId;
    }

    public String getvId() {
        return vId;
    }

    public void setvId(String vId) {
        this.vId = vId;
    }
}