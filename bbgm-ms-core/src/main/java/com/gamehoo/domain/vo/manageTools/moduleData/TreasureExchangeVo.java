package com.gamehoo.domain.vo.manageTools.moduleData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class TreasureExchangeVo extends BaseVo {
    @Id
    @Column(name = "record_time")
    private Timestamp recordTime;

    @Column(name = "exchange_hero")
    private Integer exchangeHero;

    @Column(name = "exchange_equip")
    private Integer exchangeEquip;

    @Column(name = "exchange_other")
    private Integer exchangeOther;

    @Column(name = "exchange_total")
    private Integer exchangeTotal;

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    public Integer getExchangeHero() {
        return exchangeHero;
    }

    public void setExchangeHero(Integer exchangeHero) {
        this.exchangeHero = exchangeHero;
    }

    public Integer getExchangeEquip() {
        return exchangeEquip;
    }

    public void setExchangeEquip(Integer exchangeEquip) {
        this.exchangeEquip = exchangeEquip;
    }

    public Integer getExchangeOther() {
        return exchangeOther;
    }

    public void setExchangeOther(Integer exchangeOther) {
        this.exchangeOther = exchangeOther;
    }

    public Integer getExchangeTotal() {
        return exchangeTotal;
    }

    public void setExchangeTotal(Integer exchangeTotal) {
        this.exchangeTotal = exchangeTotal;
    }

    @Override
    public String toString() {
        return "TreasureExchangeVo{" +
                "recordTime=" + recordTime +
                ", exchangeHero=" + exchangeHero +
                ", exchangeEquip=" + exchangeEquip +
                ", exchangeOther=" + exchangeOther +
                ", exchangeTotal=" + exchangeTotal +
                '}';
    }
}
