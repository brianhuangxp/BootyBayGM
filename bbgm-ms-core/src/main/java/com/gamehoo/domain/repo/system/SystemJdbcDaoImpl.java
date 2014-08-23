package com.gamehoo.domain.repo.system;

import com.gamehoo.domain.bo.system.SysCode;
import com.gamehoo.domain.bo.system.SysGmUser;
import com.gamehoo.domain.repo.BaseJdbcDaoImpl;
import com.gamehoo.domain.vo.system.MenuRouteVo;
import com.gamehoo.domain.vo.system.ProviderServerVo;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

@Repository("systemDao")
public class SystemJdbcDaoImpl extends BaseJdbcDaoImpl implements SystemDao {

    public List<SysCode> findAllEnableCode() {
        Query query = em.createNamedQuery("SysCode.findAllEnableCode");
        return query.getResultList();
    }
}
