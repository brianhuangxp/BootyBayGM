package com.gamehoo.domain.vo.manageTools.rankingData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RankingVo extends BaseVo {
    @Id
    @Column(name = "player_id")
    private Long playerId;

    @Column(name = "server_id")
    private Integer serverId;

    @Column(name = "player_name")
    private String playerName;

    @Column(name = "player_prepay")
    private Double playerPrepay;

    @Column(name = "player_level")
    private Integer playerLevel;

    @Column(name = "player_exp")
    private Long playerExp;

    @Column(name = "player_gem")
    private Integer playerGem;

    @Column(name = "player_gold")
    private Long playerGold;

    @Column(name = "consecutive_victories")
    private Integer consecutiveVictories;

    @Column(name = "player_game_point")
    private Integer playerGamePoint;

    @Column(name = "zig_floor")
    private Integer zigFloor;

    @Column(name = "zig_score")
    private Integer zigScore;

    @Column(name = "victory_score")
    private Long victoryScore;

    public Long getPlayerId() {
        return playerId;
    }

    public void setPlayerId(Long playerId) {
        this.playerId = playerId;
    }

    public Integer getServerId() {
        return serverId;
    }

    public void setServerId(Integer serverId) {
        this.serverId = serverId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public Double getPlayerPrepay() {
        return playerPrepay;
    }

    public void setPlayerPrepay(Double playerPrepay) {
        this.playerPrepay = playerPrepay;
    }

    public Integer getPlayerLevel() {
        return playerLevel;
    }

    public void setPlayerLevel(Integer playerLevel) {
        this.playerLevel = playerLevel;
    }

    public Long getPlayerExp() {
        return playerExp;
    }

    public void setPlayerExp(Long playerExp) {
        this.playerExp = playerExp;
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

    public Integer getConsecutiveVictories() {
        return consecutiveVictories;
    }

    public void setConsecutiveVictories(Integer consecutiveVictories) {
        this.consecutiveVictories = consecutiveVictories;
    }

    public Integer getPlayerGamePoint() {
        return playerGamePoint;
    }

    public void setPlayerGamePoint(Integer playerGamePoint) {
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

    public Long getVictoryScore() {
        return victoryScore;
    }

    public void setVictoryScore(Long victoryScore) {
        this.victoryScore = victoryScore;
    }

    @Override
    public String toString() {
        return "RankingVo{" +
                "playerId=" + playerId +
                ", serverId=" + serverId +
                ", playerName='" + playerName + '\'' +
                ", playerPrepay=" + playerPrepay +
                ", playerLevel=" + playerLevel +
                ", playerExp=" + playerExp +
                ", playerGem=" + playerGem +
                ", playerGold=" + playerGold +
                ", consecutiveVictories=" + consecutiveVictories +
                ", playerGamePoint=" + playerGamePoint +
                ", zigFloor=" + zigFloor +
                ", zigScore=" + zigScore +
                ", victoryScore=" + victoryScore +
                '}';
    }
}
