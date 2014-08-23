package com.gamehoo.bbgmimport.web.adapter.builder.actioninfobuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.actioninfo.ActionAttributeBo;
import com.gamehoo.tools.log.Logger;
import org.springframework.beans.BeanUtils;

public class CommonAttrAdapter implements IDetailAdapter{
    private static final Logger log = new Logger(CommonAttrAdapter.class);
    public <T extends ActionAttributeBo> T builderGameAction(ActionAttributeBo actionAttributeBo, Class<T> classOfT) {
        try {
            ActionAttributeBo bo = classOfT.newInstance();
            BeanUtils.copyProperties(actionAttributeBo, bo, ActionAttributeBo.class);
            return (T) bo;
        } catch (InstantiationException e) {
            log.error(e,"Builder class:" + classOfT + " error.");
        } catch (IllegalAccessException e) {
            log.error(e,"Builder class:" + classOfT + " error.");
        }
        return null;
    }
}
