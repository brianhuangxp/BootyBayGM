package com.gamehoo.domain.to.request;

import com.gamehoo.domain.to.InterveneTo;

public class AccountIntervene extends InterveneTo {
    private String users; //用户名称用逗号隔开，#1#：用户id 1
    private Long dispellingDate; //解封日期
    private String frozenCause; // 封号原因
    private Long optTime; // 操作服务器时间
    private Integer optType; //1: 封号； 2： 解封
    private Long userId; // 解封使用
    private Integer providerId;

    public String getUsers() {
        return users;
    }

    public void setUsers(String users) {
        this.users = users;
    }

    public Long getDispellingDate() {
        return dispellingDate;
    }

    public void setDispellingDate(Long dispellingDate) {
        this.dispellingDate = dispellingDate;
    }

    public String getFrozenCause() {
        return frozenCause;
    }

    public void setFrozenCause(String frozenCause) {
        this.frozenCause = frozenCause;
    }

    public Long getOptTime() {
        return optTime;
    }

    public void setOptTime(Long optTime) {
        this.optTime = optTime;
    }

    public Integer getOptType() {
        return optType;
    }

    public void setOptType(Integer optType) {
        this.optType = optType;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Integer getProviderId() {
        return providerId;
    }

    public void setProviderId(Integer providerId) {
        this.providerId = providerId;
    }
}
