package com.gamehoo.domain.repo.gmTools;

import com.gamehoo.common.exception.BadDataException;
import com.gamehoo.domain.ap.CommonSearchAp;
import com.gamehoo.domain.ap.gmTools.PlayerQueryAp;
import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.vo.gmTools.PlayerRecordVo;
import com.gamehoo.domain.vo.manageTools.FrequencyVo;
import com.gamehoo.domain.vo.manageTools.RecordTimeFrequencyVo;
import com.gamehoo.domain.vo.manageTools.logindata.SaveDataVo;
import com.gamehoo.domain.vo.manageTools.logindata.UserTranslateVo;

import java.util.List;

public interface PlayerQueryDao {
    public List<PlayerRecordVo> findPlayerGold(PlayerQueryAp searchAp) throws BadDataException;

    public List<PlayerRecordVo> findPlayerGem(PlayerQueryAp searchAp) throws BadDataException;
}
