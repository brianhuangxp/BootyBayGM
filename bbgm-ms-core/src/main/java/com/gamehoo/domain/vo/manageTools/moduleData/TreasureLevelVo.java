package com.gamehoo.domain.vo.manageTools.moduleData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class TreasureLevelVo extends BaseVo {
    @Id
    @Column(name = "record_time")
    private Timestamp recordTime;

    private Integer white;
    private Integer green;
    private Integer blue;
    private Integer purple;
    private Integer orange;

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    public Integer getWhite() {
        return white;
    }

    public void setWhite(Integer white) {
        this.white = white;
    }

    public Integer getGreen() {
        return green;
    }

    public void setGreen(Integer green) {
        this.green = green;
    }

    public Integer getBlue() {
        return blue;
    }

    public void setBlue(Integer blue) {
        this.blue = blue;
    }

    public Integer getPurple() {
        return purple;
    }

    public void setPurple(Integer purple) {
        this.purple = purple;
    }

    public Integer getOrange() {
        return orange;
    }

    public void setOrange(Integer orange) {
        this.orange = orange;
    }

    @Override
    public String toString() {
        return "TreasureLevelVo{" +
                "recordTime=" + recordTime +
                ", white=" + white +
                ", green=" + green +
                ", blue=" + blue +
                ", purple=" + purple +
                ", orange=" + orange +
                '}';
    }
}
