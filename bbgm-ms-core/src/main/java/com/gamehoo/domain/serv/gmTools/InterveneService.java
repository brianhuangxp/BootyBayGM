package com.gamehoo.domain.serv.gmTools;

import com.gamehoo.common.exception.BadDataException;
import com.gamehoo.common.exception.BizException;
import com.gamehoo.domain.ap.gmTools.AnnouncementAp;
import com.gamehoo.domain.ap.gmTools.ApplySupplyAwardAp;
import com.gamehoo.domain.ap.gmTools.ApproveSupplyAwardAp;
import com.gamehoo.domain.ap.gmTools.PlayerInterveneAp;
import com.gamehoo.domain.bo.audit.GMAuditApply;
import com.gamehoo.domain.bo.audit.GMAuditPlayerIntervene;
import com.gamehoo.domain.serv.IBaseService;
import com.gamehoo.domain.to.request.SupplyAward;
import com.gamehoo.domain.to.response.InterveneResult;
import com.gamehoo.domain.vo.Status;
import com.gamehoo.domain.vo.system.BaseUserSession;

import java.util.List;

public interface InterveneService extends IBaseService {
    public Status announcement(AnnouncementAp announcementAp) throws BadDataException, BizException;

    public Status frozenAccount(PlayerInterveneAp playerIntervene) throws BadDataException, BizException;

    public Status dispellingFrozen(PlayerInterveneAp playerIntervene) throws BadDataException, BizException;

    public List<GMAuditPlayerIntervene> findFrozenPlayers();

    public Long applySupplyAward(ApplySupplyAwardAp applySupplyAward, BaseUserSession userSession);

    public List<GMAuditApply> findGMAuditApply();

    public Status approveSupplyAward(ApproveSupplyAwardAp approveSupplyAward, BaseUserSession userSession) throws BizException;
}
