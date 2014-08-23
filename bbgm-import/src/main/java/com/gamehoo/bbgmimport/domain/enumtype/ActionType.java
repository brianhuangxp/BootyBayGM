package com.gamehoo.bbgmimport.domain.enumtype;

import com.gamehoo.bbgmimport.domain.bo.useropt.action.*;

import java.util.ArrayList;
import java.util.List;

public enum ActionType {
    @Deprecated
    HERO_BUY(GmTmpHeroAction.class, 0, 200001),                           //角色模块-购买英雄
    HERO_FIRE(GmTmpHeroAction.class, 1, 200003),                           //角色模块-解雇英雄
    @Deprecated
    HERO_CHANGE_QUEUE(GmTmpHeroAction.class, 2, 200011),                 //角色模块-改变阵形
    HERO_TRAIN(GmTmpHeroAction.class, 3, 200013),                         //角色模块-训练英雄
    HERO_PRACTICE(GmTmpHeroAction.class, 4, 200019),                     //角色模块-英雄修炼
    HERO_UPGRADE(GmTmpHeroAction.class, 5, 200021),                      //    200021	角色模块-英雄进阶
    @Deprecated
    HERO_ALTAR(GmTmpHeroAction.class, 6, 200029),                         //    200029	角色模块-祭坛
    HERO_HIRE(GmTmpHeroAction.class, 7, 200033),                         //    200033	角色模块-英雄招募
    @Deprecated
    HERO_TRAIN_GET_EXP_REQ(GmTmpHeroAction.class, 8, 200017),          //    200033	角色模块-英雄训练经验



    ITEM_PURCHASE(GmTmpItemAction.class, 1, 210001),                    //    210001	物品模块-购买
    ITEM_MOVE(GmTmpItemAction.class, 2, 210005),                        //    	物品模块移动
    ITEM_PACKAGE_INCREASE(GmTmpItemAction.class, 2, 210007),          //    	物品模块-开背包格
    ITEM_EQUIP_RESOLVE(GmTmpItemAction.class, 3, 210011),              //    210011	物品模块-装备分解
    ITEM_SELL(GmTmpItemAction.class, 4, 210013),                           //    210013	物品模块-出售物品
    ITEM_EQUIP_REINFORCE(GmTmpItemAction.class, 5, 210017),              //    210017	物品模块-装备强化
    ITEM_USING(GmTmpItemAction.class, 6, 210021),                         //    210021	物品模块-使用物品
    ITEM_SORT_PACKAGES(GmTmpItemAction.class, 8, 210023),                         //    210021	物品模块-整理背包
    ITEM_ALTAR(GmTmpItemAction.class, 7, 210025),                         //    210021	物品模块-祭坛

    ZONES_CHALLENGE(GmTmpZonesAction.class, 1, 180001),                        //    180001	副本-打普通副本
    ZONES_MOP_UP(GmTmpZonesAction.class, 2, 180003),                        //    180003	副本-扫荡
    ZONES_PURCHASE_PHYSICAL_POWER(GmTmpZonesAction.class, 3, 180007),  //    180007	副本-购买体力值
    ZONES_REWARDS(GmTmpZonesAction.class, 4, 180013),                      //    180013	副本-领取奖励
    ZONES_LABYRINTH(GmTmpZonesAction.class, 5, 180015),                    //    180015	副本-迷宫进入
    ZONES_MAZE(GmTmpZonesAction.class, 6, 180017),                    //    180017	副本-迷宫事件

    ZIG_CHALLENGE(GmTmpZigAction.class, 1, 170001),                 //    170001	通灵塔-挑战
    ZIG_AUTO_CHALLENGE(GmTmpZigAction.class, 2, 170003),                 //    170001	通灵塔-自动挑战
    ZIG_RESET(GmTmpZigAction.class, 3, 170005),                 //    170005	通灵塔-重置
    ZIG_PURCHASE_CHALLENGE_TIME(GmTmpZigAction.class, 4, 170007),                 //    170007	通灵塔-购买

    ARENA_ENTER(GmTmpArenaAction.class, 0, 260001),                    //    260001	竞技场-进入
    ARENA_REFRESH(GmTmpArenaAction.class, 1, 260003),                    //    260003	竞技场-刷新
    ARENA_CHALLENGE(GmTmpArenaAction.class, 2, 260009),                    //    260009	竞技场-挑战

