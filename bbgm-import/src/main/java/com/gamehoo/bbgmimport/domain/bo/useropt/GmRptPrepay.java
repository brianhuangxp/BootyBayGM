package com.gamehoo.bbgmimport.domain.bo.useropt;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "GM_RPT_PREPAY")
public class GmRptPrepay extends BaseServerBo {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mseq")
    @SequenceGenerator(name = "mseq", sequenceName = "REPORT_SEQUENCE", allocationSize = 1)
    @Column(name = "PREPAY_ID")
    private Long prepayId;

    @Column(name = "PLAYER_ID")
    private Long playerId;

    @Column(name = "PLAYER_NAME")
    private String playerName;

    @Column(name = "PLAYER_LEVEL")
    private Integer playerLevel;

    @Column(name = "PREPAY_TYPE")
    private String prepayType;

    @Column(name = "PREPAY_CASH")
    private Double prepayCash;

    @Column(name = "PREPAY_GEM")
    private Integer prepayGem;

    @Column(name= "FIRST_CHARGE")
    private String firstCharge;

    @Column(name = "RELATIVE_DATE")
    private Integer relativeDate;

    @Column(name = "IMPORT_ID")
    private Long importId;

    @Column(name = "SERVER_ID")
    private Integer serverId;

    @Column(name = "PROVIDER_ID")
    private Integer providerId;

    @Column(name = "UPDATE_TIME")
    private Timestamp updateTime;

    @Column(name = "RECORD_TIME")
    private Timestamp recordTime;

    public Long getPrimaryKey(){
        return prepayId;
    }

    public void setParentId(Long id){
        this.importId = id;
    }


    public Long getPrepayId() {
        return prepayId;
    }

    public void setPrepayId(Long prepayId) {
        this.prepayId = prepayId;
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

    public String getPrepayType() {
        return prepayType;
    }

    public void setPrepayType(String prepayType) {
        this.prepayType = prepayType;
    }

    public Double getPrepayCash() {
        return prepayCash;
    }

    public void setPrepayCash(Double prepayCash) {
        this.prepayCash = prepayCash;
    }

    public Integer getPrepayGem() {
        return prepayGem;
    }

    public void setPrepayGem(Integer prepayGem) {
        this.prepayGem = prepayGem;
    }

    public String getFirstCharge() {
        return firstCharge;
    }

    public void setFirstCharge(String firstCharge) {
        this.firstCharge = firstCharge;
    }

    public Integer getRelativeDate() {
        return relativeDate;
    }

    public void setRelativeDate(Integer relativeDate) {
        this.relativeDate = relativeDate;
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

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GmRptPrepay{");
        sb.append("prepayId=" + prepayId);
        sb.append(", playerId=" + playerId);
        sb.append(", playerName='" + playerName + '\'');
        sb.append(", playerLevel='" + playerLevel + '\'');
        sb.append(", prepayType=" + prepayType);
        sb.append(", prepayCash=" + prepayCash);
        sb.append(", prepayGem='" + prepayGem + '\'');
        sb.append(", firstCharge='" + firstCharge + '\'');
        sb.append(", relativeDate=" + relativeDate);
        sb.append(", importId=" + importId);
        sb.append(", serverId=" + serverId);
        sb.append(", providerId=" + providerId);
        sb.append(", updateTime=" + updateTime);
        sb.append(", recordTime=" + recordTime);
        sb.append("}");
        return sb.toString();
    }
}
