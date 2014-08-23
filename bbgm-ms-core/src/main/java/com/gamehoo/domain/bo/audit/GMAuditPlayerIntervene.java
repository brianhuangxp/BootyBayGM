package com.gamehoo.domain.bo.audit;

import com.gamehoo.domain.bo.BaseBo;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;


@Entity
@Table(name = "gm_audit_player_intervene")
@NamedNativeQueries({
        @NamedNativeQuery(
                name = "GMAuditPlayerIntervene.findFrozenPlayers",
                query = "select * from gm_audit_player_intervene where intervene_type = 1 and disable = 0 and auto_dispel_date > sysdate ",
                resultClass = GMAuditPlayerIntervene.class
        )
})
public class GMAuditPlayerIntervene extends BaseBo implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mseq")
    @SequenceGenerator(name = "mseq", sequenceName = "gm_audit_SEQ", allocationSize = 1)
    @Column(name = "PI_ID")
    private Long piId;

    @Column(name = "SERVER_ID")
    private Integer serverId;

    @Column(name = "PROVIDER_ID")
    private Integer providerId;

    @Column(name = "PLAYER_ID")
    private Long playerId;

    @Column(name = "PLAYER_NAME")
    private String playerName;

    @Column(name = "INTERVENE_TYPE")
    private String interveneType;

    private String reason;

    @Column(name = "AUTO_DISPEL_DATE")
    private Timestamp autoDispelDate;

    private String disable;

    @Column(name = "OPT_USER_ID")
    private Long optUserId;

    public GMAuditPlayerIntervene() {
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Long getPiId() {
        return piId;
    }

    public void setPiId(Long piId) {
        this.piId = piId;
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

    public String getInterveneType() {
        return interveneType;
    }

    public void setInterveneType(String interveneType) {
        this.interveneType = interveneType;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public Timestamp getAutoDispelDate() {
        return autoDispelDate;
    }

    public void setAutoDispelDate(Timestamp autoDispelDate) {
        this.autoDispelDate = autoDispelDate;
    }

    public String getDisable() {
        return disable;
    }

    public void setDisable(String disable) {
        this.disable = disable;
    }

    public Long getOptUserId() {
        return optUserId;
    }

    public void setOptUserId(Long optUserId) {
        this.optUserId = optUserId;
    }
}