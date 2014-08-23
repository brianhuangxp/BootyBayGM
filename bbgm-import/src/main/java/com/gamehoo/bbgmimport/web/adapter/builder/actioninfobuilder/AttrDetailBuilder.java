package com.gamehoo.bbgmimport.web.adapter.builder.actioninfobuilder;

import com.gamehoo.bbgmimport.domain.bo.useropt.actioninfo.ActionAttributeBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.actioninfo.GmRptGemChange;
import com.gamehoo.bbgmimport.domain.bo.useropt.actioninfo.GmTmpAttrGold;
import com.gamehoo.bbgmimport.domain.enumtype.AttrType;

import java.util.HashMap;
import java.util.Map;

public class AttrDetailBuilder {
    private static AttrDetailBuilder instance;

    private Map<AttrType, IDetailAdapter> adapterMap;
    private IDetailAdapter defaultAdapter;

    private AttrDetailBuilder() {
        adapterMap = new HashMap<AttrType, IDetailAdapter>();
        defaultAdapter = new CommonAttrAdapter();
    }

    private void putAdepter(Class<? extends ActionAttributeBo> actionBoClass, Class<? extends IDetailAdapter> adapterClass) {
        try {
            for (AttrType actionType : AttrType.getTypeListFromActionClass(actionBoClass)) {
                adapterMap.put(actionType, adapterClass.newInstance());
            }
        } catch (InstantiationException e) {
        } catch (IllegalAccessException e) {
        }
    }


    public static AttrDetailBuilder getInstance() {
        if (instance == null) {
            instance = new AttrDetailBuilder();
        }
        return instance;
    }

    public ActionAttributeBo builderGameAction(ActionAttributeBo actionAttributeBo) {
        AttrType attrType = AttrType.getAttrTypeFromTypeValue(actionAttributeBo.getType());
        if (attrType != null) {
            IDetailAdapter adapter = adapterMap.get(attrType);
            Class<? extends ActionAttributeBo> boClass = attrType.getAttrBoClass();
            if (adapter != null && boClass != null) {
                return adapter.builderGameAction(actionAttributeBo, boClass);
            } else if (boClass != null) {
                return defaultAdapter.builderGameAction(actionAttributeBo, boClass);
            }
        }
        return actionAttributeBo;
    }
}
