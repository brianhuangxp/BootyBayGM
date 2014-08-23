package com.gamehoo.domain.serv.system;

import com.gamehoo.domain.ap.AccountLogin;
import com.gamehoo.domain.ap.UserBaseAp;
import com.gamehoo.domain.bo.system.SysGmUser;
import com.gamehoo.domain.serv.IBaseService;
import com.gamehoo.domain.vo.system.BaseUserSession;
import com.gamehoo.domain.vo.system.MenuRouteVo;
import com.gamehoo.domain.vo.system.ProviderServerVo;

import java.util.List;

public interface AccountService extends IBaseService {
    public SysGmUser findById(Long id);

    public SysGmUser findUserForLogin(AccountLogin searchInfo);

    public List<MenuRouteVo> findMenuList(UserBaseAp userBaseAp);

    public List<ProviderServerVo> findProviderServerVo(Long userId);

    public Integer execDailyProcedure();
}
