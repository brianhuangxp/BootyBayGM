package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.GmTmpTreasureAction;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;
import com.gamehoo.tools.log.Logger;

public class TreasureActionAdapter extends CommonActionAdapter {
    private static final Logger log = new Logger(TreasureActionAdapter.class);

    public <T extends ActionBaseBo> T builderGameAction(GmTmpUserAction userAction, Class<T> classOfT, ActionType actionType) {
        ActionBaseBo bo = super.builderGameAction(userAction, classOfT, actionType);
        if (bo != null && bo instanceof GmTmpTreasureAction) {
            GmTmpTreasureAction actionBo = (GmTmpTreasureAction) bo;
            switch (actionType) {
                case TREASURE_DIG:
                case TREASURE_HARVEST:
                    if (actionBo.getResult() != null) {
                        String[] rs = actionBo.getResult().split(splitSign);
                        if (rs.length != 2) {
                            break;
                        }
                        actionBo.setSid(Long.parseLong(rs[0]));
                        actionBo.setRank(Integer.parseInt(rs[1]));
                    }
                    break;

                case TREASURE_PILLAGE:
                case TREASURE_REVENGE:
                    if (actionBo.getResult() != null) {
                        String[] rs = actionBo.getResult().split(splitSign);
                        if (rs.length != 4) {
                            break;
                        }
                        actionBo.setOpponentId(Long.parseLong(rs[0]));
                        actionBo.setSid(Long.parseLong(rs[1]));
                        actionBo.setRank(Integer.parseInt(rs[2]));
                        actionBo.setScore(Integer.parseInt(rs[3]));
                    }
                    break;
                case TREASURE_EXCHANGE:
                    if (actionBo.getResult() != null) {
                        actionBo.setSid(Long.parseLong(actionBo.getResult()));
                    }
                    break;
                case TREASURE_REFRESH:
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
