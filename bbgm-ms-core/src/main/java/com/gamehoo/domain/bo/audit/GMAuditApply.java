package com.gamehoo.domain.bo.audit;

import com.gamehoo.domain.bo.BaseBo;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

@Entity
@Table(name = "GM_AUDIT_APPLY")
@NamedNativeQueries({
        @NamedNativeQuery(
                name = "GMAuditApply.findApplyList",
                query = "select * from gm_audit_apply where disable = 0 and (opt_status = '1' or send_result = '0' )",
                resultClass = GMAuditApply.class
        )
})
public class GMAuditApply extends BaseBo implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mseq")
    @SequenceGenerator(name = "mseq", sequenceName = "gm_audit_SEQ", allocationSize = 1)
    @Column(name = "aa_id")
    private Long aaId;

    @Column(name = "SERVER_ID")
    private Integer serverId;

    @Column(name = "PROVIDER_ID")
    private Integer providerId;

    @Column(name = "OPT_TYPE")
    private String optType;

    @Column(name = "OPT_USER_ID")
    private Long optUserId;

    @Column(name = "OPT_USER_NAME")
    private String optUserName;

    @Column(name = "OPT_TIME")
    private Timestamp optTime;

    @Column(name = "OPT_STATUS")
    private String optStatus;

    @Column(name = "APPROVE_USER_ID")
    private Long approveUserId;

    @Column(name = "APPROVE_USER_NAME")
    private String approveUserName;

    @Column(name = "APPROVE_TIME")
    private Timestamp approveTime;

    @Lob
    @Column(name = "JSON_DATA", columnDefinition="CLOB")
    private String jsonData;

    @Column(name = "SEND_RESULT")
    private String sendResult;

    private String disable;

    @Column(name = "UPDATE_TIME")
    private Timestamp updateTime;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Long getAaId() {
        return aaId;
    }

    public void setAaId(Long aaId) {
        this.aaId = aaId;
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

    public String getOptType() {
        return optType;
    }

    public void setOptType(String optType) {
        this.optType = optType;
    }

    public Long getOptUserId() {
        return optUserId;
    }

    public void setOptUserId(Long optUserId) {
        this.optUserId = optUserId;
    }

    public String getOptUserName() {
        return optUserName;
    }

    public void setOptUserName(String optUserName) {
        this.optUserName = optUserName;
    }

    public Timestamp getOptTime() {
        return optTime;
    }

    public void setOptTime(Timestamp optTime) {
        this.optTime = optTime;
    }

    public String getOptStatus() {
        return optStatus;
    }

    public void setOptStatus(String optStatus) {
        this.optStatus = optStatus;
    }

    public Long getApproveUserId() {
        return approveUserId;
    }

    public void setApproveUserId(Long approveUserId) {
        this.approveUserId = approveUserId;
    }

    public String getApproveUserName() {
        return approveUserName;
    }

    public void setApproveUserName(String approveUserName) {
        this.approveUserName = approveUserName;
    }

    public Timestamp getApproveTime() {
        return approveTime;
    }

    public void setApproveTime(Timestamp approveTime) {
        this.approveTime = approveTime;
    }

    public String getJsonData() {
        return jsonData;
    }

    public void setJsonData(String jsonData) {
        this.jsonData = jsonData;
    }

    public String getSendResult() {
        return sendResult;
    }

    public void setSendResult(String sendResult) {
        this.sendResult = sendResult;
    }

    public String getDisable() {
        return disable;
    }

    public void setDisable(String disable) {
        this.disable = disable;
    }

    public Timestamp getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "GMAuditApply{" +
                "aaId=" + aaId +
                ", serverId=" + serverId +
                ", providerId=" + providerId +
                ", optType='" + optType + '\'' +
                ", optUserId=" + optUserId +
                ", optUserName='" + optUserName + '\'' +
                ", optTime=" + optTime +
                ", optStatus='" + optStatus + '\'' +
                ", approveUserId=" + approveUserId +
                ", approveUserName='" + approveUserName + '\'' +
                ", approveTime=" + approveTime +
                ", jsonData='" + jsonData + '\'' +
                ", sendResult='" + sendResult + '\'' +
                ", disable='" + disable + '\'' +
                ", updateTime=" + updateTime +
                '}';
    }
}
