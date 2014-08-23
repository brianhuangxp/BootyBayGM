package com.gamehoo.domain.serv.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.manageTools.RechargeRecordAp;
import com.gamehoo.domain.serv.IBaseService;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.rechargeData.ChargeRecordVo;
import com.gamehoo.domain.vo.manageTools.rechargeData.PlayerPrivilegeVo;
import com.gamehoo.domain.vo.manageTools.rechargeData.PrepayAndAPRUVo;

import java.util.List;

public interface RechargeDataService extends IBaseService {
    public List<FrequencyVo> findTotalRecharge(CommonDateSearchAp commonDateSearchAp);

    public List<FrequencyVo> findSingleRecharge(CommonDateSearchAp commonDateSearchAp);

    public List<FrequencyVo> findFirstlyChargeAndLevel(CommonDateSearchAp commonDateSearchAp);

    public List<FrequencyVo> findFirstlyChargeAndRelativeDate(CommonDateSearchAp commonDateSearchAp);

    public List<FrequencyVo> findFirstlyChargeAndAmount(CommonDateSearchAp commonDateSearchAp);

    public List<PrepayAndAPRUVo> findPrepayAndAPRU(CommonDateSearchAp commonDateSearchAp);

    public List<ChargeRecordVo> findChargeRecords(RechargeRecordAp rechargeRecordAp);

    public List<PlayerPrivilegeVo> findPlayerPrivilegeVo(CommonDateSearchAp searchAp);
}
