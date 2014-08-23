package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.GmTmpActivityAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.GmTmpRankingAction;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;
import com.gamehoo.tools.log.Logger;

public class RankingActionAdapter extends CommonActionAdapter {
    private static final Logger log = new Logger(RankingActionAdapter.class);

    public <T extends ActionBaseBo> T builderGameAction(GmTmpUserAction userAction, Class<T> classOfT, ActionType actionType) {
        ActionBaseBo bo = super.builderGameAction(userAction, classOfT, actionType);
        if (bo != null && bo instanceof GmTmpRankingAction) {
            GmTmpRankingAction actionBo = (GmTmpRankingAction) bo;
            switch (actionType) {
                case RANKING_GET_AWARDS:
                    if (actionBo.getResult() != null) {
                        actionBo.setRank(Integer.parseInt(actionBo.getResult()));
                    }
                    break;
            }
            return (T) actionBo;
        }
        return (T) bo;
    }
}
