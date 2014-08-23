package com.gamehoo.domain.serv.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.CommonSearchAp;
import com.gamehoo.domain.repo.manageTools.LoginDataDao;
import com.gamehoo.domain.serv.BaseService;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.RecordTimeFrequencyVo;
import com.gamehoo.domain.vo.manageTools.logindata.SaveDataVo;
import com.gamehoo.domain.vo.manageTools.logindata.UserTranslateVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LoginDataServiceImpl extends BaseService implements LoginDataService {
    @Autowired
    private LoginDataDao loginDataDao;

    public List<UserTranslateVo> findUserTranslateVo(CommonDateSearchAp commonDateSearchAp){
        return loginDataDao.findUserTranslateVo(commonDateSearchAp);
    }

    public List<SaveDataVo> findSaveDataVo(CommonDateSearchAp commonDateSearchAp){
        return loginDataDao.findSaveDataVo(commonDateSearchAp);
    }

    public List<FrequencyVo> findPlayerLevel(CommonSearchAp commonSearchAp){
        return loginDataDao.findPlayerLevel(commonSearchAp);
    }

    public List<FrequencyVo> findDailyLoginAmount(CommonDateSearchAp commonDateSearchAp){
        return loginDataDao.findDailyLoginAmount(commonDateSearchAp);
    }

    public List<FrequencyVo> findHourlyOnline(CommonDateSearchAp commonDateSearchAp){
        return loginDataDao.findHourlyOnline(commonDateSearchAp);
    }

    public List<RecordTimeFrequencyVo> findDailyOnline(CommonDateSearchAp commonDateSearchAp){
        return loginDataDao.findDailyOnline(commonDateSearchAp);
    }

    public List<RecordTimeFrequencyVo> findActiveUserVo(CommonDateSearchAp commonDateSearchAp){
        return loginDataDao.findActiveUserVo(commonDateSearchAp);
    }
}
