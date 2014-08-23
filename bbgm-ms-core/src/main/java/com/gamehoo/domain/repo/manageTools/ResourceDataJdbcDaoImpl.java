package com.gamehoo.domain.repo.manageTools;

import com.gamehoo.domain.ap.manageTools.ResourceDataAp;
import com.gamehoo.domain.repo.ReportSearchJdbcDaoImpl;
import com.gamehoo.domain.vo.manageTools.ResourceData.ResourceDataByDate;
import com.gamehoo.domain.vo.manageTools.ResourceData.ResourceDataByModule;
import com.gamehoo.tools.ObjectUtils;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

@Repository
public class ResourceDataJdbcDaoImpl extends ReportSearchJdbcDaoImpl implements ResourceDataDao {

    public List<ResourceDataByDate> findResourceDataByDate(ResourceDataAp resourceDataAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select rownum id, r.* from(");
        sb.append("     select record_time, detail_type, sum(earning) earning, sum(expense) expense ");
        sb.append("     from gm_rpt_consume_daily where 1 = 1");
        sb.append(buildDateSearchSql(resourceDataAp));
        if (!ObjectUtils.isEmpty(resourceDataAp.getResourceType())) {
            sb.append(" and detail_type = :detailType ");
        }
        if (!ObjectUtils.isEmpty(resourceDataAp.getRank()) && !"-1".equals(resourceDataAp.getRank())) {
            sb.append(" and rank = :rank ");
        }
        if (!ObjectUtils.isEmpty(resourceDataAp.getOid()) && !"-1".equals(resourceDataAp.getOid())) {
            sb.append(" and oid = :oid ");
        }
        sb.append("group by detail_type, record_time) r");
        Query query = em.createNativeQuery(sb.toString(), ResourceDataByDate.class);
        setCommonDateSearchParameter(query, resourceDataAp);
        if (!ObjectUtils.isEmpty(resourceDataAp.getResourceType())) {
            query.setParameter("detailType", resourceDataAp.getResourceType());
        }
        if (!ObjectUtils.isEmpty(resourceDataAp.getRank()) && !"-1".equals(resourceDataAp.getRank())) {
            query.setParameter("rank", resourceDataAp.getRank());
        }
        if (!ObjectUtils.isEmpty(resourceDataAp.getOid()) && !"-1".equals(resourceDataAp.getOid())) {
            query.setParameter("oid", resourceDataAp.getOid());
        }
        List<ResourceDataByDate> voList = query.getResultList();
        return voList;
    }

    public List<ResourceDataByModule> findResourceDataByModule(ResourceDataAp resourceDataAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select rownum id, r.* from(");
        sb.append("     select detail_type, action_type, sum(earning) earning, sum(expense) expense ");
        sb.append("     from gm_rpt_consume_daily where 1 = 1");
        sb.append(buildDateSearchSql(resourceDataAp));
        if (!ObjectUtils.isEmpty(resourceDataAp.getResourceType())) {
           sb.append(" and detail_type = :detailType ");
        }
        if (!ObjectUtils.isEmpty(resourceDataAp.getRank()) && !"-1".equals(resourceDataAp.getRank())) {
            sb.append(" and rank = :rank ");
        }
        if (!ObjectUtils.isEmpty(resourceDataAp.getOid()) && !"-1".equals(resourceDataAp.getOid())) {
            sb.append(" and oid = :oid ");
        }
        sb.append("group by detail_type, action_type) r");
        Query query = em.createNativeQuery(sb.toString(), ResourceDataByModule.class);
        setCommonDateSearchParameter(query, resourceDataAp);
        if (!ObjectUtils.isEmpty(resourceDataAp.getResourceType())) {
            query.setParameter("detailType", resourceDataAp.getResourceType());
        }
        if (!ObjectUtils.isEmpty(resourceDataAp.getRank()) && !"-1".equals(resourceDataAp.getRank())) {
            query.setParameter("rank", resourceDataAp.getRank());
        }
        if (!ObjectUtils.isEmpty(resourceDataAp.getOid()) && !"-1".equals(resourceDataAp.getOid())) {
            query.setParameter("oid", resourceDataAp.getOid());
        }
        List<ResourceDataByModule> voList = query.getResultList();
        return voList;
    }

}
