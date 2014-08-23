package com.gamehoo.domain.serv.gmTools;

import com.gamehoo.common.exception.BadDataException;
import com.gamehoo.common.exception.BizException;
import com.gamehoo.domain.ap.gmTools.AnnouncementAp;
import com.gamehoo.domain.ap.gmTools.PlayerQueryAp;
import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.serv.IBaseService;
import com.gamehoo.domain.to.response.PlayerDetailGather;
import com.gamehoo.domain.vo.Status;
import com.gamehoo.domain.vo.gmTools.PlayerRecordVo;

import java.util.List;

public interface PlayerQueryService extends IBaseService {
    public List<PlayerRecordVo> findPlayerGold(PlayerQueryAp searchAp) throws BadDataException;

    public List<PlayerRecordVo> findPlayerGem(PlayerQueryAp searchAp) throws BadDataException;

    public PlayerDetailGather findPlayerDetail(PlayerQueryAp playerQueryAp) throws BadDataException, BizException;
}
