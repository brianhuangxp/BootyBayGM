package com.gamehoo.bbgmimport.domain.bo;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "GM_IMPORT_ERROR")
public class GmImportErrorBo extends BaseServerBo {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mseq")
    @SequenceGenerator(name = "mseq", sequenceName = "IMPORT_SEQ", allocationSize = 1)
    private Long id;

    @Column(name = "SERVER_ID")
    private Integer serverId;

    @Column(name = "PROVIDER_ID")
    private Integer providerId;

    @Column(name = "RECORD_TIME")
    private Timestamp recordTime;

    @Lob
    @Column(name = "ERROR_MSG")
    private String errorMsg;

    @Lob
    @Column(name = "IMPORT_DATA")
    private String importData;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }

    public String getImportData() {
        return importData;
    }

    public void setImportData(String importData) {
        this.importData = importData;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GmImportErrorBo{");
        sb.append("id=" + id);
        sb.append(",serverId=" + serverId);
        sb.append(",providerId=" + providerId);
        sb.append(",recordTime=" + recordTime);
        sb.append(",errorMsg=" + errorMsg);
        sb.append(",importData=" + importData);
        sb.append("}");
        return sb.toString();
    }
}
