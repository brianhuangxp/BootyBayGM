package com.gamehoo.domain.serv.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.manageTools.IdInfoAndDateSearchAp;
import com.gamehoo.domain.ap.manageTools.RankAndDateSearchAp;
import com.gamehoo.domain.repo.ReportSearchJdbcDaoImpl;
import com.gamehoo.domain.repo.manageTools.ModuleDataDao;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.RecordTimeFrequencyVo;
import com.gamehoo.domain.vo.manageTools.moduleData.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public class ModuleDataServiceImpl extends ReportSearchJdbcDaoImpl implements ModuleDataService {
    @Autowired
    private ModuleDataDao moduleDataDao;

    public List<RecordTimeFrequencyVo> findPurchasePowerByDate(CommonDateSearchAp searchAp) {
        return moduleDataDao.findPurchasePowerByDate(searchAp);
    }

    public List<FrequencyVo> findPurchasePowerByAmount(CommonDateSearchAp searchAp) {
        return moduleDataDao.findPurchasePowerByAmount(searchAp);
    }

    public List<ZoneChallengeVo> findZoneChallengeVo(CommonDateSearchAp searchAp) {
        return moduleDataDao.findZoneChallengeVo(searchAp);
    }

    public List<RecordTimeFrequencyVo> findPurchaseArenaChallengeByDate(CommonDateSearchAp searchAp) {
        return moduleDataDao.findPurchaseArenaChallengeByDate(searchAp);
    }

    public List<FrequencyVo> findPurchaseArenaChallengeByAmount(CommonDateSearchAp searchAp) {
        return moduleDataDao.findPurchaseArenaChallengeByAmount(searchAp);
    }

    public List<FrequencyVo> findArenaSuccessChallenge(CommonDateSearchAp searchAp) {
        return moduleDataDao.findArenaSuccessChallenge(searchAp);
    }

    public List<FrequencyVo> findArenaConsecutive(CommonDateSearchAp searchAp) {
        return moduleDataDao.findArenaConsecutive(searchAp);
    }

    public List<FrequencyVo> findArenaFallingChallenge(CommonDateSearchAp searchAp) {
        return moduleDataDao.findArenaFallingChallenge(searchAp);
    }

    public List<FrequencyVo> findZigFloor(CommonDateSearchAp searchAp) {
        return moduleDataDao.findZigFloor(searchAp);
    }

    public List<FrequencyVo> findZigScore(CommonDateSearchAp searchAp) {
        return moduleDataDao.findZigScore(searchAp);
    }

    public List<FrequencyVo> findEquipRankAmount(RankAndDateSearchAp searchAp) {
        return moduleDataDao.findEquipRankAmount(searchAp);
    }

    public List<FrequencyVo> findEquipLevel(RankAndDateSearchAp searchAp) {
        return moduleDataDao.findEquipLevel(searchAp);
    }

    public List<FrequencyVo> findEquipUpgrade(RankAndDateSearchAp searchAp) {
        return moduleDataDao.findEquipUpgrade(searchAp);
    }

    public List<AltarAmountVo> findTotalAltarAmount(CommonDateSearchAp searchAp) {
        return moduleDataDao.findTotalAltarAmount(searchAp);
    }

    public List<AltarAmountVo> findAltarByPlayer(CommonDateSearchAp searchAp) {
        return moduleDataDao.findAltarByPlayer(searchAp);
    }

    public List<FrequencyVo> findTreasurePillageAmount(CommonDateSearchAp searchAp) {
        return moduleDataDao.findTreasurePillageAmount(searchAp);
    }

    public List<FrequencyVo> findTreasureLevelByAmount(RankAndDateSearchAp searchAp) {
        return moduleDataDao.findTreasureLevelByAmount(searchAp);
    }

    public List<TreasureLevelVo> findTreasureLevelByDate(CommonDateSearchAp searchAp) {
        return moduleDataDao.findTreasureLevelByDate(searchAp);
    }

    public List<FrequencyVo> findTreasureDigAmount(RankAndDateSearchAp searchAp) {
        return moduleDataDao.findTreasureDigAmount(searchAp);
    }

    public List<FrequencyVo> findTreasureRefreshAmount(RankAndDateSearchAp searchAp) {
        return moduleDataDao.findTreasureRefreshAmount(searchAp);
    }

    public List<FrequencyVo> findTreasureBlessAmount(RankAndDateSearchAp searchAp) {
        return moduleDataDao.findTreasureBlessAmount(searchAp);
    }

    public List<TreasureAllianceAndHorde> findTreasureVictorTime(CommonDateSearchAp searchAp) {
        return moduleDataDao.findTreasureVictorTime(searchAp);
    }

    public List<TreasureAllianceAndHorde> findTreasureBlessTime(CommonDateSearchAp searchAp) {
        return moduleDataDao.findTreasureBlessTime(searchAp);
    }

    public List<TreasureExchangeVo> findExchangeAmount(CommonDateSearchAp searchAp) {
        return moduleDataDao.findExchangeAmount(searchAp);
    }

    public List<RecordTimeFrequencyVo> findTreasureExchangeByOid(IdInfoAndDateSearchAp searchAp) {
        return moduleDataDao.findTreasureExchangeByOid(searchAp);
    }

    public List<RecordTimeFrequencyVo> findHeroUpgradeRank(CommonDateSearchAp searchAp){
        return moduleDataDao.findHeroDataByRecordDate(searchAp, "1");
    }

    public List<RecordTimeFrequencyVo> findHeroHoneByDate(CommonDateSearchAp searchAp){
        return moduleDataDao.findHeroDataByRecordDate(searchAp, "2");
    }

    public List<FrequencyVo> findHeroHoneByAmount(CommonDateSearchAp searchAp){
        return moduleDataDao.findHeroDataByAmount(searchAp, "2");
    }

    public List<RecordTimeFrequencyVo> findHeroTraining(CommonDateSearchAp searchAp){
        return moduleDataDao.findHeroDataByRecordDate(searchAp, "3");
    }

    private Map<Long, SortedSet<Long>> activityGoldPayByPlayer(List<ActivityGoldPayVo> dataList) {
        Map<Long, SortedSet<Long>> playerMap = new HashMap<Long, SortedSet<Long>>();
        int interval = 24 * 3600 * 1000;
        for (ActivityGoldPayVo vo : dataList) {
            SortedSet<Long> dateSet = new TreeSet<Long>();
            if (playerMap.get(vo.getPlayerId()) != null) {
                dateSet = playerMap.get(vo.getPlayerId());
            }
            dateSet.add(vo.getRecord_time().getTime() / interval);
            playerMap.put(vo.getPlayerId(), dateSet);
        }
        return playerMap;
    }

    private void activityGoldPayCount(Map<Long, Long> countMap, SortedSet<Long> dateSet) {
        Map<Long, Long> currentMap = new HashMap<Long, Long>();
        Long[] dateArray = dateSet.toArray(new Long[dateSet.size()]);
        if (dateArray.length == 1) {
            currentMap.put(1l, 1l);
        } else {
            long count = 1;
            boolean hasPut = false;
            for (int i = 1; i < dateArray.length; i++) {
                if (dateArray[i] - dateArray[i - 1] == 1) {
                    count++;
                    hasPut = false;
                } else {
                    Long v = currentMap.get(count);
                    v = (v == null ? 0 : v);
                    currentMap.put(count, ++v);
                    hasPut = true;
                    count = 1;
                }
            }
            if (!hasPut || count == 1) {
                Long v = currentMap.get(count);
                v = (v == null ? 0 : v);
                currentMap.put(count, ++v);
            }
        }

        for (Long c : currentMap.keySet()) {
            Long v = countMap.get(c);
            v = (v == null ? currentMap.get(c) : v + currentMap.get(c));
            countMap.put(c, v);
        }
    }

    public List<FrequencyVo> findActivityFoods(CommonDateSearchAp searchAp) {
        return moduleDataDao.findActivityFoods(searchAp);
    }

    public List<FrequencyVo> findActivityGetGoldPay(CommonDateSearchAp searchAp) {
        return moduleDataDao.findActivityGetGoldPay(searchAp);
    }

    public List<FrequencyVo> findActivityContinuousGoldPay(CommonDateSearchAp searchAp) {
        List<ActivityGoldPayVo> dataList = moduleDataDao.findActivityGoldPayVo(searchAp);
        List<FrequencyVo> resultList = new ArrayList<FrequencyVo>();
        if (dataList == null) {
            System.out.println("not result");
            return resultList;
        }
        Map<Long, SortedSet<Long>> playerMap = activityGoldPayByPlayer(dataList);
        Map<Long, Long> resMap = new HashMap<Long, Long>();
        for (SortedSet<Long> dateSet : playerMap.values()) {
            activityGoldPayCount(resMap, dateSet);
        }
        for (Long f : resMap.keySet()) {
            resultList.add(new FrequencyVo(f, resMap.get(f)));
        }
        return resultList;
    }

    public List<RecordTimeFrequencyVo> findActivityAsSpecial(IdInfoAndDateSearchAp searchAp) {
        return moduleDataDao.findActivityAsSpecial(searchAp);
    }

    public List<RecordTimeFrequencyVo> findOtherGoodsBuy(CommonDateSearchAp searchAp) {
        return moduleDataDao.findOtherGoodsBuy(searchAp);
    }

    public List<RecordTimeFrequencyVo> findOtherGetRankingReward(CommonDateSearchAp searchAp) {
        return moduleDataDao.findOtherGetRankingReward(searchAp);
    }

    public List<FrequencyVo> findOtherPackageAmount(CommonDateSearchAp searchAp) {
        return moduleDataDao.findOtherPackageAmount(searchAp);
    }
}
