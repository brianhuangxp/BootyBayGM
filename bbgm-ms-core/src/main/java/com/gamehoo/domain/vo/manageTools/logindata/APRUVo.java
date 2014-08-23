package com.gamehoo.domain.vo.manageTools.logindata;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class APRUVo extends BaseVo {
    @Id
    @Column(name = "record_date")
    private Timestamp recordDate;

    @Column(name = "total_prepay")
    private Double totalPrepay;

    @Column(name = "prepay_count")
    private Long prepayCount;

    public Timestamp getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(Timestamp recordDate) {
        this.recordDate = recordDate;
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

    @Override
    public String toString() {
        return "APRUVo{" +
                "recordDate=" + recordDate +
                ", totalPrepay=" + totalPrepay +
                ", prepayCount=" + prepayCount +
                '}';
    }
}
