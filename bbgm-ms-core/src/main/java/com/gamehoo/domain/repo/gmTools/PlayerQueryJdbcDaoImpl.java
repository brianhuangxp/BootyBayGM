package com.gamehoo.domain.repo.gmTools;

import com.gamehoo.common.exception.BadDataException;
import com.gamehoo.domain.ap.gmTools.PlayerQueryAp;
import com.gamehoo.domain.repo.ReportSearchJdbcDaoImpl;
import com.gamehoo.domain.vo.gmTools.PlayerRecordVo;
import com.gamehoo.tools.ObjectUtils;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

@Repository
public class PlayerQueryJdbcDaoImpl extends ReportSearchJdbcDaoImpl implements PlayerQueryDao {
    private List<PlayerRecordVo> findPlayerRecordVo(PlayerQueryAp searchAp, String tableName) throws BadDataException {
        if(ObjectUtils.isEmpty(searchAp.getPlayerId()) && ObjectUtils.isEmpty(searchAp.getPlayerName())){
            throw new BadDataException("玩家ID，玩家名称需至少输入一项！");
        }
        StringBuilder sb = new StringBuilder();
        sb.append("select id, server_id, provider_id, player_name, amount, action_type, record_time from (");
        sb.append(" select rownum id,g.server_id, g.provider_id, a.player_name, g.amount, g.action_type, g.record_time ");
        sb.append("     from " + tableName + " g, gm_tmp_user_action a");
        sb.append("     where g.action_id = a.action_id ");
        if (!ObjectUtils.isEmpty(searchAp.getPlayerId())) {
            sb.append(" and a.player_id = :player_id ");
        }
        if (!ObjectUtils.isEmpty(searchAp.getPlayerName())) {
            sb.append(" and a.player_name = ;player_name ");
        }
        sb.append(" ) where 1 = 1 ");
        boolean hasProviderId = false;
        boolean hasServerId = false;
        if (searchAp.getProviderId() != -1) {
            hasProviderId = true;
        }
        if (searchAp.getServerId() != -1) {
            hasServerId = true;
        }
        sb.append(buildSearchSql(hasProviderId, hasServerId, false, false));
        Query query = em.createNativeQuery(sb.toString(), PlayerRecordVo.class);
        setCommonSearchParameter(query, searchAp);
        if (!ObjectUtils.isEmpty(searchAp.getPlayerId())) {
            query.setParameter("player_id", searchAp.getPlayerId());
        }
        if (!ObjectUtils.isEmpty(searchAp.getPlayerName())) {
            query.setParameter("player_name", searchAp.getPlayerName());
        }
        List<PlayerRecordVo> voList = query.getResultList();
        return voList;
    }

    public List<PlayerRecordVo> findPlayerGold(PlayerQueryAp searchAp) throws BadDataException{
        return findPlayerRecordVo(searchAp, "gm_tmp_attr_gold");
    }

    public List<PlayerRecordVo> findPlayerGem(PlayerQueryAp searchAp) throws BadDataException{
        return findPlayerRecordVo(searchAp, "gm_rpt_gem_change");
    }
}
