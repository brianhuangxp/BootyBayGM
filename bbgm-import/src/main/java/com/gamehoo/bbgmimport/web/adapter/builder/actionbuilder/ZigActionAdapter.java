package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.GmTmpZigAction;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;
import com.gamehoo.tools.log.Logger;

public class ZigActionAdapter extends CommonActionAdapter {
    private static final Logger log = new Logger(ZigActionAdapter.class);

    public <T extends ActionBaseBo> T builderGameAction(GmTmpUserAction userAction, Class<T> classOfT, ActionType actionType) {
        ActionBaseBo bo = super.builderGameAction(userAction, classOfT, actionType);
        if (bo != null && bo instanceof GmTmpZigAction) {
            GmTmpZigAction actionBo = (GmTmpZigAction) bo;
            switch (actionType) {
                case ZIG_CHALLENGE:
//                    actionBo.setResult("123|22|1");

                    if (actionBo.getResult() != null) {
                        String[] rs = actionBo.getResult().split(splitSign);
                        if (rs.length != 3) {
                            break;
                        }
                        actionBo.setFloor(Integer.parseInt(rs[0]));
                        actionBo.setRank(Integer.parseInt(rs[1]));
                        actionBo.setScore(Integer.parseInt(rs[2]));
                    }
                    break;
            }
            return (T) actionBo;
        }
        return (T) bo;
    }
}
