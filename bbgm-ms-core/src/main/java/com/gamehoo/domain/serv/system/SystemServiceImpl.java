package com.gamehoo.domain.serv.system;

import com.gamehoo.domain.ap.AccountLogin;
import com.gamehoo.domain.bo.system.SysCode;
import com.gamehoo.domain.bo.system.SysGmUser;
import com.gamehoo.domain.repo.system.AccountDao;
import com.gamehoo.domain.repo.system.SystemDao;
import com.gamehoo.domain.serv.BaseService;
import com.gamehoo.domain.vo.system.MenuRouteVo;
import com.gamehoo.domain.vo.system.ProviderServerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SystemServiceImpl extends BaseService implements SystemService {
    @Autowired
    private SystemDao systemDao;

    public List<SysCode> findAllEnableCode() {
        return systemDao.findAllEnableCode();
    }
}

/*class CodeTable {
    private static CodeTable install;
    private Boolean isWriting = false;
    private List<SysCode> sysCodes;

    private CodeTable() {
    }

    public static CodeTable getInstall() {
        if (install == null) {
            install = new CodeTable();
        }
        return install;
    }

    public List<SysCode> getAllCodes() {
        if (isWriting) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
            }
            return getAllCodes();
        } else {
            if (sysCodes == null) {
                reachCodeList();
            }
            return sysCodes;
        }
    }

    private void reachCodeList() {
        isWriting = true;
        synchronized (sysCodes.toString()) {
            List<SysCode> codeCacheList = systemService.findAllEnableCode();
            //            putChildList(newCodeMap, codeCacheList);
            sysCodes = codeCacheList;
            isWriting = false;
        }
    }

}*/
