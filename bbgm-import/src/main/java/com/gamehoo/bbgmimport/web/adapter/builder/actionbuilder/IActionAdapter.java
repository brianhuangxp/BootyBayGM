package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;

public interface IActionAdapter {
    public <T extends ActionBaseBo> T builderGameAction(GmTmpUserAction userAction, Class<T> classOfT, ActionType actionType);
}
