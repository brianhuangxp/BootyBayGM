package com.gamehoo.bbgmimport.domain.bo.useropt.actioninfo;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.bbgmimport.domain.bo.dailyopt.GmTmpDaily;

import javax.persistence.*;
import java.sql.Timestamp;

public class ActionAttributeBo extends BaseServerBo {
    private Long actionId;
    private Integer actionType;
    private Long playerId;
    private Integer type;
    private Integer rank;
    private Long amount;
    private Integer itemLevel;
    private Long oid;
    private Long sid;

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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public Integer getItemLevel() {
        return itemLevel;
    }

    public void setItemLevel(Integer itemLevel) {
        this.itemLevel = itemLevel;
    }

    public Long getOid() {
        return oid;
    }

    public void setOid(Long oid) {
        this.oid = oid;
    }

    public Long getSid() {
        return sid;
    }

    public void setSid(Long sid) {
        this.sid = sid;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ActionAttributeBo{");
        sb.append("actionId=" + actionId);
        sb.append(", actionType='" + actionType + '\'');
        sb.append(", playerId=" + playerId);
        sb.append(", type=" + type);
        sb.append(", rank=" + rank);
        sb.append(", amount=" + amount);
        sb.append(", itemLevel=" + itemLevel);
        sb.append(", oid=" + oid);
        sb.append(", sid=" + sid);
        sb.append("}");
        return sb.toString();
    }
}
