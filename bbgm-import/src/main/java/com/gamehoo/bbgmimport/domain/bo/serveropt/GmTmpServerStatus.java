package com.gamehoo.bbgmimport.domain.bo.serveropt;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "GM_TMP_SERVER_STATUS")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class GmTmpServerStatus extends BaseServerBo {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mseq")
    @SequenceGenerator(name = "mseq", sequenceName = "TMP_LOG_SEQUENCES", allocationSize = 1)
    private Long id;

    @Column(name = "IMPORT_ID")
    private Long importId;

    @Column(name = "ONLINE_COUNT")
    private Integer onlineCount;

    @Column(name = "REGISTER_COUNT")
    private Integer registerCount;

    @Column(name = "LAST_RECEIVE_REQUEST_TIME")
    private Timestamp lastReceiveRequestTime;

    @Column(name = "SUM_RECEIVE_REQUEST_COUNT")
    private Long sumReceiveRequestCount;

    @Column(name = "RECEIVE_REQUEST_INCREMENTAL")
    private Long receiveRequestIncremental;

    @Column(name = "DATA_PERSISTENCE_COUNT")
    private Long dataPersistenceCount;

    @Column(name = "LAST_PERSISTENCE_TIME")
    private Timestamp lastPersistenceTime;

    @Column(name = "ALLIANCE_VICTORIES")
    private Integer allianceVictories;

    @Column(name = "HORDE_VICTORIES")
    private Integer hordeVictories;

    @Column(name = "ALLIANCE_BLESSINGS")
    private Integer allianceBlessings;

    @Column(name = "HORDE_BLESSINGS")
    private Integer hordeBlessings;

    @Column(name = "SERVER_ID")
    private Integer serverId;

    @Column(name = "PROVIDER_ID")
    private Integer providerId;

    @Column(name = "UPDATE_TIME")
    private Timestamp updateTime;

    @Column(name = "RECORD_TIME")
    private Timestamp recordTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getImportId() {
        return importId;
    }

    public void setImportId(Long importId) {
        this.importId = importId;
    }

    public Integer getOnlineCount() {
        return onlineCount;
    }

    public void setOnlineCount(Integer onlineCount) {
        this.onlineCount = onlineCount;
    }

    public Integer getRegisterCount() {
        return registerCount;
    }

    public void setRegisterCount(Integer registerCount) {
        this.registerCount = registerCount;
    }

    public Timestamp getLastReceiveRequestTime() {
        return lastReceiveRequestTime;
    }

    public void setLastReceiveRequestTime(Timestamp lastReceiveRequestTime) {
        this.lastReceiveRequestTime = lastReceiveRequestTime;
    }

    public Long getSumReceiveRequestCount() {
        return sumReceiveRequestCount;
    }

    public void setSumReceiveRequestCount(Long sumReceiveRequestCount) {
        this.sumReceiveRequestCount = sumReceiveRequestCount;
    }

    public Long getReceiveRequestIncremental() {
        return receiveRequestIncremental;
    }

    public void setReceiveRequestIncremental(Long receiveRequestIncremental) {
        this.receiveRequestIncremental = receiveRequestIncremental;
    }

    public Long getDataPersistenceCount() {
        return dataPersistenceCount;
    }

    public void setDataPersistenceCount(Long dataPersistenceCount) {
        this.dataPersistenceCount = dataPersistenceCount;
    }

    public Timestamp getLastPersistenceTime() {
        return lastPersistenceTime;
    }

    public void setLastPersistenceTime(Timestamp lastPersistenceTime) {
        this.lastPersistenceTime = lastPersistenceTime;
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

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }


    public Integer getAllianceVictories() {
        return allianceVictories;
    }

    public void setAllianceVictories(Integer allianceVictories) {
        this.allianceVictories = allianceVictories;
    }

    public Integer getHordeVictories() {
        return hordeVictories;
    }

    public void setHordeVictories(Integer hordeVictories) {
        this.hordeVictories = hordeVictories;
    }

    public Integer getAllianceBlessings() {
        return allianceBlessings;
    }

    public void setAllianceBlessings(Integer allianceBlessings) {
        this.allianceBlessings = allianceBlessings;
    }

    public Integer getHordeBlessings() {
        return hordeBlessings;
    }

    public void setHordeBlessings(Integer hordeBlessings) {
        this.hordeBlessings = hordeBlessings;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GmTmpServerStatus{");
        sb.append("id=" + id);
        sb.append(", importId=" + importId);
        sb.append(", onlineCount=" + onlineCount);
        sb.append(", registerCount=" + registerCount);
        sb.append(", lastReceiveRequestTime=" + lastReceiveRequestTime);
        sb.append(", sumReceiveRequestCount=" + sumReceiveRequestCount);
        sb.append(", receiveRequestIncremental=" + receiveRequestIncremental);
        sb.append(", dataPersistenceCount=" + dataPersistenceCount);
        sb.append(", lastPersistenceTime=" + lastPersistenceTime);
        sb.append(", allianceVictories=" + allianceVictories);
        sb.append(", hordeVictories=" + hordeVictories);
        sb.append(", allianceBlessings=" + allianceBlessings);
        sb.append(", hordeBlessings=" + hordeBlessings);
        sb.append(", serverId=" + serverId);
        sb.append(", providerId=" + providerId);
        sb.append(", updateTime=" + updateTime);
        sb.append(", recordTime=" + recordTime);
        sb.append("}");
        return sb.toString();
    }
}
