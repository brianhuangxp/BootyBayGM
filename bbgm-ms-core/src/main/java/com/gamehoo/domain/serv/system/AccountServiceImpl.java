package com.gamehoo.domain.serv.system;

import com.gamehoo.domain.ap.AccountLogin;
import com.gamehoo.domain.ap.UserBaseAp;
import com.gamehoo.domain.bo.system.SysGmUser;
import com.gamehoo.domain.repo.system.AccountDao;
import com.gamehoo.domain.serv.BTService;
import com.gamehoo.domain.vo.system.BaseUserSession;
import com.gamehoo.domain.vo.system.MenuRouteVo;
import com.gamehoo.domain.vo.system.ProviderServerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AccountServiceImpl extends BTService implements AccountService {
    @Autowired
    private AccountDao accountDao;

    public SysGmUser findById(Long id) {

        //TODO some issue.

//		CriteriaBuilder cb = em.getCriteriaBuilder();
////		CriteriaQuery<Member> cq = cb.createQuery(Member.class);
//		CriteriaQuery<Member> cq = cb.createQuery(Member.class);
//		Root<Member> member = cq.from(Member.class);
////		cq.select(member).where(cb.notEqual(member.get("email"), ""));
//
//		PageInfo p = queryWithPage(cq, new PageInfo(2));
//		List<Member> rs = (List<Member>) p.getDataList();
//		for (Member m : rs) {
//			System.out.println(m.getEmail());
//		}
        SysGmUser account2 = accountDao.findById(id);
//        accountDao.
//        List al = accountDao.sqlQueryForList("select * from sys_gm_role");
//        System.out.println(al.size());
//        System.out.println(account2.getSysGmRoles().size());
        return account2;
    }

    public SysGmUser findUserForLogin(AccountLogin searchInfo) {
        logger.debug("login user:" + searchInfo.getUserName());
        return accountDao.findUserForLogin(searchInfo.getUserName(), searchInfo.getUserPwd());
    }

    public List<MenuRouteVo> findMenuList(UserBaseAp userBaseAp){
        return accountDao.findMenuList(userBaseAp.getUserId());
    }

    public List<ProviderServerVo> findProviderServerVo(Long userId){
        return accountDao.findProviderServerVo(userId);
    }

    public Integer execDailyProcedure(){
        return accountDao.execDailyProcedure();
    }
}
