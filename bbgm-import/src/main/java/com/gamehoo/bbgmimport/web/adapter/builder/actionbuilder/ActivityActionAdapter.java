package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.GmTmpActivityAction;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;
import com.gamehoo.tools.log.Logger;

public class ActivityActionAdapter extends CommonActionAdapter {
    private static final Logger log = new Logger(ActivityActionAdapter.class);

    public <T extends ActionBaseBo> T builderGameAction(GmTmpUserAction userAction, Class<T> classOfT, ActionType actionType) {
        ActionBaseBo bo = super.builderGameAction(userAction, classOfT, actionType);
        if (bo != null && bo instanceof GmTmpActivityAction) {
            GmTmpActivityAction actionBo = (GmTmpActivityAction) bo;
            switch (actionType) {
                case ACTIVITY_REGULAR:
                    if (actionBo.getResult() != null) {
                        String[] rs = actionBo.getResult().split(splitSign);
                        if (rs.length != 2) {
                            break;
                        }
                        actionBo.setSid(Long.parseLong(rs[0]));
                        actionBo.setRank(Integer.parseInt(rs[1]));
                    }

                    break;
            }
            return (T) actionBo;
        }
        return (T) bo;
    }
}
