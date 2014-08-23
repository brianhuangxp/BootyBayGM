package com.gamehoo.domain.vo.manageTools.moduleData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class AltarAmountVo extends BaseVo {
    @Id
    @Column(name = "record_time")
    private Timestamp recordTime;

    @Column(name = "honor_amount")
    private Long honorAmount;

    @Column(name = "gold_amount")
    private Long goldAmount;

    @Column(name = "gem_amount")
    private Long gemAmount;

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    public Long getHonorAmount() {
        return honorAmount;
    }

    public void setHonorAmount(Long honorAmount) {
        this.honorAmount = honorAmount;
    }

    public Long getGoldAmount() {
        return goldAmount;
    }

    public void setGoldAmount(Long goldAmount) {
        this.goldAmount = goldAmount;
    }

    public Long getGemAmount() {
        return gemAmount;
    }

    public void setGemAmount(Long gemAmount) {
        this.gemAmount = gemAmount;
    }
}
