package com.gamehoo.domain.repo.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.CommonSearchAp;
import com.gamehoo.domain.repo.ReportSearchJdbcDaoImpl;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.RecordTimeFrequencyVo;
import com.gamehoo.domain.vo.manageTools.logindata.SaveDataVo;
import com.gamehoo.domain.vo.manageTools.logindata.UserTranslateVo;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

@Repository
public class LoginDataJdbcDaoImpl extends ReportSearchJdbcDaoImpl implements LoginDataDao {
    public List<UserTranslateVo> findUserTranslateVo(CommonDateSearchAp commonDateSearchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select RECORD_TIME, sum(import_count) import_count, ");
        sb.append("sum(register_count) register_count, sum(create_count) create_count ");
        sb.append("from (select RECORD_TIME, ");
        sb.append("     case when operation_type = 3 then sum(amount) ");
        sb.append("         else 0 end import_count, ");
        sb.append("     case when operation_type = 1 then sum(amount) ");
        sb.append("         else 0 end register_count, ");
        sb.append("     case when operation_type = 2 then sum(amount) ");
        sb.append("         else 0 end create_count ");
        sb.append("     from gm_rpt_user_translate ");
        sb.append("         where 1=1 ");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("         group by record_time, operation_type ");
        sb.append(") group by record_time");

        Query query = em.createNativeQuery(sb.toString(), UserTranslateVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<UserTranslateVo> voList = query.getResultList();
        return voList;
    }

    public List<SaveDataVo> findSaveDataVo(CommonDateSearchAp commonDateSearchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select save_date, sum(create_amount) create_amount, sum(save_amount) save_amount ");
        sb.append("from gm_rpt_save_data where 1 = 1");
        sb.append(buildSearchSql(commonDateSearchAp, false));
        sb.append("and save_date > 1 ");
        sb.append("group by provider_id, server_id, save_date ");
        Query query = em.createNativeQuery(sb.toString(), SaveDataVo.class);
        setCommonSearchParameter(query, commonDateSearchAp, false);
        List<SaveDataVo> voList = query.getResultList();
        return voList;
    }

    // 等级分布
    public List<FrequencyVo> findPlayerLevel(CommonSearchAp commonSearchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select player_level frequency, count(1) amount from ( ");
        sb.append("select player_id, max(player_level) player_level ");
        sb.append("from gm_tmp_daily where 1 = 1 ");
        sb.append(buildSearchSql(commonSearchAp));
        sb.append("group by player_id ) ");
        sb.append("group by player_level ");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonSearchParameter(query, commonSearchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }


    //每天登录次数
    public List<FrequencyVo> findDailyLoginAmount(CommonDateSearchAp commonDateSearchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select login_freq frequency, sum(player_amount) amount ");
        sb.append(" from gm_rpt_login_daily where 1 = 1 ");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("group by login_freq");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }


    //小时在线峰值
    public List<FrequencyVo> findHourlyOnline(CommonDateSearchAp commonDateSearchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select extract(hour from record_time) frequency, max(hour_online) amount");
        sb.append(" from gm_rpt_online_hourly where 1 = 1 ");
        sb.append(buildSearchSql(commonDateSearchAp, false));
        sb.append("group by extract(hour from record_time)");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonSearchParameter(query, commonDateSearchAp, false);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    //天在线峰值
    public List<RecordTimeFrequencyVo> findDailyOnline(CommonDateSearchAp commonDateSearchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select trunc(record_time) record_time, max(hour_online) amount");
        sb.append(" from gm_rpt_online_hourly where 1 = 1 ");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("group by trunc(record_time)");
        Query query = em.createNativeQuery(sb.toString(), RecordTimeFrequencyVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<RecordTimeFrequencyVo> voList = query.getResultList();
        return voList;
    }

    //活跃用户数
    public List<RecordTimeFrequencyVo> findActiveUserVo(CommonDateSearchAp commonDateSearchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(active_amount) amount ");
        sb.append(" from gm_rpt_active_user where 1 = 1 ");
        sb.append(buildDateSearchSql(commonDateSearchAp));
        sb.append("group by record_time ");
        Query query = em.createNativeQuery(sb.toString(), RecordTimeFrequencyVo.class);
        setCommonDateSearchParameter(query, commonDateSearchAp);
        List<RecordTimeFrequencyVo> voList = query.getResultList();
        return voList;
    }
}
