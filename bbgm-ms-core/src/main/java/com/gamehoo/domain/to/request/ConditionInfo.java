package com.gamehoo.domain.to.request;

import com.gamehoo.domain.to.BaseTo;

public class ConditionInfo extends BaseTo {

    /**
     * 1: 等级; 2: 累计充值; 3: 竞技积分; 4: 消费钻石； 5： 登陆次数； 6：副本关数； 7：竞技胜利场次； 8：掠夺成功次数； 9：内部玩家等级
     */
    private String conditionType;

    private Integer minScope;

    private Integer maxScope;

    public String getConditionType() {
        return conditionType;
    }

    public void setConditionType(String conditionType) {
        this.conditionType = conditionType;
    }

    public Integer getMinScope() {
        return minScope;
    }

    public void setMinScope(Integer minScope) {
        this.minScope = minScope;
    }

    public Integer getMaxScope() {
        return maxScope;
    }

    public void setMaxScope(Integer maxScope) {
        this.maxScope = maxScope;
    }

    @Override
    public String toString() {
        return "ConditionInfo{" +
                "conditionType='" + conditionType + '\'' +
                ", minScope=" + minScope +
                ", maxScope=" + maxScope +
                '}';
    }
}
