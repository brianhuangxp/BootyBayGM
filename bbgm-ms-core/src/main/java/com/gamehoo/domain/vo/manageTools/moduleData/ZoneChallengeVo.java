package com.gamehoo.domain.vo.manageTools.moduleData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class ZoneChallengeVo extends BaseVo {
    @Id
    @Column(name = "ZCD_ID")
    private Long zcdId;

    @Column(name = "VICTORIES_AMOUNT")
    private Integer victoriesAmount;

    @Column(name = "MOP_AMOUNT")
    private Integer mopAmount;

    @Column(name = "record_time")
    private Timestamp recordTime;

    public Long getZcdId() {
        return zcdId;
    }

    public void setZcdId(Long zcdId) {
        this.zcdId = zcdId;
    }

    public Integer getVictoriesAmount() {
        return victoriesAmount;
    }

    public void setVictoriesAmount(Integer victoriesAmount) {
        this.victoriesAmount = victoriesAmount;
    }

    public Integer getMopAmount() {
        return mopAmount;
    }

    public void setMopAmount(Integer mopAmount) {
        this.mopAmount = mopAmount;
    }

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    @Override
    public String toString() {
        return "ZoneChallengeVo{" +
                "zcdId=" + zcdId +
                ", victoriesAmount=" + victoriesAmount +
                ", mopAmount=" + mopAmount +
                ", recordTime=" + recordTime +
                '}';
    }
}
