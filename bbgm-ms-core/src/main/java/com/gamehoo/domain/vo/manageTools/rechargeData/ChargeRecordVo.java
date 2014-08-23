package com.gamehoo.domain.vo.manageTools.rechargeData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class ChargeRecordVo extends BaseVo {
    @Id
    private Long rownum;

    @Column(name = "player_name")
    private String playerName;

    @Column(name = "server_id")
    private String serverId;

    @Column(name = "player_level")
    private Integer playerLevel;

    @Column(name = "record_time")
    private Timestamp recordTime;

    @Column(name = "prepay_cash")
    private Double prepayCash;

    public Long getRownum() {
        return rownum;
    }

    public void setRownum(Long rownum) {
        this.rownum = rownum;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getServerId() {
        return serverId;
    }

    public void setServerId(String serverId) {
        this.serverId = serverId;
    }

    public Integer getPlayerLevel() {
        return playerLevel;
    }

    public void setPlayerLevel(Integer playerLevel) {
        this.playerLevel = playerLevel;
    }

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    public Double getPrepayCash() {
        return prepayCash;
    }

    public void setPrepayCash(Double prepayCash) {
        this.prepayCash = prepayCash;
    }
}
