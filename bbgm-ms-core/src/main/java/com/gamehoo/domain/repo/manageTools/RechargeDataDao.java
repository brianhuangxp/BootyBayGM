package com.gamehoo.domain.repo.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.manageTools.RechargeRecordAp;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.logindata.APRUVo;
import com.gamehoo.domain.vo.manageTools.logindata.PrepayRateVo;
import com.gamehoo.domain.vo.manageTools.rechargeData.ChargeRecordVo;
import com.gamehoo.domain.vo.manageTools.rechargeData.PlayerPrivilegeVo;

import java.util.List;

public interface RechargeDataDao {
    public List<FrequencyVo> findTotalRecharge(CommonDateSearchAp commonDateSearchAp);

    public List<FrequencyVo> findSingleRecharge(CommonDateSearchAp commonDateSearchAp);

    public List<FrequencyVo> findFirstlyChargeAndLevel(CommonDateSearchAp commonDateSearchAp);

    public List<FrequencyVo> findFirstlyChargeAndRelativeDate(CommonDateSearchAp commonDateSearchAp);

    public List<FrequencyVo> findFirstlyChargeAndAmount(CommonDateSearchAp commonDateSearchAp);

    public List<PrepayRateVo> findPrepayRate(CommonDateSearchAp commonDateSearchAp);

    public List<APRUVo> findAPRU(CommonDateSearchAp commonDateSearchAp);

    public List<ChargeRecordVo> findChargeRecords(RechargeRecordAp rechargeRecordAp);

    public List<PlayerPrivilegeVo> findPlayerPrivilegeVo(CommonDateSearchAp searchAp);

}
