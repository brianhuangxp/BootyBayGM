package com.gamehoo.domain.enumtype;

public enum AuditApplyOptStatus {
    APPLY("1", "发起申请"),
    APPROVED("2", "审批通过"),
    REJECT("3", "审批拒绝");

    public String statusCode;
    public String description;

    AuditApplyOptStatus(String statusCode, String description) {
        this.statusCode = statusCode;
        this.description = description;
    }

    public String getStatusCode() {
        return statusCode;
    }

    public String getDescription() {
        return description;
    }
}
