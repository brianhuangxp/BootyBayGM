package com.gamehoo.domain.repo.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.manageTools.IdInfoAndDateSearchAp;
import com.gamehoo.domain.ap.manageTools.RankAndDateSearchAp;
import com.gamehoo.domain.repo.ReportSearchJdbcDaoImpl;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.RecordTimeFrequencyVo;
import com.gamehoo.domain.vo.manageTools.moduleData.*;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

@Repository
public class ModuleDataJdbcDaoImpl extends ReportSearchJdbcDaoImpl implements ModuleDataDao {

    public List<RecordTimeFrequencyVo> findPurchasePowerByDate(CommonDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(purchase_amount) amount ");
        sb.append(" from gm_rpt_purchase_power_daily where 1 = 1 ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by record_time ");
        Query query = em.createNativeQuery(sb.toString(), RecordTimeFrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<RecordTimeFrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<FrequencyVo> findPurchasePowerByAmount(CommonDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select purchase_amount frequency, count(1) amount ");
        sb.append(" from gm_rpt_purchase_power_daily where 1 = 1 ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by provider_id, server_id, purchase_amount ");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<ZoneChallengeVo> findZoneChallengeVo(CommonDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select zcd_id, victories_amount, mop_amount, record_time ");
        sb.append(" from gm_rpt_zones_challenge_daily where 1 = 1 ");
        sb.append(buildDateSearchSql(searchAp));
        Query query = em.createNativeQuery(sb.toString(), ZoneChallengeVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<ZoneChallengeVo> voList = query.getResultList();
        return voList;
    }

    public List<RecordTimeFrequencyVo> findPurchaseArenaChallengeByDate(CommonDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(amount) amount");
        sb.append(" from gm_rpt_arena_daily where arena_type = '1' ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by record_time");
        Query query = em.createNativeQuery(sb.toString(), RecordTimeFrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<RecordTimeFrequencyVo> voList = query.getResultList();
        return voList;
    }


    ////////////////////////// 竞技场 //////////////////////////////////////
    private List<FrequencyVo> findArenaChallenge(CommonDateSearchAp searchAp, String arenaType) {
        StringBuilder sb = new StringBuilder();
        sb.append("select amount frequency, count(1) amount ");
        sb.append(" from gm_rpt_arena_daily where arena_type = '" + arenaType + "' ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by amount ");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<FrequencyVo> findPurchaseArenaChallengeByAmount(CommonDateSearchAp searchAp) {
        return findArenaChallenge(searchAp, "1");
    }

    public List<FrequencyVo> findArenaSuccessChallenge(CommonDateSearchAp searchAp) {
        return findArenaChallenge(searchAp, "2");
    }

    public List<FrequencyVo> findArenaFallingChallenge(CommonDateSearchAp searchAp) {
        return findArenaChallenge(searchAp, "3");
    }

    public List<FrequencyVo> findArenaConsecutive(CommonDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select consecutive_victories frequency, count(1) amount ");
        sb.append(" from gm_tmp_daily where 1 = 1 and consecutive_victories is not null ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by consecutive_victories ");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    ////////////////////////// 通灵塔 //////////////////////////////////////

    private List<FrequencyVo> findZigChallenge(CommonDateSearchAp searchAp, String arenaType) {
        StringBuilder sb = new StringBuilder();
        sb.append("select frequency, sum(amount) amount ");
        sb.append(" from gm_rpt_zig_daily where zig_type = '" + arenaType + "' ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by frequency ");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<FrequencyVo> findZigFloor(CommonDateSearchAp searchAp) {
        return findZigChallenge(searchAp, "1");
    }

    public List<FrequencyVo> findZigScore(CommonDateSearchAp searchAp) {
        return findZigChallenge(searchAp, "2");
    }

    ////////////////////////// 装备 //////////////////////////////////////
    private List<FrequencyVo> findEquipData(RankAndDateSearchAp searchAp, String arenaType) {
        StringBuilder sb = new StringBuilder();
        sb.append("select frequency, sum(amount) amount ");
        sb.append(" from gm_rpt_equip_daily where equip_type = '" + arenaType + "' ");
        if (searchAp.getRank() != null && !"-1".equals(searchAp.getRank())) {
            sb.append("and frequency = :rank ");
        }
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by frequency ");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        if (searchAp.getRank() != null && !"-1".equals(searchAp.getRank())) {
            query.setParameter("rank", searchAp.getRank());
        }
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<FrequencyVo> findEquipRankAmount(RankAndDateSearchAp searchAp) {
        return findEquipData(searchAp, "1");
    }

    public List<FrequencyVo> findEquipLevel(RankAndDateSearchAp searchAp) {
        return findEquipData(searchAp, "2");
    }

    public List<FrequencyVo> findEquipUpgrade(RankAndDateSearchAp searchAp) {
        return findEquipData(searchAp, "3");
    }

    ////////////////////////// 宝藏 //////////////////////////////////////
    private List<FrequencyVo> findTreasureDaily(CommonDateSearchAp searchAp, String treasureType) {
        StringBuilder sb = new StringBuilder();
        sb.append("select frequency, sum(amount) amount from gm_rpt_treasure_daily ");
        sb.append(" where treasure_type = '" + treasureType + "' ");
        if (searchAp instanceof RankAndDateSearchAp) {
            RankAndDateSearchAp rankSearchAp = (RankAndDateSearchAp) searchAp;
            if (rankSearchAp.getRank() != null && !"-1".equals(rankSearchAp.getRank())) {
                sb.append("and frequency = :rank ");
            }
        }
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by frequency ");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        if (searchAp instanceof RankAndDateSearchAp) {
            RankAndDateSearchAp rankSearchAp = (RankAndDateSearchAp) searchAp;
            if (rankSearchAp.getRank() != null && !"-1".equals(rankSearchAp.getRank())) {
                query.setParameter("rank", rankSearchAp.getRank());
            }
        }
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<AltarAmountVo> findTotalAltarAmount(CommonDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(honor_amount) honor_amount, sum(gold_amount) gold_amount, ");
        sb.append("sum(gem_amount) gem_amount from (select record_time,");
        sb.append("case when alt_type = 1 then amount else 0 end honor_amount, ");
        sb.append("case when alt_type = 2 then amount else 0 end gold_amount, ");
        sb.append("case when alt_type = 3 then amount else 0 end gem_amount ");
        sb.append("from gm_rpt_altar_daily where 1 = 1");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" ) group by record_time");
        Query query = em.createNativeQuery(sb.toString(), AltarAmountVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<AltarAmountVo> voList = query.getResultList();
        return voList;
    }

    public List<AltarAmountVo> findAltarByPlayer(CommonDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(honor_amount) honor_amount, sum(gold_amount) gold_amount, ");
        sb.append("sum(gem_amount) gem_amount from ( ");
        sb.append(" select record_time, provider_id, server_id, player_id, ");
        sb.append("case when sum(honor_amount) > 0 then 1 else 0 end honor_amount, ");
        sb.append("case when sum(gold_amount) > 0 then 1 else 0 end gold_amount, ");
        sb.append("case when sum(gem_amount) > 0 then 1 else 0 end gem_amount from (");
        sb.append("select record_time, provider_id, server_id, player_id,");
        sb.append("case when alt_type = 1 then amount else 0 end honor_amount, ");
        sb.append("case when alt_type = 2 then amount else 0 end gold_amount, ");
        sb.append("case when alt_type = 3 then amount else 0 end gem_amount ");
        sb.append("from gm_rpt_altar_daily where 1 = 1");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" ) group by record_time, provider_id, server_id, player_id) ");
        sb.append("group by record_time");
        Query query = em.createNativeQuery(sb.toString(), AltarAmountVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<AltarAmountVo> voList = query.getResultList();
        return voList;
    }

    //4.5.6.1	掠夺次数
    public List<FrequencyVo> findTreasurePillageAmount(CommonDateSearchAp searchAp) {
        return findTreasureDaily(searchAp, "1");
    }

    // 4.5.6.2	宝藏级别分布
    public List<FrequencyVo> findTreasureLevelByAmount(RankAndDateSearchAp searchAp) {
        return findTreasureDaily(searchAp, "2");
    }

    //4.5.6.3	宝藏级别总数
    public List<TreasureLevelVo> findTreasureLevelByDate(CommonDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(white) white, sum(green) green, sum(blue) blue, ");
        sb.append(" sum(purple) purple, sum(orange) orange ");
        sb.append("from (select record_time, ");
        sb.append("case when rank = 0 then frequency * amount else 0 end white, ");
        sb.append("case when rank = 1 then frequency * amount else 0 end green, ");
        sb.append("case when rank = 2 then frequency * amount else 0 end blue, ");
        sb.append("case when rank = 3 then frequency * amount else 0 end purple, ");
        sb.append("case when rank = 4 then frequency * amount else 0 end orange ");
        sb.append("from gm_rpt_treasure_daily where treasure_type = 2 ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(") group by record_time ");
        Query query = em.createNativeQuery(sb.toString(), TreasureLevelVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<TreasureLevelVo> voList = query.getResultList();
        return voList;
    }

    //4.5.6.4	宝藏次数
    public List<FrequencyVo> findTreasureDigAmount(RankAndDateSearchAp searchAp) {
        return findTreasureDaily(searchAp, "3");
    }

    //4.5.6.5	刷新次数
    public List<FrequencyVo> findTreasureRefreshAmount(RankAndDateSearchAp searchAp) {
        return findTreasureDaily(searchAp, "4");
    }

    //    4.5.6.6	祝福次数
    public List<FrequencyVo> findTreasureBlessAmount(RankAndDateSearchAp searchAp) {
        return findTreasureDaily(searchAp, "5");
    }

    private List<TreasureAllianceAndHorde> findTreasureAllianceHorde(CommonDateSearchAp searchAp, String treasureType) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(alliance_amount) alliance_amount, sum(horde_amount) horde_amount ");
        sb.append("from gm_rpt_treasure_daily where treasure_type = :treasure_type ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by record_time ");
        Query query = em.createNativeQuery(sb.toString(), TreasureAllianceAndHorde.class);
        setCommonDateSearchParameter(query, searchAp);
        query.setParameter("treasure_type", treasureType);
        List<TreasureAllianceAndHorde> voList = query.getResultList();
        return voList;
    }

    //4.5.6.7	阵营胜利时间
    public List<TreasureAllianceAndHorde> findTreasureVictorTime(CommonDateSearchAp searchAp) {
        return findTreasureAllianceHorde(searchAp, "6");
    }

    //4.5.6.8	祝福时间
    public List<TreasureAllianceAndHorde> findTreasureBlessTime(CommonDateSearchAp searchAp) {
        return findTreasureAllianceHorde(searchAp, "7");
    }

    //    4.5.6.9	兑换总次数
    public List<TreasureExchangeVo> findExchangeAmount(CommonDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(amount) exchange_total, sum(exchange_hero) exchange_hero, ");
        sb.append("sum(exchange_equip) exchange_equip, sum(exchange_other) exchange_other ");
        sb.append("from (select record_time, amount, ");
        sb.append("case when exchange_sub_type = 603 then amount else 0 end exchange_hero, ");
        sb.append("case when exchange_sub_type = 601 then amount else 0 end exchange_equip, ");
        sb.append("case when exchange_sub_type != 603 and exchange_sub_type != 601 then amount else 0 end exchange_other ");
        sb.append("from gm_rpt_treasure_daily where treasure_type = '8' ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(") group by record_time");
        Query query = em.createNativeQuery(sb.toString(), TreasureExchangeVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<TreasureExchangeVo> voList = query.getResultList();
        return voList;
    }

    //    4.5.6.10	兑换指定id次数
    public List<RecordTimeFrequencyVo> findTreasureExchangeByOid(IdInfoAndDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(amount) amount from gm_rpt_treasure_daily ");
        sb.append(" where treasure_type = '8' ");
        if (searchAp.getOid() != null && !"-1".equals(searchAp.getOid())) {
            sb.append("and exchange_id = :oid ");
        }
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by record_time ");
        Query query = em.createNativeQuery(sb.toString(), RecordTimeFrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        if (searchAp.getOid() != null && !"-1".equals(searchAp.getOid())) {
            query.setParameter("oid", searchAp.getOid());
        }
        List<RecordTimeFrequencyVo> voList = query.getResultList();
        return voList;
    }

    ////////////////////////// 英雄 //////////////////////////////////////
    public List<RecordTimeFrequencyVo> findHeroDataByRecordDate(CommonDateSearchAp searchAp, String hActType) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(frequency) amount ");
        sb.append(" from gm_rpt_hero_daily where hero_action_type = '" + hActType + "' ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by record_time ");
        Query query = em.createNativeQuery(sb.toString(), RecordTimeFrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<RecordTimeFrequencyVo> voList = query.getResultList();
        return voList;
    }

    public List<FrequencyVo> findHeroDataByAmount(CommonDateSearchAp searchAp, String hActType) {
        return findFrequencyVo(searchAp, "gm_rpt_hero_daily", "frequency", "1",
                "hero_action_type", hActType);
//            StringBuilder sb = new StringBuilder();
//            sb.append("select frequency, count(1) amount ");
//            sb.append(" from gm_rpt_hero_daily where hero_action_type = '" + hActType + "' ");
//            sb.append(buildDateSearchSql(searchAp));
//            sb.append(" group by frequency ");
//            Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
//            setCommonDateSearchParameter(query, searchAp);
//            List<FrequencyVo> voList = query.getResultList();
//            return voList;
    }

    ////////////////////////// 活动 //////////////////////////////////////
    private List<FrequencyVo> findActivityData(CommonDateSearchAp searchAp, String actType) {
        StringBuilder sb = new StringBuilder();
        sb.append("select frequency, sum(amount) amount ");
        sb.append(" from gm_rpt_activity_daily where act_type = '" + actType + "' ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by frequency ");
        Query query = em.createNativeQuery(sb.toString(), FrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<FrequencyVo> voList = query.getResultList();
        return voList;
    }


    public List<FrequencyVo> findActivityFoods(CommonDateSearchAp searchAp) {
        return findActivityData(searchAp, "1");
    }

    public List<FrequencyVo> findActivityGetGoldPay(CommonDateSearchAp searchAp) {
        return findActivityData(searchAp, "2");
    }


    public List<ActivityGoldPayVo> findActivityGoldPayVo(CommonDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select ad_id, player_id, record_time from gm_rpt_activity_daily where act_type = 3 ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" order by player_id, record_time");
        Query query = em.createNativeQuery(sb.toString(), ActivityGoldPayVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<ActivityGoldPayVo> voList = query.getResultList();
        return voList;
    }

    public List<RecordTimeFrequencyVo> findActivityAsSpecial(IdInfoAndDateSearchAp searchAp) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(amount) amount ");
        sb.append(" from gm_rpt_activity_daily where act_type = '4' ");
        if (searchAp.getOid() != null && !"-1".equals(searchAp.getOid())) {
            sb.append("and sid = :oid ");
        }
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by record_time ");
        Query query = em.createNativeQuery(sb.toString(), RecordTimeFrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        if (searchAp.getOid() != null && !"-1".equals(searchAp.getOid())) {
            query.setParameter("oid", searchAp.getOid());
        }
        List<RecordTimeFrequencyVo> voList = query.getResultList();
        return voList;
    }

    ////////////////////////// 其他 //////////////////////////////////////
    private List<RecordTimeFrequencyVo> findOtherData(CommonDateSearchAp searchAp, String otherType) {
        StringBuilder sb = new StringBuilder();
        sb.append("select record_time, sum(amount) amount from gm_rpt_other_daily ");
        sb.append(" where ot_type = '" + otherType + "' ");
        sb.append(buildDateSearchSql(searchAp));
        sb.append(" group by record_time ");
        Query query = em.createNativeQuery(sb.toString(), RecordTimeFrequencyVo.class);
        setCommonDateSearchParameter(query, searchAp);
        List<RecordTimeFrequencyVo> voList = query.getResultList();
        return voList;
    }


    //商店购买次数
    //select record_time, sum(amount) amount from gm_rpt_other_daily where ot_type = 1 group by record_time;
    public List<RecordTimeFrequencyVo> findOtherGoodsBuy(CommonDateSearchAp searchAp) {
        return findRecordTimeFrequencyVo(searchAp, "gm_rpt_other_daily", "ot_type", "1");
    }

    //    4.5.9.2	排名领奖次数
//        select record_time, sum(amount) amount from gm_rpt_other_daily where ot_type = 2 group by record_time;
    public List<RecordTimeFrequencyVo> findOtherGetRankingReward(CommonDateSearchAp searchAp) {
        return findRecordTimeFrequencyVo(searchAp, "gm_rpt_other_daily", "ot_type", "2");
    }

    //    --4.5.9.3	背包格子数
//    select frequency, sum(amount) amount from gm_rpt_other_daily where ot_type = 3 group by frequency;
    public List<FrequencyVo> findOtherPackageAmount(CommonDateSearchAp searchAp) {
        return findFrequencyVo(searchAp, "gm_rpt_other_daily", "ot_type", "3");
    }

}
