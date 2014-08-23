package com.gamehoo.bbgmimport.domain.bo.useropt.actioninfo;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "GM_TMP_ATTR_ITEM")
public class GmTmpAttrItem extends ActionAttributeBo {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mseq")
    @SequenceGenerator(name = "mseq", sequenceName = "TMP_ATTR_SEQUENCES", allocationSize = 1)
    private Long id;

    @Column(name = "ACTION_ID")
    private Long actionId;

    @Column(name = "PLAYER_ID")
    private Long playerId;

    private Long amount;

    @Column(name = "ACTION_TYPE")
    private Integer actionType;

    private Integer rank;
    private Long oid;
    private Long sid;

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

    public Long getPrimaryKey() {
        return id;
    }

    public void setParentId(Long id) {
        this.actionId = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getActionId() {
        return actionId;
    }

    public void setActionId(Long actionId) {
        this.actionId = actionId;
    }

    public Long getPlayerId() {
        return playerId;
    }

    public void setPlayerId(Long playerId) {
        this.playerId = playerId;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public Integer getActionType() {
        return actionType;
    }

    public void setActionType(Integer actionType) {
        this.actionType = actionType;
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

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
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
        sb.append("GmTmpAttrItem{");
        sb.append("id=" + id);
        sb.append(", actionId=" + actionId);
        sb.append(", playerId=" + playerId);
        sb.append(", amount=" + amount);
        sb.append(", actionType=" + actionType);
        sb.append(", rank=" + rank);
        sb.append(", oid=" + oid);
        sb.append(", sid=" + sid);
        sb.append(", updateTime=" + updateTime);
        sb.append(", importId=" + importId);
        sb.append(", serverId=" + serverId);
        sb.append(", providerId=" + providerId);
        sb.append(", recordTime=" + recordTime);
        sb.append("}");
        return sb.toString();
    }
}
