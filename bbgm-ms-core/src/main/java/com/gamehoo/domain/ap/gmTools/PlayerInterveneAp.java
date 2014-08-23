package com.gamehoo.domain.ap.gmTools;

import com.gamehoo.domain.ap.CommonSearchAp;

public class PlayerInterveneAp extends CommonSearchAp {
    private Long playerId;
    private String players;
    private String cause;
    private String endDate;
    private Long piId;

    public Long getPlayerId() {
        return playerId;
    }

    public void setPlayerId(Long playerId) {
        this.playerId = playerId;
    }

    public String getPlayers() {
        return players;
    }

    public void setPlayers(String players) {
        this.players = players;
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public Long getPiId() {
        return piId;
    }

    public void setPiId(Long piId) {
        this.piId = piId;
    }

    @Override
    public String toString() {
        return "PlayerIntervene{" +
                "playerId=" + playerId +
                ", players='" + players + '\'' +
                ", cause='" + cause + '\'' +
                ", endDate='" + endDate + '\'' +
                '}';
    }
}
