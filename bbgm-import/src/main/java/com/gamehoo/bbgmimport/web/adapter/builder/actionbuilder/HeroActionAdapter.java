package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.GmTmpHeroAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.GmTmpItemAction;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;
import com.gamehoo.tools.log.Logger;

public class HeroActionAdapter extends CommonActionAdapter {
    private static final Logger log = new Logger(HeroActionAdapter.class);

    public <T extends ActionBaseBo> T builderGameAction(GmTmpUserAction userAction, Class<T> classOfT, ActionType actionType) {
        ActionBaseBo bo = super.builderGameAction(userAction, classOfT, actionType);
        if (bo != null && bo instanceof GmTmpHeroAction) {
            GmTmpHeroAction actionBo = (GmTmpHeroAction) bo;
            switch (actionType) {
                case HERO_FIRE:
                case HERO_TRAIN:
                case HERO_PRACTICE:
                case HERO_UPGRADE:
                case HERO_HIRE:
                    if (actionBo.getResult() != null) {
                        String[] rs = actionBo.getResult().split(splitSign);
                        if (rs.length != 4) {
                            break;
                        }
                        actionBo.setSid(Long.parseLong(rs[0]));
                        actionBo.setOid(Long.parseLong(rs[1]));
                        actionBo.setRank(Integer.parseInt(rs[2]));
                        actionBo.setHeroLevel(Integer.parseInt(rs[3]));
                    }
                    break;
            }
            return (T) actionBo;
        }
        return (T) bo;
    }
}
