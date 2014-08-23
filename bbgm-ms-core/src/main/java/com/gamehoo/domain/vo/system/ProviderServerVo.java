package com.gamehoo.domain.vo.system;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class ProviderServerVo extends BaseVo {
    @Id
    @Column(name = "provider_server_id")
    private Long providerServerId;

    @Column(name = "SERVER_ID")
    private Integer serverId;

    @Column(name = "SERVER_NAME")
    private String serverName;

    @Column(name = "CONNECT_SITE")
    private String connectSite;

    @Column(name = "start_server_date")
    private Timestamp startServerDate;

    @Column(name = "provider_id")
    private Integer providerId;

    @Column(name = "PROVIDER_NAME")
    private String providerName;

    public Long getProviderServerId() {
        return providerServerId;
    }

    public void setProviderServerId(Long providerServerId) {
        this.providerServerId = providerServerId;
    }

    public Integer getServerId() {
        return serverId;
    }

    public void setServerId(Integer serverId) {
        this.serverId = serverId;
    }

    public String getServerName() {
        return serverName;
    }

    public void setServerName(String serverName) {
        this.serverName = serverName;
    }

    public Timestamp getStartServerDate() {
        return startServerDate;
    }

    public void setStartServerDate(Timestamp startServerDate) {
        this.startServerDate = startServerDate;
    }

    public Integer getProviderId() {
        return providerId;
    }

    public void setProviderId(Integer providerId) {
        this.providerId = providerId;
    }

    public String getProviderName() {
        return providerName;
    }

    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }

    public String getConnectSite() {
        return connectSite;
    }

    public void setConnectSite(String connectSite) {
        this.connectSite = connectSite;
    }

    @Override
    public String toString() {
        return "ProviderServerVo{" +
                "providerServerId=" + providerServerId +
                ", serverId=" + serverId +
                ", serverName='" + serverName + '\'' +
                ", startServerDate=" + startServerDate +
                ", connectSite='" + connectSite + '\'' +
                ", providerId=" + providerId +
                ", providerName='" + providerName + '\'' +
                '}';
    }
}
