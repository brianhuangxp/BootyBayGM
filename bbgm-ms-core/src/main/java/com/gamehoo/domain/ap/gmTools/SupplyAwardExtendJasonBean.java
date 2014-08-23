package com.gamehoo.domain.ap.gmTools;

import com.gamehoo.domain.ap.JsonBean;
import com.gamehoo.domain.to.request.ConditionInfo;
import com.gamehoo.domain.to.response.AttrInfo;

import java.util.HashMap;
import java.util.List;

public class SupplyAwardExtendJasonBean implements JsonBean {
    private List<ConditionInfo> conditionInfos;
    private HashMap<Integer, Integer> honorMap; //声望，允许奖励不同类型的声望，同种类型的声望只有一个 HashMap<声望OID,数量>
    private List<AttrInfo> equips;
    private List<AttrInfo> items;
    private List<AttrInfo> heros;
    private List<AttrInfo> pets;

    public List<ConditionInfo> getConditionInfos() {
        return conditionInfos;
    }

    public void setConditionInfos(List<ConditionInfo> conditionInfos) {
        this.conditionInfos = conditionInfos;
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

    public List<AttrInfo> getPets() {
        return pets;
    }

    public void setPets(List<AttrInfo> pets) {
        this.pets = pets;
    }

}
