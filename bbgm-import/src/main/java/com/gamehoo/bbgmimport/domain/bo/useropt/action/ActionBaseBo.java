package com.gamehoo.bbgmimport.domain.bo.useropt.action;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;

import javax.persistence.Entity;
import javax.persistence.Table;

public class ActionBaseBo extends BaseServerBo {
    private Long actionId;
    private Integer actionType;
    private Long playerId;
    private String playerName;
    private Integer playerLevel;
    private String result;
    private Integer subType;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
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

    public Integer getSubType() {
        return subType;
    }

    public void setSubType(Integer subType) {
        this.subType = subType;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ActionBaseBo{");
        sb.append("actionId=" + actionId);
        sb.append(", playerId=" + playerId);
        sb.append(", playerName='" + playerName + '\'');
        sb.append(", playerLevel=" + playerLevel);
        sb.append(", result='" + result + '\'');
        sb.append(", subType=" + subType);
        sb.append("}");
        return sb.toString();
    }
}
