package com.gamehoo.domain.repo.system;

import com.gamehoo.domain.bo.system.SysGmUser;
import com.gamehoo.domain.repo.BaseJdbcDaoImpl;
import com.gamehoo.domain.vo.system.MenuRouteVo;
import com.gamehoo.domain.vo.system.ProviderServerVo;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

@Repository
public class AccountJdbcDaoImpl extends BaseJdbcDaoImpl implements AccountDao {

    public SysGmUser findById(Long id) {
        return em.find(SysGmUser.class, id);
    }


    public SysGmUser findUserForLogin(String name, String pwd) {
        //select * from sys_gm_user where USER_NAME = ?1 and USER_PWD = ?2
        String hql = "select u From SysGmUser u where u.userName = ?1 and u.userPwd = ?2 and u.disable <> '1'";
        Query query = em.createQuery(hql, SysGmUser.class);

//        Query query = em.createNamedQuery("SysGmUser.findUserForLogin", SysGmUser.class);
        query.setParameter(1, name);
        query.setParameter(2, pwd);
        List resultList = query.getResultList();
        if (resultList != null && resultList.size() > 0) {
            SysGmUser sysGmUser = (SysGmUser) resultList.get(0);
            return sysGmUser;
        }
        return null;
    }

    public List<MenuRouteVo> findMenuList(Long userId){
        Query query = em.createNamedQuery("SysGmUser.findMenuList");
        query.setParameter(1, userId);
        return query.getResultList();
    }

    public List<ProviderServerVo> findProviderServerVo(Long userId){
        Query query = em.createNamedQuery("SysGmUser.findProviderServerVo");
        query.setParameter(1, userId);
        return query.getResultList();
    }

    public Integer execDailyProcedure(){
        Query query = em.createNativeQuery("{call bbgm_package.main_proce(sysdate)}");
        return query.executeUpdate();
    }
}
