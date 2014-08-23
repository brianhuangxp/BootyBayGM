package com.gamehoo.domain.ap.manageTools;

public class RechargeRecordAp extends CommonDateSearchAp {
    private Long playerId;
    private String playerName;

    public Long getPlayerId() {
        return playerId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public void setPlayerId(Long playerId) {
        this.playerId = playerId;
    }
}
