package com.gamehoo.domain.ap.gmTools;

import com.gamehoo.domain.ap.CommonSearchAp;

public class PlayerQueryAp extends CommonSearchAp {
    private Long playerId;
    private String playerName;
    private String queryType;

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

    public String getQueryType() {
        return queryType;
    }

    public void setQueryType(String queryType) {
        this.queryType = queryType;
    }
}
