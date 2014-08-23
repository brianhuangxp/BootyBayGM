package com.gamehoo.bbgmimport.domain.to.useropt;

import com.gamehoo.domain.to.BaseTo;

public class UserLogin extends BaseTo{
	private String ip;
	private Long liT;    // login time
	private String lT;   // login type; 1:login ;2 logout
	private Long loT;    // logout time
	private String mac;
	private String udId;
	private String vId;     //vendorId

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Long getLiT() {
        return liT;
    }

    public void setLiT(Long liT) {
        this.liT = liT;
    }

    public String getlT() {
        return lT;
    }

    public void setlT(String lT) {
        this.lT = lT;
    }

    public Long getLoT() {
        return loT;
    }

    public void setLoT(Long loT) {
        this.loT = loT;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
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