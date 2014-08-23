package com.gamehoo.bbgmimport.domain.bo;

import com.gamehoo.domain.bo.BaseBo;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class BaseServerBo extends BaseBo implements IBaseServerBo{
    private Long importId;
    private Integer serverId;
    private Integer providerId;
    private Timestamp updateTime;
    private Timestamp recordTime;

    public Long getPrimaryKey(){
        return importId;
    }

    public void setParentId(Long id){   }

    public List<BaseServerBo> getChildBoList(){
        return new ArrayList<BaseServerBo>();
    }

    public Long getImportId() {
        return importId;
    }

    public void setImportId(Long importId) {
        this.importId = importId;
    }

    public Integer getServerId() {
        return serverId;
    }

    public void setServerId(Integer serverId) {
        this.serverId = serverId;
    }

    public Integer getProviderId() {
        return providerId;
    }

    public void setProviderId(Integer providerId) {
        this.providerId = providerId;
    }

    public Timestamp getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }
}
