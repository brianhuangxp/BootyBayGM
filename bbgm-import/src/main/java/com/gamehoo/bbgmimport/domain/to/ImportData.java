package com.gamehoo.bbgmimport.domain.to;

import com.gamehoo.bbgmimport.domain.to.dailyopt.DailyOpt;
import com.gamehoo.bbgmimport.domain.to.serveropt.ServerOpt;
import com.gamehoo.bbgmimport.domain.to.useropt.UserOpt;
import com.gamehoo.domain.to.BaseTo;

import java.util.List;

public class ImportData extends BaseTo {
    private String ip;
    private String sKey;
    private Long rTime;// record Time
    private Integer svId; // server id
    private Integer pvId; // provider id

    private List<ServerOpt> sOpts;
    private List<UserOpt> uOpts;
    private List<DailyOpt> dOpts;

    private String remoteAddr;

    public Long getrTime() {
        return rTime;
    }

    public void setrTime(Long rTime) {
        this.rTime = rTime;
    }

    public Integer getSvId() {
        return svId;
    }

    public void setSvId(Integer svId) {
        this.svId = svId;
    }

    public Integer getPvId() {
        return pvId;
    }

    public void setPvId(Integer pvId) {
        this.pvId = pvId;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getsKey() {
        return sKey;
    }

    public void setsKey(String sKey) {
        this.sKey = sKey;
    }

    public List<ServerOpt> getsOpts() {
        return sOpts;
    }

    public void setsOpts(List<ServerOpt> sOpts) {
        this.sOpts = sOpts;
    }

    public List<UserOpt> getuOpts() {
        return uOpts;
    }

    public void setuOpts(List<UserOpt> uOpts) {
        this.uOpts = uOpts;
    }

    public List<DailyOpt> getdOpts() {
        return dOpts;
    }

    public void setdOpts(List<DailyOpt> dOpts) {
        this.dOpts = dOpts;
    }

    public String getRemoteAddr() {
        return remoteAddr;
    }

    public void setRemoteAddr(String remoteAddr) {
        this.remoteAddr = remoteAddr;
    }
}
