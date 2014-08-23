package com.gamehoo.domain.serv.manageTools;

import com.gamehoo.domain.ap.CommonSearchAp;
import com.gamehoo.domain.serv.IBaseService;
import com.gamehoo.domain.vo.manageTools.rankingData.RankingVo;

import java.util.List;

public interface RankingDataService extends IBaseService {
    public List<RankingVo> findRankingDataVo(CommonSearchAp commonSearchAp);
}
