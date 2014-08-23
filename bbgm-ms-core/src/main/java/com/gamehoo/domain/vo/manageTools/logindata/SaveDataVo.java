package com.gamehoo.domain.vo.manageTools.logindata;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class SaveDataVo extends BaseVo {
    @Id
    @Column(name = "save_date")
    private Integer saveDate;

    @Column(name = "create_amount")
    private int createAmount;

    @Column(name = "save_amount")
    private int saveAmount;

    public Integer getSaveDate() {
        return saveDate;
    }

    public void setSaveDate(Integer saveDate) {
        this.saveDate = saveDate;
    }

    public int getCreateAmount() {
        return createAmount;
    }

    public void setCreateAmount(int createAmount) {
        this.createAmount = createAmount;
    }

    public int getSaveAmount() {
        return saveAmount;
    }

    public void setSaveAmount(int saveAmount) {
        this.saveAmount = saveAmount;
    }
}
