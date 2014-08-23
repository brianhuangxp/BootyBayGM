package com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.enumtype.ActionType;
import com.gamehoo.tools.log.Logger;
import org.springframework.beans.BeanUtils;

public class CommonActionAdapter implements IActionAdapter {
    private static final Logger log = new Logger(CommonActionAdapter.class);
    protected static final String splitSign = "\\|";

    public <T extends ActionBaseBo> T builderGameAction(GmTmpUserAction userAction, Class<T> classOfT, ActionType actionType) {
        try {
            ActionBaseBo bo = classOfT.newInstance();
            BeanUtils.copyProperties(userAction, bo, ActionBaseBo.class);
            bo.setSubType(actionType.getSubType());
            return (T) bo;
        } catch (InstantiationException e) {
            log.error(e, "Builder class:" + classOfT + " error.");
        } catch (IllegalAccessException e) {
            log.error(e, "Builder class:" + classOfT + " error.");
        }
        return null;
    }
}
