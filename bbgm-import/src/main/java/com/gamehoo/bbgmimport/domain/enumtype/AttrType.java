package com.gamehoo.bbgmimport.domain.enumtype;

import com.gamehoo.bbgmimport.domain.bo.dailyopt.GmTmpDailyInfo;
import com.gamehoo.bbgmimport.domain.bo.useropt.actioninfo.*;

import java.util.ArrayList;
import java.util.List;

public enum AttrType {
    /*@Deprecated
    EQUIP_RANK(AttrModuleType.DAILY_ACTION, GmTmpDailyInfo.class, 604),                 //装备品质
    @Deprecated
    EQUIP_LV(AttrModuleType.DAILY_ACTION, GmTmpDailyInfo.class, 605),                   //装备强化等级*/

    DAILY_EQUIP_INFO(AttrModuleType.DAILY_ACTION, GmTmpDailyInfo.class, 606),         //装备强化明细

    GOLD(AttrModuleType.USER_ACTION, GmTmpAttrGold.class, 1),                            //金币
    GEM(AttrModuleType.USER_ACTION, GmRptGemChange.class, 2),                             //钻石
    POWER(AttrModuleType.USER_ACTION, GmTmpAttrPower.class, 3),                           //体力
    EXP(AttrModuleType.USER_ACTION, GmTmpAttrExp.class, 4),                             //经验值
    HONOR(AttrModuleType.USER_ACTION, GmTmpAttrHonor.class, 5),                   //荣誉（声望）起始值      荣誉 11-20
    EQUIP(AttrModuleType.USER_ACTION, GmTmpAttrEquip.class, 601),                       //装备
    ITEM(AttrModuleType.USER_ACTION, GmTmpAttrItem.class, 602),                        //物品
    HERO(AttrModuleType.USER_ACTION, GmTmpAttrHero.class, 603);                        //英雄

    private AttrModuleType moduleType;
    private Integer typeValue;
    private Class<? extends ActionAttributeBo> attrBoClass;

    private AttrType(AttrModuleType moduleType, Class<? extends ActionAttributeBo> attrBoClass, Integer typeValue) {
        this.moduleType = moduleType;
        this.attrBoClass = attrBoClass;
        this.typeValue = typeValue;
    }

    public AttrModuleType getModuleType() {
        return moduleType;
    }

    public Integer getTypeValue() {
        return typeValue;
    }

    public Class<? extends ActionAttributeBo> getAttrBoClass() {
        return attrBoClass;
    }

    public static Class<? extends ActionAttributeBo> getAttrBoClassFromType(Integer typeValue) {
        for (AttrType type : AttrType.values())
            if (type.typeValue.equals(typeValue))
                return type.attrBoClass;
        return null;
    }

    public static AttrType getAttrTypeFromTypeValue(Integer value) {
        for (AttrType type : AttrType.values())
            if (type.getTypeValue().equals(value))
                return type;
        return null;
    }

    public static List<AttrType> getTypeListFromModuleType(AttrModuleType moduleType) {
        List<AttrType> actionTypes = new ArrayList<AttrType>();
        for (AttrType type : AttrType.values())
            if (type.moduleType == moduleType)
                actionTypes.add(type);

        return actionTypes;
    }

    public static List<AttrType> getTypeListFromActionClass(Class<? extends ActionAttributeBo> attrBoClass) {
        List<AttrType> actionTypes = new ArrayList<AttrType>();
        for (AttrType type : AttrType.values())
            if (type.attrBoClass.equals(attrBoClass))
                actionTypes.add(type);

        return actionTypes;
    }

}
