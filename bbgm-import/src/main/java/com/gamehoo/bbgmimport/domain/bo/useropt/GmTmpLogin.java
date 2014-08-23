package com.gamehoo.bbgmimport.domain.bo.useropt;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "GM_TMP_LOGIN")
public class GmTmpLogin extends BaseServerBo {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mseq")
    @SequenceGenerator(name = "mseq", sequenceName = "TMP_LOG_SEQUENCES", allocationSize = 1)
    private Long id;

    @Column(name = "UD_ID")
    private String udId;

    private String mac;

    @Column(name = "VENDOR_ID")
    private String vendorId;

    @Column(name = "PLAYER_ID")
    private Long playerId;

    @Column(name = "PLAYER_NAME")
    private String playerName;

    @Column(name = "PLAYER_LEVEL")
    private Integer playerLevel;

    @Column(name = "LOGIN_TYPE")
    private String loginType;

    private String ip;

    @Column(name = "LOGIN_TIME")
    private Timestamp loginTime;

    @Column(name = "LOGOUT_TIME")
    private Timestamp logoutTime;

    @Column(name = "IMPORT_ID")
    private Long importId;

    @Column(name = "SERVER_ID")
    private Integer serverId;

    @Column(name = "PROVIDER_ID")
    private Integer providerId;

    @Column(name = "UPDATE_TIME")
    private Timestamp updateTime;

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

    public String getUdId() {
        return udId;
    }

    public void setUdId(String udId) {
        this.udId = udId;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public String getVendorId() {
        return vendorId;
    }

    public void setVendorId(String vendorId) {
        this.vendorId = vendorId;
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

    public String getLoginType() {
        return loginType;
    }

    public void setLoginType(String loginType) {
        this.loginType = loginType;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Timestamp getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Timestamp loginTime) {
        this.loginTime = loginTime;
    }

    public Timestamp getLogoutTime() {
        return logoutTime;
    }

    public void setLogoutTime(Timestamp logoutTime) {
        this.logoutTime = logoutTime;
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

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GmTmpLogin{");
        sb.append("id=" + id);
        sb.append(", udId='" + udId + '\'');
        sb.append(", mac='" + mac + '\'');
        sb.append(", vendorId='" + vendorId + '\'');
        sb.append(", playerId=" + playerId);
        sb.append(", playerName='" + playerName + '\'');
        sb.append(", playerLevel=" + playerLevel);
        sb.append(", loginType='" + loginType + '\'');
        sb.append(", ip='" + ip + '\'');
        sb.append(", loginTime=" + loginTime);
        sb.append(", logoutTime=" + logoutTime);
        sb.append(", importId=" + importId);
        sb.append(", serverId=" + serverId);
        sb.append(", providerId=" + providerId);
        sb.append(", updateTime=" + updateTime);
        sb.append("}");
        return sb.toString();
    }
}
