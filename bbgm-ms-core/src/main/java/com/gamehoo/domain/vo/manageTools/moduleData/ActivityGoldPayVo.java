package com.gamehoo.domain.vo.manageTools.moduleData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Calendar;

@Entity
public class ActivityGoldPayVo extends BaseVo {
    @Id
    @Column(name = "ad_id")
    private Long adId;

    @Column(name = "player_id")
    private Long playerId;

    @Column(name = "record_time")
    private Timestamp record_time;

    public ActivityGoldPayVo() {
    }

    public ActivityGoldPayVo(Long playerId, Integer month, Integer day) {
        this.playerId = playerId;
        Calendar c = Calendar.getInstance();
        c.set(2014,month,day);
        this.record_time = new Timestamp(c.getTime().getTime());
    }

    public Long getAdId() {
        return adId;
    }

    public void setAdId(Long adId) {
        this.adId = adId;
    }

    public Long getPlayerId() {
        return playerId;
    }

    public void setPlayerId(Long playerId) {
        this.playerId = playerId;
    }

    public Timestamp getRecord_time() {
        return record_time;
    }

    public void setRecord_time(Timestamp record_time) {
        this.record_time = record_time;
    }

    @Override
    public String toString() {
        return "ActivityGoldPayVo{" +
                "adId=" + adId +
                ", playerId=" + playerId +
                ", record_time=" + record_time +
                '}';
    }
}
