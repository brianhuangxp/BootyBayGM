package com.gamehoo.bbgmimport.domain.bo.dailyopt;

import com.gamehoo.bbgmimport.domain.bo.useropt.actioninfo.ActionAttributeBo;
import com.gamehoo.domain.bo.BaseBo;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "GM_TMP_DAILY_INFO")
public class GmTmpDailyInfo extends ActionAttributeBo {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mseq")
    @SequenceGenerator(name = "mseq", sequenceName = "TMP_ATTR_SEQUENCES", allocationSize = 1)
    private Long id;

    @Column(name="DAILY_ID")
    private Long dailyId;

    private Integer type;
    private Integer rank;

    @Column(name="ITEM_LEVEL")
    private Integer itemLevel;

    private Long amount;

    @Column(name = "UPDATE_TIME")
    private Timestamp updateTime;

    public Long getPrimaryKey() {
        return id;
    }

    public void setParentId(Long id) {
        this.dailyId = id;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getDailyId() {
        return dailyId;
    }

    public void setDailyId(Long dailyId) {
        this.dailyId = dailyId;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    public Integer getItemLevel() {
        return itemLevel;
    }

    public void setItemLevel(Integer itemLevel) {
        this.itemLevel = itemLevel;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public Timestamp getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GmTmpDaily{");
        sb.append("id=" + id);
        sb.append(", dailyId=" + dailyId);
        sb.append(", type=" + type);
        sb.append(", rank=" + rank);
        sb.append(", itemLevel=" + itemLevel);
        sb.append(", amount=" + amount);
        sb.append(", updateTime=" + updateTime);
        sb.append("}");
        return sb.toString();
    }
}
