package com.gamehoo.domain.to.response;

import com.gamehoo.domain.to.InterveneTo;
import com.gamehoo.domain.vo.Status;

import java.util.List;

public class InterveneResult extends InterveneTo {
    public static final String SUCCESS_STATUS = "1";
    public static final String FAIL_STATUS = "0";
    public static final String PARTIAL_SUCCESS_STATUS = "-1";

    private List<Long> accountList; //成功封号的人员。 oid：playerId； name：playerName

    private Status status; // statusCode: 1 成功； 0： 失败； -1：部分失败

    public List<Long> getAccountList() {
        return accountList;
    }

    public void setAccountList(List<Long> accountList) {
        this.accountList = accountList;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }
}
