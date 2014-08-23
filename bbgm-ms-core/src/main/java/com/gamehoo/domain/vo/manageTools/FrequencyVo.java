package com.gamehoo.domain.vo.manageTools;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class FrequencyVo extends BaseVo {
    @Id
    private Long frequency;

    private Long amount;

    public FrequencyVo() {
    }

    public FrequencyVo(Long frequency, Long amount) {
        this.frequency = frequency;
        this.amount = amount;
    }

    public Long getFrequency() {
        return frequency;
    }

    public void setFrequency(Long frequency) {
        this.frequency = frequency;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

}
