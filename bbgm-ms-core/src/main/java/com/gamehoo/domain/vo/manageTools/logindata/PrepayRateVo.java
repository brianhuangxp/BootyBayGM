package com.gamehoo.domain.vo.manageTools.logindata;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class PrepayRateVo extends BaseVo {
    @Id
    private Long id;

    @Column(name = "create_date")
    private Timestamp createDate;

    @Column(name = "prepay_flag")
    private Integer prepayFlag;

    @Column(name = "player_num")
    private Long playerNum;

    public Timestamp getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Timestamp createDate) {
        this.createDate = createDate;
    }

    public Integer getPrepayFlag() {
        return prepayFlag;
    }

    public void setPrepayFlag(Integer prepayFlag) {
        this.prepayFlag = prepayFlag;
    }

    public Long getPlayerNum() {
        return playerNum;
    }

    public void setPlayerNum(Long playerNum) {
        this.playerNum = playerNum;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "PrepayRateVo{" +
                "id=" + id +
                "xcreateDate=" + createDate +
                ", prepayFlag=" + prepayFlag +
                ", playerNum=" + playerNum +
                '}';
    }
}
