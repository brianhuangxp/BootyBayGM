package com.gamehoo.domain.repo;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.CommonSearchAp;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.RecordTimeFrequencyVo;
import com.gamehoo.tools.ObjectUtils;

import javax.persistence.Query;
import java.util.List;

public class ReportSearchJdbcDaoImpl extends BaseJdbcDaoImpl {
    public String buildSearchSql(final CommonSearchAp searchAp) {
        boolean hasProviderId = false;
        boolean hasServerId = false;
        if (searchAp.getProviderId() != -1) {
            hasProviderId = true;
        }
        if (searchAp.getServerId() != -1) {
            hasServerId = true;
        }
        return buildSearchSql(hasProviderId, hasServerId, false, false);
    }

    public String buildDateSearchSql(final CommonDateSearchAp searchAp) {
        return buildSearchSql(searchAp, true);
    }

    public String buildSearchSql(final CommonDateSearchAp searchAp, boolean hasEndDate) {
        boolean hasProviderId = false;
        boolean hasServerId = false;
        if (searchAp.getProviderId() != -1) {
            hasProviderId = true;
        }
        if (searchAp.getServerId() != -1) {
            hasServerId = true;
        }
        return buildSearchSql(hasProviderId, hasServerId, true, hasEndDate);
    }


    public String buildSearchSql(boolean hasProviderId, boolean hasServerId, boolean hasStartDate, boolean hasEndDate) {
        StringBuilder sb = new StringBuilder();
        sb.append(" and server_id in (select rs.server_id ");
        sb.append("     from sys_gm_provider_re_server rs, sys_gm_user_re_role re, sys_gm_role ro");
        sb.append("     where ro.role_type = '1' and re.role_id = ro.role_id ");
        sb.append("     and rs.provider_id = ro.provider_id ");
        sb.append("     and re.user_id = :userId ");
        if (hasProviderId) {
            sb.append("  and rs.provider_id = :providerId ");
        }
        if (hasServerId) {
            sb.append("  and rs.server_id = :serverId ");
        }
        sb.append(") and provider_id in (select provider_id ");
        sb.append(" from sys_gm_user_re_role re, sys_gm_role ro ");
        sb.append(" where role_type = 1 and re.role_id = ro.role_id ");
        sb.append("     and re.user_id = :userId ");
        if (hasProviderId) {
            sb.append("  and provider_id = :providerId ");
        }
        sb.append(") ");

        if (hasStartDate && hasEndDate) {
            sb.append(" and record_time between to_date(:startDate,'yyyy/mm/dd') ");
            sb.append(" and to_date(:endDate,'yyyy/mm/dd') ");
        } else if (hasStartDate) {
            sb.append(" and trunc(record_time) = to_date(:startDate,'yyyy/mm/dd') ");
        }
        return sb.toString();
    }

    public void setCommonSearchParameter(final Query query, CommonSearchAp searchAp) {
        setCommonSearchParameter(query, searchAp.getUserId(), searchAp.getProviderId(), searchAp.getServerId(), null, null);
    }

    public void setCommonDateSearchParameter(final Query query, CommonDateSearchAp commonDateSearchAp) {
        setCommonSearchParameter(query, commonDateSearchAp, true);
    }

    public void setCommonSearchParameter(final Query query, CommonDateSearchAp commonDateSearchAp, boolean hasEndDate) {
        setCommonSearchParameter(query, commonDateSearchAp.getUserId(), commonDateSearchAp.getProviderId(), commonDateSearchAp.getServerId(),
                commonDateSearchAp.getStartDate(), hasEndDate ? commonDateSearchAp.getEndDate() : null);
    }

    public void setCommonSearchParameter(final Query query, Long userId, Integer providerId, Integer serverId, String startDate, String endDate) {
        if (providerId != -1) {
            query.setParameter("providerId", providerId);
        }
        if (serverId != -1) {
            query.setParameter("serverId", serverId);
        }
        query.setParameter("userId", userId);
        if (!ObjectUtils.isEmpty(startDate)) {
            query.setParameter("startDate", startDate);
        }
        if (!ObjectUtils.isEmpty(endDate)) {
            query.setParameter("endDate", endDate);
        }
    }

    public List<FrequencyVo> findFrequencyVo(CommonSearchAp searchAp, String tableName,
                                             String frequencyColumnName, String amountColumnName,
                                             String typeName, String typeValue) {
        CommonDateSearchAp sap = null;
        StringBuilder sb = new StringBuilder();
        sb.append("select " + (!ObjectUtils.isEmpty(frequencyColumnName) ? frequencyColumnName : "") + " frequency, ");
        sb.append("sum(" + (!ObjectUtils.isEmpty(amountColumnName) ? amountColumnName : "amount") + ") amount from " + tableName);
        sb.append(" where " + typeName + " = '" + typeValue + "' ");
        if (searchAp instanceof CommonDateSearchAp) {
            sap = (CommonDateSearchAp) searchAp;
            sb.append(buildDateSearchSql(sap));
        }
        sb.append(" group by frequency ");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        if (searchAp instanceof CommonDateSearchAp) {
            setCommonDateSearchParameter(query, sap);
        }
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<FrequencyVo> findFrequencyVo(CommonSearchAp searchAp, String tableName,
                                             String typeName, String typeValue) {
        return findFrequencyVo(searchAp, tableName, null, null, typeName, typeValue);
    }

    public List<RecordTimeFrequencyVo> findRecordTimeFrequencyVo(CommonSearchAp searchAp, String tableName,
                                                                 String recordTimeColumnName, String amountColumnName,
                                                                 String typeName, String typeValue) {
        CommonDateSearchAp sap = null;
        StringBuilder sb = new StringBuilder();
        sb.append("select " + (!ObjectUtils.isEmpty(recordTimeColumnName) ? recordTimeColumnName : "") + " record_time, ");
        sb.append("sum(" + (!ObjectUtils.isEmpty(amountColumnName) ? amountColumnName : "amount") + ") amount from " + tableName);
        sb.append(" where " + typeName + " = '" + typeValue + "' ");
        if (searchAp instanceof CommonDateSearchAp) {
            sap = (CommonDateSearchAp) searchAp;
            sb.append(buildDateSearchSql(sap));
        }
        sb.append(" group by record_time ");
        Query query = em.createNativeQuery(sb.toString(), RecordTimeFrequencyVo.class);
        if (searchAp instanceof CommonDateSearchAp) {
            setCommonDateSearchParameter(query, sap);
        }
        List<RecordTimeFrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<RecordTimeFrequencyVo> findRecordTimeFrequencyVo(CommonSearchAp searchAp, String tableName,
                                                                 String typeName, String typeValue) {
        return findRecordTimeFrequencyVo(searchAp, tableName, null, null, typeName, typeValue);
    }
}
