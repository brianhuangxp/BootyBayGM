package com.gamehoo.bbgmimport.web.adapter;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.bbgmimport.domain.bo.GmTmpImport;
import com.gamehoo.bbgmimport.domain.serv.ImportServer;
import com.gamehoo.bbgmimport.domain.to.ImportData;
import com.gamehoo.bbgmimport.domain.vo.BaseServerVo;

import java.util.ArrayList;
import java.util.List;

public class AdapterBuilder {
    private static AdapterBuilder instance;

    private static List<AbstractAdapter> adapters;

    private AdapterBuilder() {
        adapters = new ArrayList<AbstractAdapter>();
        adapters.add(new ServerAdapter());
        adapters.add(new DailyAdapter());
        adapters.add(new UserAdapter());
    }

    public static AdapterBuilder getInstance() {
        if (instance == null) {
            instance = new AdapterBuilder();
        }
        return instance;
    }

    public GmTmpImport getGmRptImportBo(final ImportData data) {
        return AbstractAdapter.parseGmRptImport(data);
    }

    public List<BaseServerBo> getImportBoList(final ImportData data, final Long importId) {
        List<BaseServerBo> boList = new ArrayList<BaseServerBo>();
        for (AbstractAdapter adapter : adapters) {
            List<?> bos = adapter.parseServerBo(data, importId);
            for(Object obj : bos){
                if(obj instanceof  BaseServerBo){
                    boList.add((BaseServerBo)obj);
                }else if(obj instanceof  BaseServerVo){
                    BaseServerVo vo = (BaseServerVo) obj;
                    boList.addAll(vo.getBoList());
                }
            }
        }
        return boList;
    }
}