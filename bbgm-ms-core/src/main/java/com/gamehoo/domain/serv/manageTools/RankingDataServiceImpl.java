package com.gamehoo.domain.serv.manageTools;

import com.gamehoo.domain.ap.CommonSearchAp;
import com.gamehoo.domain.repo.manageTools.RankingDataDao;
import com.gamehoo.domain.serv.BaseService;
import com.gamehoo.domain.vo.manageTools.rankingData.RankingVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public class RankingDataServiceImpl extends BaseService implements RankingDataService {
    @Autowired
    private RankingDataDao rankingDataDao;

    public List<RankingVo> findRankingDataVo(CommonSearchAp commonSearchAp){
        return rankingDataDao.findRankingDataVo(commonSearchAp);
    }

}
