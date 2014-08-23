package com.gamehoo.domain.to.request;

import com.gamehoo.domain.to.InterveneTo;

public class QueryPlayerDetail extends InterveneTo {
    private Long playerId;
    private String playerName;

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
}
