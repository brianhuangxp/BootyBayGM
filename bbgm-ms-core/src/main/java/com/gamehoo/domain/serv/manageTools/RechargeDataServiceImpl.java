package com.gamehoo.domain.serv.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.manageTools.RechargeRecordAp;
import com.gamehoo.domain.repo.manageTools.RechargeDataDao;
import com.gamehoo.domain.serv.BaseService;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.logindata.APRUVo;
import com.gamehoo.domain.vo.manageTools.logindata.PrepayRateVo;
import com.gamehoo.domain.vo.manageTools.rechargeData.ChargeRecordVo;
import com.gamehoo.domain.vo.manageTools.rechargeData.PlayerPrivilegeVo;
import com.gamehoo.domain.vo.manageTools.rechargeData.PrepayAndAPRUVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.*;

@Repository
public class RechargeDataServiceImpl extends BaseService implements RechargeDataService {
    @Autowired
    private RechargeDataDao rechargeDataDao;

    public List<FrequencyVo> findTotalRecharge(CommonDateSearchAp commonDateSearchAp){
        return rechargeDataDao.findTotalRecharge(commonDateSearchAp);
    }

    public List<FrequencyVo> findSingleRecharge(CommonDateSearchAp commonDateSearchAp){
        return rechargeDataDao.findSingleRecharge(commonDateSearchAp);
    }

    public List<FrequencyVo> findFirstlyChargeAndLevel(CommonDateSearchAp commonDateSearchAp){
        return rechargeDataDao.findFirstlyChargeAndLevel(commonDateSearchAp);
    }

    public List<FrequencyVo> findFirstlyChargeAndRelativeDate(CommonDateSearchAp commonDateSearchAp){
        return rechargeDataDao.findFirstlyChargeAndRelativeDate(commonDateSearchAp);
    }

    public List<FrequencyVo> findFirstlyChargeAndAmount(CommonDateSearchAp commonDateSearchAp){
        return rechargeDataDao.findFirstlyChargeAndAmount(commonDateSearchAp);
    }

    private Map<Timestamp,PrepayAndAPRUVo> prepayRateVo2Map(List<PrepayRateVo> prepayRateVoList){
        Map<Timestamp,PrepayAndAPRUVo> prepayAndAPRUVoMap = new HashMap<Timestamp, PrepayAndAPRUVo>();
        Map<Timestamp, Long> prepayMap = new HashMap<Timestamp, Long>();
        Map<Timestamp, Long> noPrepayMap = new HashMap<Timestamp, Long>();
        Set<Timestamp> dateSet = new HashSet<Timestamp>();

        for (PrepayRateVo vo : prepayRateVoList) {
            dateSet.add(vo.getCreateDate());
            if (vo.getPrepayFlag() == 1) {
                prepayMap.put(vo.getCreateDate(), vo.getPlayerNum());
            } else {
                noPrepayMap.put(vo.getCreateDate(), vo.getPlayerNum());
            }
        }

        for (Timestamp time : dateSet) {
            Long prepayNum = prepayMap.get(time);
            prepayNum = prepayNum == null ? 0 : prepayNum;
            Long noPrepayNum = noPrepayMap.get(time);
            noPrepayNum = noPrepayNum == null ? 0 : noPrepayNum;
            PrepayAndAPRUVo prepayAndAPRUVo = new PrepayAndAPRUVo();
            prepayAndAPRUVo.setRecordTime(time);
            prepayAndAPRUVo.setCreateAndPrepay(prepayNum);
            prepayAndAPRUVo.setCreateCount(prepayNum + noPrepayNum);
            prepayAndAPRUVoMap.put(time, prepayAndAPRUVo);
        }
        return prepayAndAPRUVoMap;
    }

    public List<PrepayAndAPRUVo> findPrepayAndAPRU(CommonDateSearchAp commonDateSearchAp) {
        List<PrepayRateVo> prepayRateVos = rechargeDataDao.findPrepayRate(commonDateSearchAp);
        List<APRUVo> apruVos = rechargeDataDao.findAPRU(commonDateSearchAp);
        Map<Timestamp,PrepayAndAPRUVo> prepayAndAPRUVoMap = prepayRateVo2Map(prepayRateVos);
        for (APRUVo vo : apruVos) {
            PrepayAndAPRUVo prepayAndAPRUVo = prepayAndAPRUVoMap.get(vo.getRecordDate());
            if(prepayAndAPRUVo == null){
                prepayAndAPRUVo = new PrepayAndAPRUVo();
            }
            prepayAndAPRUVo.setRecordTime(vo.getRecordDate());
            prepayAndAPRUVo.setPrepayCount(vo.getPrepayCount());
            prepayAndAPRUVo.setTotalPrepay(vo.getTotalPrepay());
            prepayAndAPRUVoMap.put(vo.getRecordDate(), prepayAndAPRUVo);
        }
        List<PrepayAndAPRUVo> voList = new ArrayList<PrepayAndAPRUVo>(prepayAndAPRUVoMap.values());
        return voList;
    }

    public List<ChargeRecordVo> findChargeRecords(RechargeRecordAp rechargeRecordAp){
        return rechargeDataDao.findChargeRecords(rechargeRecordAp);
    }

    public List<PlayerPrivilegeVo> findPlayerPrivilegeVo(CommonDateSearchAp searchAp){
        return rechargeDataDao.findPlayerPrivilegeVo(searchAp);
    }
}
