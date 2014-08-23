package com.gamehoo.domain.vo.manageTools.rechargeData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class PlayerPrivilegeVo extends BaseVo {
    @Id
    @Column(name = "RECORD_TIME")
    private Timestamp recordTime;

    @Column(name = "WEEK_CARD")
    private Integer weekCard;

    @Column(name = "MONTH_CARD")
    private Integer monthCard;

    @Column(name = "YEAR_CARD")
    private Integer yearCard;

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    public Integer getWeekCard() {
        return weekCard;
    }

    public void setWeekCard(Integer weekCard) {
        this.weekCard = weekCard;
    }

    public Integer getMonthCard() {
        return monthCard;
    }

    public void setMonthCard(Integer monthCard) {
        this.monthCard = monthCard;
    }

    public Integer getYearCard() {
        return yearCard;
    }

    public void setYearCard(Integer yearCard) {
        this.yearCard = yearCard;
    }

    @Override
    public String toString() {
        return "PrivilegeVo{" +
                "recordTime=" + recordTime +
                ", weekCard=" + weekCard +
                ", monthCard=" + monthCard +
                ", yearCard=" + yearCard +
                '}';
    }
}
