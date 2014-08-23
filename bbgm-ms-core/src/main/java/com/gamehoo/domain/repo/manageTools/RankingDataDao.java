package com.gamehoo.domain.repo.manageTools;

import com.gamehoo.domain.ap.CommonSearchAp;
import com.gamehoo.domain.vo.manageTools.rankingData.RankingVo;

import java.util.List;

public interface RankingDataDao {
    public List<RankingVo> findRankingDataVo(CommonSearchAp commonSearchAp);
}
