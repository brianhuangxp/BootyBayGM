package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.GmTmpZonesAction;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;
import com.gamehoo.tools.ObjectUtils;
import com.gamehoo.tools.log.Logger;

public class ZonesActionAdapter extends CommonActionAdapter {
    private static final Logger log = new Logger(ZonesActionAdapter.class);

    public <T extends ActionBaseBo> T builderGameAction(GmTmpUserAction userAction, Class<T> classOfT, ActionType actionType) {
        ActionBaseBo bo = super.builderGameAction(userAction, classOfT, actionType);
        if (bo != null && bo instanceof GmTmpZonesAction) {
            GmTmpZonesAction actionBo = (GmTmpZonesAction) bo;
            switch (actionType) {
                case ZONES_CHALLENGE:
                    if (actionBo.getResult() != null) {
                        String[] rs = actionBo.getResult().split(splitSign);
                        if (rs.length != 2) {
                            break;
                        }
                        actionBo.setScore(ObjectUtils.isEmpty(rs[0]) ? null : Integer.parseInt(rs[0]));
                        actionBo.setZoneId(ObjectUtils.isEmpty(rs[1]) ? null : Integer.parseInt(rs[1]));
                    }
                    break;
                case ZONES_MOP_UP:
                    if (actionBo.getResult() != null) {
                        String[] rs = actionBo.getResult().split(splitSign);
                        if (rs.length != 2) {
                            break;
                        }
                        actionBo.setFrequency(ObjectUtils.isEmpty(rs[0]) ? null : Integer.parseInt(rs[0]));
                        actionBo.setZoneId(ObjectUtils.isEmpty(rs[1]) ? null : Integer.parseInt(rs[1]));
                    }
                    break;
            }
            return (T) actionBo;
        }
        return (T) bo;
    }
}
