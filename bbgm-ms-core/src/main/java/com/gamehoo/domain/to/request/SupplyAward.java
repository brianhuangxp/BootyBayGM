package com.gamehoo.domain.to.request;

import com.gamehoo.domain.to.InterveneTo;
import com.gamehoo.domain.to.response.AttrInfo;

import java.util.HashMap;
import java.util.List;

public class SupplyAward extends InterveneTo {
    private Integer providerId;
    private List<ConditionInfo> conditionInfos;
    private String players;
    private Long startDate;
    private Long endDate;
    private String emailTitle;//标题
    private String emailContent;
    private Long gem;
    private Integer isRecharge; // 是否影响充值 1: 当做充值行为， 0： 不当做
    private Long gold;
    private Long exp;
    private HashMap<Integer, Integer> honorMap; //声望，允许奖励不同类型的声望，同种类型的声望只有一个 HashMap<声望OID,数量>
    private List<AttrInfo> equips;
    private List<AttrInfo> items;
    private List<AttrInfo> heros;
    private List<AttrInfo> pets;

    public Integer getProviderId() {
        return providerId;
    }

    public void setProviderId(Integer providerId) {
        this.providerId = providerId;
    }

    public List<ConditionInfo> getConditionInfos() {
        return conditionInfos;
    }

    public void setConditionInfos(List<ConditionInfo> conditionInfos) {
        this.conditionInfos = conditionInfos;
    }

    public String getEmailContent() {
        return emailContent;
    }

    public void setEmailContent(String emailContent) {
        this.emailContent = emailContent;
    }

    public Long getGem() {
        return gem;
    }

    public void setGem(Long gem) {
        this.gem = gem;
    }

    public Integer getIsRecharge() {
        return isRecharge;
    }

    public void setIsRecharge(Integer isRecharge) {
        this.isRecharge = isRecharge;
    }

    public Long getGold() {
        return gold;
    }

    public void setGold(Long gold) {
        this.gold = gold;
    }

    public HashMap<Integer, Integer> getHonorMap() {
        return honorMap;
    }

    public void setHonorMap(HashMap<Integer, Integer> honorMap) {
        this.honorMap = honorMap;
    }

    public List<AttrInfo> getEquips() {
        return equips;
    }

    public void setEquips(List<AttrInfo> equips) {
        this.equips = equips;
    }

    public List<AttrInfo> getItems() {
        return items;
    }

    public void setItems(List<AttrInfo> items) {
        this.items = items;
    }

    public List<AttrInfo> getHeros() {
        return heros;
    }

    public void setHeros(List<AttrInfo> heros) {
        this.heros = heros;
    }

    public Long getStartDate() {
        return startDate;
    }

    public void setStartDate(Long startDate) {
        this.startDate = startDate;
    }

    public Long getEndDate() {
        return endDate;
    }

    public void setEndDate(Long endDate) {
        this.endDate = endDate;
    }

    public String getEmailTitle() {
        return emailTitle;
    }

    public void setEmailTitle(String emailTitle) {
        this.emailTitle = emailTitle;
    }

    public List<AttrInfo> getPets() {
        return pets;
    }

    public void setPets(List<AttrInfo> pets) {
        this.pets = pets;
    }

    public Long getExp() {
        return exp;
    }

    public void setExp(Long exp) {
        this.exp = exp;
    }

    public String getPlayers() {
        return players;
    }

    public void setPlayers(String players) {
        this.players = players;
    }
}
