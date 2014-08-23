package com.gamehoo.domain.vo.manageTools.moduleData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class TreasureAllianceAndHorde extends BaseVo {
    @Id
    @Column(name = "record_time")
    private Timestamp recordTime;

    @Column(name = "alliance_amount")
    private Integer allianceAmount;

    @Column(name = "horde_amount")
    private Integer hordeAmount;

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    public Integer getAllianceAmount() {
        return allianceAmount;
    }

    public void setAllianceAmount(Integer allianceAmount) {
        this.allianceAmount = allianceAmount;
    }

    public Integer getHordeAmount() {
        return hordeAmount;
    }

    public void setHordeAmount(Integer hordeAmount) {
        this.hordeAmount = hordeAmount;
    }

    @Override
    public String toString() {
        return "TreasureAllianceAndHorde{" +
                "recordTime=" + recordTime +
                ", allianceAmount=" + allianceAmount +
                ", hordeAmount=" + hordeAmount +
                '}';
    }
}
