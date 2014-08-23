package com.gamehoo.domain.serv.manageTools;

import com.gamehoo.domain.ap.manageTools.ResourceDataAp;
import com.gamehoo.domain.repo.manageTools.ResourceDataDao;
import com.gamehoo.domain.serv.BaseService;
import com.gamehoo.domain.vo.manageTools.ResourceData.ResourceDataByDate;
import com.gamehoo.domain.vo.manageTools.ResourceData.ResourceDataByModule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public class ResourceDataServiceImpl extends BaseService implements ResourceDataService {
    @Autowired
    private ResourceDataDao resourceDataDao;

    public List<ResourceDataByDate> findResourceDataByDate(ResourceDataAp resourceDataAp) {
        return resourceDataDao.findResourceDataByDate(resourceDataAp);
    }

    public List<ResourceDataByModule> findResourceDataByModule(ResourceDataAp resourceDataAp) {
        return resourceDataDao.findResourceDataByModule(resourceDataAp);
    }
}
