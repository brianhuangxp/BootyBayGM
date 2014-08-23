package com.gamehoo.domain.to.response;

import com.gamehoo.domain.to.InterveneTo;

import java.util.List;

public class PlayerDetailGather extends InterveneTo {
    private Long uid;
    private String playerName; //玩家名称
    private Integer playerLevel; //等级
    private Long playerExp;     //经验
    private Integer playerPower; //体力
    private Integer gem; //钻石
    private Long gold; // 金币
    private Integer packageCellCount; //当前背包格子数

    private List<AttrInfo> itemList; //物品明细
    private List<AttrInfo> heroList; //英雄明细
    private List<AttrInfo> equipList; //装备明细
    private List<AttrInfo> honorList; //声望明细
    private List<AttrInfo> petList; //宠物明细

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public Integer getPlayerLevel() {
        return playerLevel;
    }

    public void setPlayerLevel(Integer playerLevel) {
        this.playerLevel = playerLevel;
    }

    public Long getPlayerExp() {
        return playerExp;
    }

    public void setPlayerExp(Long playerExp) {
        this.playerExp = playerExp;
    }

    public Integer getPlayerPower() {
        return playerPower;
    }

    public void setPlayerPower(Integer playerPower) {
        this.playerPower = playerPower;
    }

    public Integer getGem() {
        return gem;
    }

    public void setGem(Integer gem) {
        this.gem = gem;
    }

    public Long getGold() {
        return gold;
    }

    public void setGold(Long gold) {
        this.gold = gold;
    }

    public Integer getPackageCellCount() {
        return packageCellCount;
    }

    public void setPackageCellCount(Integer packageCellCount) {
        this.packageCellCount = packageCellCount;
    }

    public List<AttrInfo> getItemList() {
        return itemList;
    }

    public void setItemList(List<AttrInfo> itemList) {
        this.itemList = itemList;
    }

    public List<AttrInfo> getHeroList() {
        return heroList;
    }

    public void setHeroList(List<AttrInfo> heroList) {
        this.heroList = heroList;
    }

    public List<AttrInfo> getEquipList() {
        return equipList;
    }

    public void setEquipList(List<AttrInfo> equipList) {
        this.equipList = equipList;
    }

    public List<AttrInfo> getHonorList() {
        return honorList;
    }

    public void setHonorList(List<AttrInfo> honorList) {
        this.honorList = honorList;
    }

    public List<AttrInfo> getPetList() {
        return petList;
    }

    public void setPetList(List<AttrInfo> petList) {
        this.petList = petList;
    }

    @Override
    public String toString() {
        return "PlayerDetailGather{" +
                "uid=" + uid +
                "playerName='" + playerName + '\'' +
                ", playerLevel=" + playerLevel +
                ", playerExp=" + playerExp +
                ", playerPower=" + playerPower +
                ", gem=" + gem +
                ", gold=" + gold +
                ", packageCellCount=" + packageCellCount +
                ", itemList=" + itemList +
                ", heroList=" + heroList +
                ", equipList=" + equipList +
                ", honorList=" + honorList +
                ", petList=" + petList +
                '}';
    }
}
