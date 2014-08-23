package com.gamehoo.domain.serv.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.manageTools.IdInfoAndDateSearchAp;
import com.gamehoo.domain.ap.manageTools.RankAndDateSearchAp;
import com.gamehoo.domain.serv.IBaseService;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.RecordTimeFrequencyVo;
import com.gamehoo.domain.vo.manageTools.moduleData.*;

import java.util.List;

public interface ModuleDataService extends IBaseService {
    public List<RecordTimeFrequencyVo> findPurchasePowerByDate(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findPurchasePowerByAmount(CommonDateSearchAp searchAp);

    public List<ZoneChallengeVo> findZoneChallengeVo(CommonDateSearchAp searchAp);

    public List<RecordTimeFrequencyVo> findPurchaseArenaChallengeByDate(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findPurchaseArenaChallengeByAmount(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findArenaSuccessChallenge(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findArenaConsecutive(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findArenaFallingChallenge(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findZigFloor(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findZigScore(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findEquipRankAmount(RankAndDateSearchAp searchAp);

    public List<FrequencyVo> findEquipLevel(RankAndDateSearchAp searchAp);

    public List<FrequencyVo> findEquipUpgrade(RankAndDateSearchAp searchAp);

    public List<AltarAmountVo> findTotalAltarAmount(CommonDateSearchAp searchAp);

    public List<AltarAmountVo> findAltarByPlayer(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findTreasurePillageAmount(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findTreasureLevelByAmount(RankAndDateSearchAp searchAp);

    public List<TreasureLevelVo> findTreasureLevelByDate(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findTreasureDigAmount(RankAndDateSearchAp searchAp);

    public List<FrequencyVo> findTreasureRefreshAmount(RankAndDateSearchAp searchAp);

    public List<FrequencyVo> findTreasureBlessAmount(RankAndDateSearchAp searchAp);

    public List<TreasureAllianceAndHorde> findTreasureVictorTime(CommonDateSearchAp searchAp);

    public List<TreasureAllianceAndHorde> findTreasureBlessTime(CommonDateSearchAp searchAp);

    public List<TreasureExchangeVo> findExchangeAmount(CommonDateSearchAp searchAp);

    public List<RecordTimeFrequencyVo> findTreasureExchangeByOid(IdInfoAndDateSearchAp searchAp);

    public List<RecordTimeFrequencyVo> findHeroUpgradeRank(CommonDateSearchAp searchAp);

    public List<RecordTimeFrequencyVo> findHeroHoneByDate(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findHeroHoneByAmount(CommonDateSearchAp searchAp);

    public List<RecordTimeFrequencyVo> findHeroTraining(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findActivityFoods(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findActivityGetGoldPay(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findActivityContinuousGoldPay(CommonDateSearchAp searchAp);

    public List<RecordTimeFrequencyVo> findActivityAsSpecial(IdInfoAndDateSearchAp searchAp);

    public List<RecordTimeFrequencyVo> findOtherGoodsBuy(CommonDateSearchAp searchAp);

    public List<RecordTimeFrequencyVo> findOtherGetRankingReward(CommonDateSearchAp searchAp);

    public List<FrequencyVo> findOtherPackageAmount(CommonDateSearchAp searchAp);
}
