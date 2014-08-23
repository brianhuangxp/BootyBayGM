package com.gamehoo.bbgmimport.domain.bo;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "GM_TMP_IMPORT")
public class GmTmpImport extends BaseServerBo {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mseq")
    @SequenceGenerator(name = "mseq", sequenceName = "IMPORT_SEQ", allocationSize = 1)
    @Column(name = "IMPORT_ID")
    private Long importId;

    @Column(name = "ALL_PASS")
    private String allPass;

    @Column(name = "PASS_NUM")
    private Integer passNum;

    @Column(name = "EXEC_TIME")
    private Long execTime;

    @Column(name = "SERVER_ID")
    private Integer serverId;

    @Column(name = "PROVIDER_ID")
    private Integer providerId;

    @Column(name = "UPDATE_TIME")
    private Timestamp updateTime;

    @Column(name = "RECORD_TIME")
    private Timestamp recordTime;

    @Column(name = "SERVER_IP")
    private String serverIp;

    @Column(name = "REMOTE_ADDR")
    private String remoteAddr;

    @Transient
    private List<BaseServerBo> childBoList;

    public Long getPrimaryKey(){
        return importId;
    }

    public List<BaseServerBo> getChildBoList() {
        return childBoList;
    }

    public void setChildBoList(List<BaseServerBo> childBoList) {
        this.childBoList = childBoList;
    }

    public Long getImportId() {
        return importId;
    }

    public void setImportId(Long importId) {
        this.importId = importId;
    }

    public String getAllPass() {
        return allPass;
    }

    public void setAllPass(String allPass) {
        this.allPass = allPass;
    }

    public Integer getPassNum() {
        return passNum;
    }

    public void setPassNum(Integer passNum) {
        this.passNum = passNum;
    }

    public Long getExecTime() {
        return execTime;
    }

    public void setExecTime(Long execTime) {
        this.execTime = execTime;
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

    public String getServerIp() {
        return serverIp;
    }

    public void setServerIp(String serverIp) {
        this.serverIp = serverIp;
    }

    public String getRemoteAddr() {
        return remoteAddr;
    }

    public void setRemoteAddr(String remoteAddr) {
        this.remoteAddr = remoteAddr;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AttrOtherInfo{");
        sb.append("importId=" + importId);
        sb.append(", allPass='" + allPass + '\'');
        sb.append(", passNum=" + passNum);
        sb.append(", execTime=" + execTime);
        sb.append(", serverId=" + serverId);
        sb.append(", providerId=" + providerId);
        sb.append(", updateTime=" + updateTime);
        sb.append(", recordTime=" + recordTime);
        sb.append(", serverIp='" + serverIp + '\'');
        sb.append(", remoteAddr='" + remoteAddr + '\'');
        sb.append(", childBoList=" + childBoList);
        sb.append("}");
        return sb.toString();
    }
}
