package com.gamehoo.domain.repo.manageTools;

import com.gamehoo.domain.ap.manageTools.ResourceDataAp;
import com.gamehoo.domain.vo.manageTools.ResourceData.ResourceDataByDate;
import com.gamehoo.domain.vo.manageTools.ResourceData.ResourceDataByModule;

import java.util.List;

public interface ResourceDataDao {
    public List<ResourceDataByDate> findResourceDataByDate(ResourceDataAp resourceDataAp);

    public List<ResourceDataByModule> findResourceDataByModule(ResourceDataAp resourceDataAp);
}
