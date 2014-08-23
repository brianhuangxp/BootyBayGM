package com.gamehoo.domain.ap;

import com.gamehoo.domain.vo.system.ProviderServerVo;

import java.util.List;

public class GMUserBaseAp extends UserBaseAp {
    private String connectSite;
    private String requestIp;
    private List<ProviderServerVo> providerServerVoList;

    public String getRequestIp() {
        return requestIp;
    }

    public void setRequestIp(String requestIp) {
        this.requestIp = requestIp;
    }

    public String getConnectSite() {
        return connectSite;
    }

    public void setConnectSite(String connectSite) {
        this.connectSite = connectSite;
    }

    public List<ProviderServerVo> getProviderServerVoList() {
        return providerServerVoList;
    }

    public void setProviderServerVoList(List<ProviderServerVo> providerServerVoList) {
        this.providerServerVoList = providerServerVoList;
    }
}
