package com.gamehoo.domain.ap.gmTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;

public class ApplySupplyAwardAp extends CommonDateSearchAp {
    private String emailTitle;//标题
    private String emailContent;
    private String players;
    private Long gem;
    private Integer isRecharge; // 是否影响充值 1: 当做充值行为， 0： 不当做
    private Long gold;
    private Long exp;
    private SupplyAwardExtendJasonBean suppleExtend;

    public String getEmailTitle() {
        return emailTitle;
    }

    public void setEmailTitle(String emailTitle) {
        this.emailTitle = emailTitle;
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

    public SupplyAwardExtendJasonBean getSuppleExtend() {
        return suppleExtend;
    }

    public void setSuppleExtend(SupplyAwardExtendJasonBean suppleExtend) {
        this.suppleExtend = suppleExtend;
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
