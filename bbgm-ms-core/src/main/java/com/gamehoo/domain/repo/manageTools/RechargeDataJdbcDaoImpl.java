package com.gamehoo.domain.repo.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.manageTools.RechargeRecordAp;
import com.gamehoo.domain.repo.ReportSearchJdbcDaoImpl;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.logindata.APRUVo;
import com.gamehoo.domain.vo.manageTools.logindata.PrepayRateVo;
import com.gamehoo.domain.vo.manageTools.rechargeData.ChargeRecordVo;
import com.gamehoo.domain.vo.manageTools.rechargeData.PlayerPrivilegeVo;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.*;

@Repository
public class RechargeDataJdbcDaoImpl extends ReportSearchJdbcDaoImpl implements RechargeDataDao {

    public List<FrequencyVo> findTotalRecharge(CommonDateSearchAp commonDateSearchAp){
        StringBuilder sb = new StringBuilder();
        sb.append("select cash frequency, count(1) amount ");
        sb.append("from (select player_id, sum(prepay_cash) cash ");
        sb.append("     from gm_rpt_prepay where 1=1 ");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("group by player_id) group by cash") ;
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<FrequencyVo> findSingleRecharge(CommonDateSearchAp commonDateSearchAp){
        StringBuilder sb = new StringBuilder();
        sb.append("select grp.prepay_cash frequency, count(1) amount ");
        sb.append("from gm_rpt_prepay grp where 1 = 1 ");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("group by grp.prepay_cash") ;
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<FrequencyVo> findFirstlyChargeAndLevel(CommonDateSearchAp commonDateSearchAp){
        StringBuilder sb = new StringBuilder();
        sb.append("select player_level frequency, count(1) amount ");
        sb.append("from gm_rpt_prepay grp where first_charge = '1' ");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("group by player_level") ;
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<FrequencyVo> findFirstlyChargeAndRelativeDate(CommonDateSearchAp commonDateSearchAp){
        StringBuilder sb = new StringBuilder();
        sb.append("select g.relative_date frequency, count(1) amount ");
        sb.append("from gm_rpt_prepay g where g.first_charge = '1' ");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("group by g.relative_date") ;
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<FrequencyVo> findFirstlyChargeAndAmount(CommonDateSearchAp commonDateSearchAp){
        StringBuilder sb = new StringBuilder();
        sb.append("select prepay_num frequency, count(1) amount from( ");
        sb.append("  select count(1) prepay_num ");
        sb.append("     from gm_rpt_prepay g where 1 = 1 ");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("  group by g.player_id) t ") ;
        sb.append("group by t.prepay_num") ;
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<PrepayRateVo> findPrepayRate(CommonDateSearchAp commonDateSearchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select rownum id, re.* from ( ");
        sb.append("select create_date, prepay_flag, count(1) player_num   from( ");
        sb.append("select u.create_date, u.player_id, ");
        sb.append("case when max(p.prepay_cash) > 0 then 1 else -1 end prepay_flag ");
        sb.append("from gm_rpt_prepay p, ( ");
        sb.append("select trunc(record_time) create_date, player_id from gm_tmp_role where 1 = 1 ");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("and operation_type = 2) u where p.player_id(+) = u.player_id ");
        sb.append("group by u.create_date, u.player_id) ");
        sb.append("group by create_date, prepay_flag ) re");
        Query query = em.createNativeQuery(sb.toString(), PrepayRateVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<PrepayRateVo> voList = query.getResultList();
        return voList;
    }

    public List<APRUVo> findAPRU(CommonDateSearchAp commonDateSearchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_date, sum(prepay_cash) total_prepay, count(1) prepay_count ");
        sb.append("from (select trunc(record_time) record_date, ");
        sb.append("player_id,sum(prepay_cash) prepay_cash from gm_rpt_prepay where 1 = 1");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("group by trunc(record_time), player_id)");
        sb.append("group by record_date");
        Query query = em.createNativeQuery(sb.toString(), APRUVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<APRUVo> voList = query.getResultList();
        return voList;
    }

    public List<ChargeRecordVo> findChargeRecords(RechargeRecordAp rechargeRecordAp){
        StringBuilder sb = new StringBuilder();
        sb.append("select rownum, player_name,server_id,player_level,record_time,prepay_cash ");
        sb.append("  from gm_rpt_prepay where 1 = 1 ");
        sb.append(buildDateSearchSql(rechargeRecordAp));
        int index = 0;
        if(!this.isEmpty(rechargeRecordAp.getPlayerId())){
            sb.append(" and player_id = ?" + (++index));
        }
        if(!this.isEmpty(rechargeRecordAp.getPlayerName())){
            sb.append(" and player_name like ?" + (++index));
        }
        Query query = em.createNativeQuery(sb.toString(), ChargeRecordVo.class);
        setCommonDateSearchParameter(query, rechargeRecordAp);
        index = 0;
        if(!this.isEmpty(rechargeRecordAp.getPlayerId())){
            query.setParameter(++index, rechargeRecordAp.getPlayerId());
        }
        if(!this.isEmpty(rechargeRecordAp.getPlayerName())){
            query.setParameter(++index, "%" + rechargeRecordAp.getPlayerName() + "%");
        }
        List<ChargeRecordVo> voList = query.getResultList();
        return voList;
    }

    public List<PlayerPrivilegeVo> findPlayerPrivilegeVo(CommonDateSearchAp searchAp){
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(weekCard) week_Card, sum(monthCard) month_Card, sum(yearCard) year_Card from (");
        sb.append("  select trunc(record_time) record_time ,player_id,");
        sb.append("     case when prepay_type = 6 then 1 else 0 end weekCard,");
        sb.append("     case when prepay_type = 7 then 1 else 0 end monthCard,");
        sb.append("     case when prepay_type = 8 then 1 else 0 end yearCard");
        sb.append("  from gm_rpt_prepay where prepay_type >= 6 and prepay_type <= 8 ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(") group by record_time ");
        Query query = em.createNativeQuery(sb.toString(), PlayerPrivilegeVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<PlayerPrivilegeVo> voList = query.getResultList();
        return voList;
    }



}
