package com.gamehoo.domain.vo.gmTools;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class PlayerRecordVo extends BaseVo {
    @Id
    private Integer id;

    @Column(name = "server_id")
    private Long serverId;

    @Column(name = "player_name")
    private String playerName;
    private Long amount;
    @Column(name = "action_type")
    private Integer actionType;

    @Column(name = "record_time")
    private Timestamp recordTime;

    public PlayerRecordVo() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getServerId() {
        return serverId;
    }

    public void setServerId(Long serverId) {
        this.serverId = serverId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
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

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }
}
