package com.gamehoo.domain.serv.manageTools;

import com.gamehoo.domain.ap.manageTools.ResourceDataAp;
import com.gamehoo.domain.serv.IBaseService;
import com.gamehoo.domain.vo.manageTools.ResourceData.ResourceDataByDate;
import com.gamehoo.domain.vo.manageTools.ResourceData.ResourceDataByModule;

import java.util.List;

public interface ResourceDataService extends IBaseService {
    public List<ResourceDataByDate> findResourceDataByDate(ResourceDataAp resourceDataAp);

    public List<ResourceDataByModule> findResourceDataByModule(ResourceDataAp resourceDataAp);
}
