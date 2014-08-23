package com.gamehoo.domain.enumtype;

public enum AuditApplyOptType {
    SUPPLY_AWARD(1, "奖励发放");

    public Integer optType;
    public String description;

    AuditApplyOptType(Integer optType, String description) {
        this.optType = optType;
        this.description = description;
    }

    public Integer getOptType() {
        return optType;
    }

    public String getDescription() {
        return description;
    }
}
