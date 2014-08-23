package com.gamehoo.bbgmimport.web.adapter.builder.actioninfobuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.actioninfo.ActionAttributeBo;

public interface IDetailAdapter{
    public <T extends ActionAttributeBo> T builderGameAction(ActionAttributeBo actionAttributeBo, Class<T> classOfT);
}
