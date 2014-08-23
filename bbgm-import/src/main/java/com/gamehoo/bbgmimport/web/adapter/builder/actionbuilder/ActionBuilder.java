package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.*;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;

import java.util.HashMap;
import java.util.Map;

public class ActionBuilder {
    private static ActionBuilder instance;

    private Map<ActionType, IActionAdapter> adapterMap;
    private Map<ActionType, Class<? extends ActionBaseBo>> adapterBoMap;
    private IActionAdapter defaultAdapter;

    private ActionBuilder() {
        adapterMap = new HashMap<ActionType, IActionAdapter>();
        defaultAdapter = new CommonActionAdapter();
        putAdepter(GmTmpHeroAction.class, HeroActionAdapter.class);
        putAdepter(GmTmpItemAction.class, ItemActionAdapter.class);
        putAdepter(GmTmpZonesAction.class, ZonesActionAdapter.class);
        putAdepter(GmTmpZigAction.class, ZigActionAdapter.class);
        putAdepter(GmTmpArenaAction.class, ArenaActionAdapter.class);
        putAdepter(GmTmpTreasureAction.class, TreasureActionAdapter.class);
        putAdepter(GmTmpRankingAction.class, RankingActionAdapter.class);
        putAdepter(GmTmpActivityAction.class, ActivityActionAdapter.class);
    }

    private void putAdepter(Class<? extends ActionBaseBo> actionBoClass, Class<? extends IActionAdapter> adapterClass) {
        try {
            for (ActionType actionType : ActionType.getTypeListFromActionClass(actionBoClass)) {
                adapterMap.put(actionType, adapterClass.newInstance());
            }
        } catch (InstantiationException e) {
        } catch (IllegalAccessException e) {
        }
    }

    public static ActionBuilder getInstance() {
        if (instance == null) {
            instance = new ActionBuilder();
        }
        return instance;
    }

    public ActionBaseBo builderGameAction(GmTmpUserAction userAction) {
        ActionType actionType = ActionType.getEnumFromActionType(userAction.getActionType());
        if (actionType != null) {
            IActionAdapter adapter = adapterMap.get(actionType);
            Class<? extends ActionBaseBo> boClass = actionType.getActionClass();
            if (adapter != null && boClass != null)
                return adapter.builderGameAction(userAction, boClass, actionType);
            else if (boClass != null)
                return defaultAdapter.builderGameAction(userAction, boClass, actionType);
        }

        return null;
    }
}
