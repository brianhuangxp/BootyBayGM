package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.GmTmpItemAction;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;
import com.gamehoo.tools.log.Logger;

public class ItemActionAdapter extends CommonActionAdapter {
    private static final Logger log = new Logger(ItemActionAdapter.class);

    public <T extends ActionBaseBo> T builderGameAction(GmTmpUserAction userAction, Class<T> classOfT, ActionType actionType) {
        ActionBaseBo bo = super.builderGameAction(userAction, classOfT, actionType);
        if (bo != null && bo instanceof GmTmpItemAction) {
            GmTmpItemAction actionBo = (GmTmpItemAction) bo;
            switch (actionType) {
                case ITEM_PURCHASE:
                    actionBo.setOid(actionBo.getResult() != null ? Long.parseLong(actionBo.getResult()) : null);
                    break;
                case ITEM_PACKAGE_INCREASE:
                    actionBo.setPackageAmount(actionBo.getResult() != null ? Integer.parseInt(actionBo.getResult()) : null);
                    break;
            }
            return (T) actionBo;
        }
        return (T) bo;
    }
}