    TREASURE_ENTER(GmTmpTreasureAction.class, 0, 270001),                        //    270001	宝藏-进入
    TREASURE_DIG(GmTmpTreasureAction.class, 1, 270005),                        //    270005	宝藏-挖
    TREASURE_PILLAGE(GmTmpTreasureAction.class, 2, 270007),                   //    270007	宝藏-掠夺
    TREASURE_HARVEST(GmTmpTreasureAction.class, 3, 270009),                   //    270009	宝藏-收宝
    TREASURE_REVENGE(GmTmpTreasureAction.class, 4, 270015),                   //    270015	宝藏-复仇
    TREASURE_BLESSING(GmTmpTreasureAction.class, 5, 270017),                  //    270017	宝藏-祝福
    TREASURE_EXCHANGE(GmTmpTreasureAction.class, 6, 270019),                  //    270019	宝藏-兑换
    TREASURE_REFRESH(GmTmpTreasureAction.class, 7, 270029),                   //    270029	宝藏-刷新宝藏
    TREASURE_RIVAL(GmTmpTreasureAction.class, 8, 270025),                   //    270025	宝藏-寻宝
    TREASURE_SLAVE_CATCH(GmTmpTreasureAction.class, 9, 270031),                   //    270031	宝藏-抓捕
    TREASURE_SLAVE_SOS(GmTmpTreasureAction.class, 10, 270033),                   //    270033	宝藏-求救
    TREASURE_SLAVE_SAVE(GmTmpTreasureAction.class, 11, 270035),                   //    270035	宝藏-解救
    TREASURE_SLAVE_REVOLT(GmTmpTreasureAction.class, 12, 270037),                   //    270037	宝藏-反抗
    TREASURE_SLAVE_FREEING(GmTmpTreasureAction.class, 13, 270039),                   //    270039	宝藏-释放

    PREPAY_PAY(GmTmpPrepayAction.class, 1, 310001),                         //    310001	充值-充值
    PREPAY_GET_GIFT_BAG(GmTmpPrepayAction.class, 1, 310003),                    //    310003	充值-领取充值礼包
    PREPAY_GET_PRIVILEGE(GmTmpPrepayAction.class, 1, 310005),               //    310005	充值-领取特权

    RANKING_ENTER(GmTmpRankingAction.class, 0, 280001),                  //    280001	排行-进入
    RANKING_GET_AWARDS(GmTmpRankingAction.class, 1, 280003),                  //    280003	排行-领取奖励

    ACTIVITY_EAT_BREAD(GmTmpActivityAction.class, 1, 290001),                    //    290001	活动-吃面包
    ACTIVITY_SOLDIER_PROVISIONS(GmTmpActivityAction.class, 2, 290003),          //    290003	活动-领取军响
    ACTIVITY_LIST(GmTmpActivityAction.class, 3, 290005),                       //    290009	活动-抽奖
    ACTIVITY_LOTTERY_DATA(GmTmpActivityAction.class, 4, 290007),                       //    290007	活动-历史抽奖记录
    ACTIVITY_DRAW(GmTmpActivityAction.class, 5, 290009),                       //    290009	活动-抽奖
    ACTIVITY_RULE_DATA(GmTmpActivityAction.class, 6, 290011),                       //    290009	活动-请常规活动数据
    ACTIVITY_REGULAR(GmTmpActivityAction.class, 7, 290013);                       //    290013	活动-领取常规活动奖励

    private Class<? extends ActionBaseBo> actionClass;
    private Integer subType;
    private Integer actionType;

    private ActionType(Class<? extends ActionBaseBo> actionClass, Integer subType, Integer actionType) {
        this.actionClass = actionClass;
        this.subType = subType;
        this.actionType = actionType;
    }

    public static ActionType getEnumFromActionType(Integer actionType) {
        for (ActionType type : ActionType.values())
            if (type.actionType.equals(actionType))
                return type;

        return null;
    }

    public static List<ActionType> getTypeListFromActionClass(Class<? extends ActionBaseBo> actionClass) {
        List<ActionType> actionTypes = new ArrayList<ActionType>();
        for (ActionType type : ActionType.values())
            if (type.actionClass.equals(actionClass))
                actionTypes.add(type);

        return actionTypes;
    }

    public Class<? extends ActionBaseBo> getActionClass() {
        return actionClass;
    }

    public Integer getSubType() {
        return subType;
    }

    public Integer getActionType() {
        return actionType;
    }
}