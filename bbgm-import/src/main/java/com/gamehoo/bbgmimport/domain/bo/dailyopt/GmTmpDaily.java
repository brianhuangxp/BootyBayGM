package com.gamehoo.bbgmimport.domain.bo.dailyopt;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;

@Entity
@Table(name = "GM_TMP_DAILY")
public class GmTmpDaily extends BaseServerBo {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mseq")
    @SequenceGenerator(name = "mseq", sequenceName = "TMP_DAILY_SEQUENCES", allocationSize = 1)
    private Long id;

    @Column(name = "PLAYER_ID")
    private Long playerId;

    @Column(name = "PLAYER_NAME")
    private String playerName;

    @Column(name = "PLAYER_LEVEL")
    private Integer playerLevel;

    @Column(name = "PLAYER_EXP")
    private Long playerExp;

    @Column(name = "PLAYER_PREPAY")
    private Double playerPrepay;

    @Column(name = "PLAYER_GEM")
    private Integer playerGem;

    @Column(name = "PLAYER_GOLD")
    private Long playerGold;

    @Column(name = "PLAYER_GAME_POINT")
    private Long playerGamePoint;

    @Column(name = "ZIG_FLOOR")
    private Integer zigFloor;

    @Column(name = "ZIG_SCORE")
    private Integer zigScore;

    @Column(name = "PACKAGE_AMOUNT")
    private Integer packageAmount;

    @Column(name = "CONSECUTIVE_VICTORIES")
    private Integer consecutiveVictories;

    @Column(name = "VICTORY_SCORE")
    private Integer victoryScore;

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

    @Transient
    private List<BaseServerBo> childBoList;

    public Long getPrimaryKey() {
        return id;
    }

    public void setParentId(Long id) {
        this.importId = id;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Double getPlayerPrepay() {
        return playerPrepay;
    }

    public void setPlayerPrepay(Double playerPrepay) {
        this.playerPrepay = playerPrepay;
    }

    public Integer getPlayerGem() {
        return playerGem;
    }

    public void setPlayerGem(Integer playerGem) {
        this.playerGem = playerGem;
    }

    public Long getPlayerGold() {
        return playerGold;
    }

    public void setPlayerGold(Long playerGold) {
        this.playerGold = playerGold;
    }

    public Long getPlayerGamePoint() {
        return playerGamePoint;
    }

    public void setPlayerGamePoint(Long playerGamePoint) {
        this.playerGamePoint = playerGamePoint;
    }

    public Integer getZigFloor() {
        return zigFloor;
    }

    public void setZigFloor(Integer zigFloor) {
        this.zigFloor = zigFloor;
    }

    public Integer getZigScore() {
        return zigScore;
    }

    public void setZigScore(Integer zigScore) {
        this.zigScore = zigScore;
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

    public Integer getPackageAmount() {
        return packageAmount;
    }

    public void setPackageAmount(Integer packageAmount) {
        this.packageAmount = packageAmount;
    }

    public List<BaseServerBo> getChildBoList() {
        return childBoList;
    }

    public void setChildBoList(List<BaseServerBo> childBoList) {
        this.childBoList = childBoList;
    }

    public Integer getVictoryScore() {
        return victoryScore;
    }

    public void setVictoryScore(Integer victoryScore) {
        this.victoryScore = victoryScore;
    }

    public Integer getConsecutiveVictories() {
        return consecutiveVictories;
    }

    public void setConsecutiveVictories(Integer consecutiveVictories) {
        this.consecutiveVictories = consecutiveVictories;
    }

    public Long getPlayerExp() {
        return playerExp;
    }

    public void setPlayerExp(Long playerExp) {
        this.playerExp = playerExp;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GmTmpDaily{");
        sb.append("id=" + id);
        sb.append(", playerId=" + playerId);
        sb.append(", playerName='" + playerName + '\'');
        sb.append(", playerLevel=" + playerLevel);
        sb.append(", playerExp=" + playerExp);
        sb.append(", playerPrepay=" + playerPrepay);
        sb.append(", playerGem=" + playerGem);
        sb.append(", playerGold=" + playerGold);
        sb.append(", playerGamePoint=" + playerGamePoint);
        sb.append(", zigFloor=" + zigFloor);
        sb.append(", zigScore=" + zigScore);
        sb.append(", victoryScore=" + victoryScore);
        sb.append(", consecutiveVictories=" + consecutiveVictories);
        sb.append(", childBoList=" + childBoList);
        sb.append(", importId=" + importId);
        sb.append(", serverId=" + serverId);
        sb.append(", providerId=" + providerId);
        sb.append(", updateTime=" + updateTime);
        sb.append(", recordTime=" + recordTime);
        sb.append(", packageAmount=" + packageAmount);
        sb.append("}");
        return sb.toString();
    }
}
