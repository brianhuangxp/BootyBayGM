package com.gamehoo.domain.serv.gmTools;

import com.gamehoo.common.exception.BadDataException;
import com.gamehoo.common.exception.BizException;
import com.gamehoo.common.web.utils.RequestHandleUtils;
import com.gamehoo.domain.ap.gmTools.AnnouncementAp;
import com.gamehoo.domain.ap.gmTools.PlayerQueryAp;
import com.gamehoo.domain.repo.gmTools.PlayerQueryDao;
import com.gamehoo.domain.serv.BaseService;
import com.gamehoo.domain.serv.system.ServerUrlService;
import com.gamehoo.domain.to.request.QueryPlayerDetail;
import com.gamehoo.domain.to.response.PlayerDetailGather;
import com.gamehoo.domain.vo.Status;
import com.gamehoo.domain.vo.gmTools.PlayerRecordVo;
import com.gamehoo.tools.DESUtils;
import com.gamehoo.tools.ObjectUtils;
import com.gamehoo.tools.log.Logger;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.net.ConnectException;
import java.util.List;

@Repository
public class PlayerQueryServiceImpl extends BaseService implements PlayerQueryService {
    private static final Logger log = new Logger(PlayerQueryServiceImpl.class);

    @Autowired
    private PlayerQueryDao playerQueryDao;


    public List<PlayerRecordVo> findPlayerGold(PlayerQueryAp searchAp) throws BadDataException{
        return playerQueryDao.findPlayerGold(searchAp);
    }

    public List<PlayerRecordVo> findPlayerGem(PlayerQueryAp searchAp) throws BadDataException{
        return playerQueryDao.findPlayerGem(searchAp);
    }

    public PlayerDetailGather findPlayerDetail(PlayerQueryAp playerQueryAp) throws BadDataException, BizException {
        if (ObjectUtils.isEmpty(playerQueryAp.getConnectSite())) {
            throw new BadDataException("无法获取服务器连接，请联系管理员！");
        }
        String queryUrl = ServerUrlService.getPlayerDetailQueryUrl(playerQueryAp.getConnectSite());
        QueryPlayerDetail queryPlayerDetail = new QueryPlayerDetail();
        if (!ObjectUtils.isEmpty(playerQueryAp.getPlayerId())) {
            queryPlayerDetail.setPlayerId(playerQueryAp.getPlayerId());
        }
        if (!ObjectUtils.isEmpty(playerQueryAp.getPlayerName()) && !ObjectUtils.isEmpty(playerQueryAp.getPlayerName().trim())) {
            queryPlayerDetail.setPlayerName(playerQueryAp.getPlayerName().trim());
        }
        queryPlayerDetail.setIp(playerQueryAp.getRequestIp());

        Gson gson = new Gson();
        try {
            String result = RequestHandleUtils.sendRequest(queryUrl, gson.toJson(queryPlayerDetail));
            PlayerDetailGather player = gson.fromJson(DESUtils.getDesString(result), PlayerDetailGather.class);
            return player;
        } catch (ConnectException e) {
            log.error(e);
            throw new BizException("无法连接服务器，请稍后重试，或联系管理员！");
        } catch (Exception e) {
            log.error(e);
            throw new BizException("查询服务器出错了，请联系管理员！");
        }
    }

}
