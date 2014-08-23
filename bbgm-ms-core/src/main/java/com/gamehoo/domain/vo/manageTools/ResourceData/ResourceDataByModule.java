package com.gamehoo.domain.vo.manageTools.ResourceData;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ResourceDataByModule extends BaseVo {
    @Id
    private Long id;

    @Column(name = "action_type")
    private Integer actionType;

    @Column(name = "detail_type")
    private Integer detailType;

    private Long earning;
    private Long expense;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getActionType() {
        return actionType;
    }

    public void setActionType(Integer actionType) {
        this.actionType = actionType;
    }

    public Integer getDetailType() {
        return detailType;
    }

    public void setDetailType(Integer detailType) {
        this.detailType = detailType;
    }

    public Long getEarning() {
        return earning;
    }

    public void setEarning(Long earning) {
        this.earning = earning;
    }

    public Long getExpense() {
        return expense;
    }

    public void setExpense(Long expense) {
        this.expense = expense;
    }
}
