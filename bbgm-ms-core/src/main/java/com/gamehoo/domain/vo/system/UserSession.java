package com.gamehoo.domain.vo.system;

import com.gamehoo.domain.bo.system.SysGmUser;
import com.gamehoo.tools.ObjectUtils;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class UserSession extends BaseUserSession{
    public final static String USER_SESSION_KEY = "sessionUser";

    private SysGmUser user;
    private List<ProviderServerVo> providerServerVoList;
    private String requestIp;

    public String getRequestIp() {
        return requestIp;
    }

    public void setRequestIp(String requestIp) {
        this.requestIp = requestIp;
    }

    public SysGmUser getUser() {
        return user;
    }

    public void setUser(SysGmUser user) {
        this.user = user;
    }

    public List<ProviderServerVo> getProviderServerVoList() {
        return providerServerVoList;
    }

    public void setProviderServerVoList(List<ProviderServerVo> providerServerVoList) {
        this.providerServerVoList = providerServerVoList;
    }

    public ClientUserVo buildClientUserVo() {
        if (!ObjectUtils.isEmpty(user))
            return new ClientUserVo(user.getUserName(), user.getNickName());
        return null;
    }

    public Set<Integer> getServerIds(){
        Set<Integer> serverIds = new HashSet<Integer>();
        for(int i = 0 ; providerServerVoList != null && i < providerServerVoList.size() ; i++ ){
            ProviderServerVo providerServerVo = providerServerVoList.get(i);
            serverIds.add(providerServerVo.getServerId());
        }
        return serverIds;
    }

    public Set<Integer> getProviderIds(){
        Set<Integer> providerIds = new HashSet<Integer>();
        for(int i = 0 ; providerServerVoList != null && i < providerServerVoList.size() ; i++ ){
            ProviderServerVo providerServerVo = providerServerVoList.get(i);
            providerIds.add(providerServerVo.getServerId());
        }
        return providerIds;
    }

    public String getConnectSite(int serverId){
        for(int i = 0 ; providerServerVoList != null && i < providerServerVoList.size() ; i++ ){
            ProviderServerVo providerServerVo = providerServerVoList.get(i);
            if(serverId == providerServerVo.getServerId()){
                return providerServerVo.getConnectSite();
            }
        }
        return null;
    }

    @Override
    public Long getUserId() {
        return ObjectUtils.isEmpty(user) ? null : user.getUserId();
    }
}
