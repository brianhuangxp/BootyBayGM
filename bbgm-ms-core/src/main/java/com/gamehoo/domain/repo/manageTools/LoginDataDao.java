package com.gamehoo.domain.repo.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.CommonSearchAp;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.RecordTimeFrequencyVo;
import com.gamehoo.domain.vo.manageTools.logindata.SaveDataVo;
import com.gamehoo.domain.vo.manageTools.logindata.UserTranslateVo;
import java.util.List;

public interface LoginDataDao {
    public List<UserTranslateVo> findUserTranslateVo(CommonDateSearchAp commonDateSearchAp);

    public List<SaveDataVo> findSaveDataVo(CommonDateSearchAp commonDateSearchAp);

    public List<FrequencyVo> findPlayerLevel(CommonSearchAp commonSearchAp);

    public List<FrequencyVo> findDailyLoginAmount(CommonDateSearchAp commonDateSearchAp);

    public List<FrequencyVo> findHourlyOnline(CommonDateSearchAp commonDateSearchAp);

    public List<RecordTimeFrequencyVo> findDailyOnline(CommonDateSearchAp commonDateSearchAp);

    public List<RecordTimeFrequencyVo> findActiveUserVo(CommonDateSearchAp commonDateSearchAp);
}
