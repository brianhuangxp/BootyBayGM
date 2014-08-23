package com.gamehoo.bbgmimport.domain.vo;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.bbgmimport.domain.bo.serveropt.GmTmpRole;
import com.gamehoo.bbgmimport.domain.bo.serveropt.GmTmpServerStatus;

import java.util.ArrayList;
import java.util.List;

public class ServerVo extends BaseServerVo{
    private GmTmpServerStatus serverStatus;
    private GmTmpRole role;

    public GmTmpRole getRole() {
        return role;
    }

    public void setRole(GmTmpRole role) {
        this.role = role;
    }

    public GmTmpServerStatus getServerStatus() {
        return serverStatus;
    }

    public void setServerStatus(GmTmpServerStatus serverStatus) {
        this.serverStatus = serverStatus;
    }

    public List<BaseServerBo> getBoList(){
        List<BaseServerBo> boList = new ArrayList<BaseServerBo>();
        if(role != null){
            boList.add(role);
        }
        if(serverStatus != null){
            boList.add(serverStatus);
        }
        return boList;
    }
}
