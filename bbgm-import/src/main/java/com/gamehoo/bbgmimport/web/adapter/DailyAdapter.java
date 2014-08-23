package com.gamehoo.bbgmimport.web.adapter;

import com.gamehoo.bbgmimport.domain.bo.*;
import com.gamehoo.bbgmimport.domain.bo.dailyopt.GmTmpDaily;
import com.gamehoo.bbgmimport.domain.to.ImportData;
import com.gamehoo.bbgmimport.domain.to.dailyopt.DailyOpt;
import com.gamehoo.tools.ObjectUtils;

import java.util.ArrayList;
import java.util.List;

public class DailyAdapter extends AbstractAdapter<GmTmpDaily> {
    //todo need filter dirty data of dailyInfo invalid type

    public boolean verifyBo(final ImportData data) {
        if (data.getdOpts() != null && data.getdOpts().size() > 0) {
            for (DailyOpt opt : data.getdOpts()) {
                if (opt != null) {
                    return true;
                }
            }
        }
        return false;
    }

    public List<GmTmpDaily> serverBoHandler(final ImportData data, final BaseServerBo bo) {
        List<GmTmpDaily> result = new ArrayList<GmTmpDaily>();
        for (DailyOpt opt : data.getdOpts()) {
            GmTmpDaily daily = new GmTmpDaily();
            cloneBaseBo(daily);
            List<BaseServerBo> infoList = new ArrayList<BaseServerBo>();
            if (opt.getA() != null){
                infoList = buildActionDetail(true, null, opt.getI(), opt.getR(), opt.getA());
            }
            daily.setPlayerId(opt.getI());
            daily.setPlayerName(opt.getN());
            daily.setPlayerLevel(opt.getV());
            daily.setPlayerPrepay(opt.getM());
            daily.setPlayerGem(opt.getD());
            daily.setPlayerGold(opt.getG());
            daily.setPlayerGamePoint(opt.getS());
            daily.setZigFloor(opt.getF());
            daily.setZigScore(opt.getT());
            daily.setVictoryScore(opt.getY());
            daily.setConsecutiveVictories(opt.getL());
            daily.setPlayerExp(opt.getE());
            daily.setPackageAmount(opt.getP());
            daily.setChildBoList(infoList);
            daily.setRecordTime(ObjectUtils.getTimestamp(opt.getR()));
            result.add(daily);
        }
        return result;
    }
}
