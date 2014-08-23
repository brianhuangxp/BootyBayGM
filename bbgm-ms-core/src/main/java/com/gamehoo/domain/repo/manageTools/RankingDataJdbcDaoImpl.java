package com.gamehoo.domain.repo.manageTools;

import com.gamehoo.domain.ap.CommonSearchAp;
import com.gamehoo.domain.repo.ReportSearchJdbcDaoImpl;
import com.gamehoo.domain.vo.manageTools.rankingData.RankingVo;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

@Repository
public class RankingDataJdbcDaoImpl extends ReportSearchJdbcDaoImpl implements RankingDataDao {

    public List<RankingVo> findRankingDataVo(CommonSearchAp commonSearchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT d.server_id, d.player_id, d.player_name, d.player_prepay, d.player_level, ");
        sb.append("d.player_exp, d.player_gem, d.player_gold, d.consecutive_victories, d.player_game_point, ");
        sb.append("d.zig_floor, d.zig_score, d.Victory_score from ( ");
        sb.append("  select id, ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY record_time desc) AS order_id ");
        sb.append("from gm_tmp_daily) f, gm_tmp_daily d ");
        sb.append("where f.order_id = 1 and f.id = d.id ");
        sb.append(buildSearchSql(commonSearchAp));
        Query query = em.createNativeQuery(sb.toString(), RankingVo.class);
        setCommonSearchParameter(query, commonSearchAp);
        List<RankingVo> voList = query.getResultList();
        return voList;
    }
}
