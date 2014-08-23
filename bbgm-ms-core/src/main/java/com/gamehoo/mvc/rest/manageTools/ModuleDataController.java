package com.gamehoo.mvc.rest.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.manageTools.IdInfoAndDateSearchAp;
import com.gamehoo.domain.ap.manageTools.RankAndDateSearchAp;
import com.gamehoo.domain.serv.manageTools.ModuleDataService;
import com.gamehoo.domain.vo.AjaxResponseVo;
import com.gamehoo.mvc.system.GMAjaxController;
import com.gamehoo.tools.log.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/json/manageTools/moduleData")
public class ModuleDataController extends GMAjaxController {
    private static final Logger log = new Logger(ModuleDataController.class);

    @Autowired
    private ModuleDataService moduleDataService;

    @RequestMapping(value = "/zone.findPurchasePowerByDate", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findPurchasePowerByDate(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findPurchasePowerByDate");
    }

    @RequestMapping(value = "/zone.findPurchasePowerByAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findPurchasePowerByAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findPurchasePowerByAmount");
    }

    @RequestMapping(value = "/zone.findZoneChallengeVo", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findZoneChallengeVo(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findZoneChallengeVo");
    }

    @RequestMapping(value = "/arena.findPurchaseArenaChallengeByDate", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findPurchaseArenaChallengeByDate(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findPurchaseArenaChallengeByDate");
    }

    @RequestMapping(value = "/arena.findPurchaseArenaChallengeByAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findPurchaseArenaChallengeByAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findPurchaseArenaChallengeByAmount");
    }

    @RequestMapping(value = "/arena.findArenaSuccessChallenge", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findArenaSuccessChallenge(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findArenaSuccessChallenge");
    }

    @RequestMapping(value = "/arena.findArenaConsecutive", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findArenaConsecutive(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findArenaConsecutive");
    }

    @RequestMapping(value = "/arena.findArenaFallingChallenge", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findArenaFallingChallenge(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findArenaFallingChallenge");
    }

    @RequestMapping(value = "/zig.findZigFloor", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findZigFloor(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findZigFloor");
    }

    @RequestMapping(value = "/zig.findZigScore", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findZigScore(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findZigScore");
    }

    @RequestMapping(value = "/equip.findEquipRankAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findEquipRankAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, RankAndDateSearchAp.class, "findEquipRankAmount");
    }

    @RequestMapping(value = "/equip.findEquipLevel", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findEquipLevel(HttpServletRequest request) {
        return commonFind(request, moduleDataService, RankAndDateSearchAp.class, "findEquipLevel");
    }

    @RequestMapping(value = "/equip.findEquipUpgrade", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findEquipUpgrade(HttpServletRequest request) {
        return commonFind(request, moduleDataService, RankAndDateSearchAp.class, "findEquipUpgrade");
    }

    @RequestMapping(value = "/equip.findTotalAltarAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTotalAltarAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findTotalAltarAmount");
    }

    @RequestMapping(value = "/equip.findAltarByPlayer", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findAltarByPlayer(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findAltarByPlayer");
    }

    @RequestMapping(value = "/treasure.findTreasurePillageAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTreasurePillageAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findTreasurePillageAmount");
    }

    @RequestMapping(value = "/treasure.findTreasureLevelByAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTreasureLevelByAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, RankAndDateSearchAp.class, "findTreasureLevelByAmount");
    }

    @RequestMapping(value = "/treasure.findTreasureLevelByDate", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTreasureLevelByDate(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findTreasureLevelByDate");
    }

    @RequestMapping(value = "/treasure.findTreasureDigAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTreasureDigAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, RankAndDateSearchAp.class, "findTreasureDigAmount");
    }

    @RequestMapping(value = "/treasure.findTreasureRefreshAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTreasureRefreshAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, RankAndDateSearchAp.class, "findTreasureRefreshAmount");
    }

    @RequestMapping(value = "/treasure.findTreasureBlessAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTreasureBlessAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, RankAndDateSearchAp.class, "findTreasureBlessAmount");
    }

    @RequestMapping(value = "/treasure.findTreasureVictorTime", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTreasureVictorTime(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findTreasureVictorTime");
    }

    @RequestMapping(value = "/treasure.findTreasureBlessTime", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTreasureBlessTime(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findTreasureBlessTime");
    }

    @RequestMapping(value = "/treasure.findTreasureExchangeAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findExchangeAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findExchangeAmount");
    }

    @RequestMapping(value = "/treasure.findTreasureExchangeByOid", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTreasureExchangeByOid(HttpServletRequest request) {
        return commonFind(request, moduleDataService, IdInfoAndDateSearchAp.class, "findTreasureExchangeByOid");
    }

    @RequestMapping(value = "/hero.findHeroUpgradeRank", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findHeroUpgradeRank(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findHeroUpgradeRank");
    }

    @RequestMapping(value = "/hero.findHeroHoneByDate", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findHeroHoneByDate(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findHeroHoneByDate");
    }

    @RequestMapping(value = "/hero.findHeroHoneByAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findHeroHoneByAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findHeroHoneByAmount");
    }

    @RequestMapping(value = "/hero.findHeroTraining", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findHeroTraining(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findHeroTraining");
    }

    @RequestMapping(value = "/activity.findActivityFoods", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findActivityFoods(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findActivityFoods");
    }

    @RequestMapping(value = "/activity.findActivityGetGoldPay", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findActivityGetGoldPay(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findActivityGetGoldPay");
    }

    @RequestMapping(value = "/activity.findActivityContinuousGoldPay", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findActivityContinuousGoldPay(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findActivityContinuousGoldPay");
    }

    @RequestMapping(value = "/activity.findActivityAsSpecial", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findActivityAsSpecial(HttpServletRequest request) {
        return commonFind(request, moduleDataService, IdInfoAndDateSearchAp.class, "findActivityAsSpecial");
    }

    @RequestMapping(value = "/other.findGoodsBuy", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findGoodsBuy(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findOtherGoodsBuy");
    }

    @RequestMapping(value = "/other.findGetRankingReward", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findGetRankingReward(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findOtherGetRankingReward");
    }

    @RequestMapping(value = "/other.findPackageAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findPackageAmount(HttpServletRequest request) {
        return commonFind(request, moduleDataService, CommonDateSearchAp.class, "findOtherPackageAmount");
    }
}
