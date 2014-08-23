package com.gamehoo.domain.repo.system;

import com.gamehoo.domain.bo.system.SysGmUser;
import com.gamehoo.domain.repo.BaseJdbcDAO;
import com.gamehoo.domain.vo.system.MenuRouteVo;
import com.gamehoo.domain.vo.system.ProviderServerVo;

import java.util.List;


public interface AccountDao extends BaseJdbcDAO
{
    public SysGmUser findById(Long id);

    public SysGmUser findUserForLogin(String name, String pwd);

    public List<MenuRouteVo> findMenuList(Long userId);

    public List<ProviderServerVo> findProviderServerVo(Long userId);

    public Integer execDailyProcedure();
}
