package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.GmTmpArenaAction;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;
import com.gamehoo.tools.log.Logger;

public class ArenaActionAdapter extends CommonActionAdapter {
    private static final Logger log = new Logger(ArenaActionAdapter.class);

    public <T extends ActionBaseBo> T builderGameAction(GmTmpUserAction userAction, Class<T> classOfT, ActionType actionType) {
        ActionBaseBo bo = super.builderGameAction(userAction, classOfT, actionType);
        if (bo != null && bo instanceof GmTmpArenaAction) {
            GmTmpArenaAction actionBo = (GmTmpArenaAction) bo;
            switch (actionType) {
                case ARENA_CHALLENGE:
                    if (actionBo.getResult() != null) {
                        actionBo.setScore(Integer.parseInt(actionBo.getResult()));
                    }
                    break;
            }
            return (T) actionBo;
        }
        return (T) bo;
    }
}
