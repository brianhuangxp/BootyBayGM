package com.gamehoo.domain.vo.manageTools.rechargeData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

public class PrepayAndAPRUVo extends BaseVo {
    private Timestamp recordTime;
    private Long createAndPrepay;
    private Long createCount;
    private Double totalPrepay;
    private Long prepayCount;

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    public Long getCreateAndPrepay() {
        return createAndPrepay;
    }

    public void setCreateAndPrepay(Long createAndPrepay) {
        this.createAndPrepay = createAndPrepay;
    }

    public Long getCreateCount() {
        return createCount;
    }

    public void setCreateCount(Long createCount) {
        this.createCount = createCount;
    }

    public Double getTotalPrepay() {
        return totalPrepay;
    }

    public void setTotalPrepay(Double totalPrepay) {
        this.totalPrepay = totalPrepay;
    }

    public Long getPrepayCount() {
        return prepayCount;
    }

    public void setPrepayCount(Long prepayCount) {
        this.prepayCount = prepayCount;
    }
}
