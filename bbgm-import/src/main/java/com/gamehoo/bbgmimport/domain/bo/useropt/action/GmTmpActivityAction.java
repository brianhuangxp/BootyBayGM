package com.gamehoo.bbgmimport.domain.bo.useropt.action;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;

@Entity
@Table(name = "GM_TMP_ACTIVITY_ACTION")
public class GmTmpActivityAction extends ActionBaseBo {
    @Id
    @Column(name = "ACTION_ID")
    private Long actionId;

    @Column(name = "ACTION_TYPE")
    private Integer actionType;

    @Column(name = "SUB_TYPE")
    private Integer subType;

    private Long sid;
    private Integer rank;

    @Column(name = "PLAYER_ID")
    private Long playerId;

    @Column(name = "PLAYER_NAME")
    private String playerName;

    @Column(name = "PLAYER_LEVEL")
    private Integer playerLevel;

    private String result;

    @Column(name = "UPDATE_TIME")
    private Timestamp updateTime;

    @Column(name = "IMPORT_ID")
    private Long importId;

    @Column(name = "SERVER_ID")
    private Integer serverId;

    @Column(name = "PROVIDER_ID")
    private Integer providerId;

    @Column(name = "RECORD_TIME")
    private Timestamp recordTime;

    @Transient
    private List<BaseServerBo> childBoList;

    public Long getPrimaryKey() {
        return actionId;
    }

    public void setParentId(Long id) {
        this.actionId = id;
    }

    public List<BaseServerBo> getChildBoList() {
        return childBoList;
    }

    public void setChildBoList(List<BaseServerBo> childBoList) {
        this.childBoList = childBoList;
    }

    public Long getActionId() {
        return actionId;
    }

    public void setActionId(Long actionId) {
        this.actionId = actionId;
    }

    public Integer getActionType() {
        return actionType;
    }

    public void setActionType(Integer actionType) {
        this.actionType = actionType;
    }

    public Long getPlayerId() {
        return playerId;
    }

    public void setPlayerId(Long playerId) {
        this.playerId = playerId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public Integer getPlayerLevel() {
        return playerLevel;
    }

    public void setPlayerLevel(Integer playerLevel) {
        this.playerLevel = playerLevel;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Timestamp getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
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

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    public Integer getSubType() {
        return subType;
    }

    public void setSubType(Integer subType) {
        this.subType = subType;
    }

    public Long getSid() {
        return sid;
    }

    public void setSid(Long sid) {
        this.sid = sid;
    }

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GmTmpActivityAction{");
        sb.append("actionId=" + actionId);
        sb.append(", actionType=" + actionType);
        sb.append(", subType=" + subType);
        sb.append(", sid=" + sid);
        sb.append(", playerId=" + playerId);
        sb.append(", rank=" + rank);
        sb.append(", playerName='" + playerName + '\'');
        sb.append(", playerLevel=" + playerLevel);
        sb.append(", result='" + result + '\'');
        sb.append(", updateTime=" + updateTime);
        sb.append(", importId=" + importId);
        sb.append(", serverId=" + serverId);
        sb.append(", providerId=" + providerId);
        sb.append(", recordTime=" + recordTime);
        sb.append(", childBoList=" + childBoList);
        sb.append("}");
        return sb.toString();
    }
}
