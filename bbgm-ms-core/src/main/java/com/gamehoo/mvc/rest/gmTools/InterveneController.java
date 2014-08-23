package com.gamehoo.mvc.rest.gmTools;

import com.gamehoo.common.exception.BadDataException;
import com.gamehoo.common.exception.BizException;
import com.gamehoo.common.web.utils.ActionParameterUtils;
import com.gamehoo.domain.ap.BaseAp;
import com.gamehoo.domain.ap.gmTools.AnnouncementAp;
import com.gamehoo.domain.ap.gmTools.ApplySupplyAwardAp;
import com.gamehoo.domain.ap.gmTools.ApproveSupplyAwardAp;
import com.gamehoo.domain.ap.gmTools.PlayerInterveneAp;
import com.gamehoo.domain.bo.audit.GMAuditPlayerIntervene;
import com.gamehoo.domain.serv.gmTools.InterveneService;
import com.gamehoo.domain.vo.AjaxResponseVo;
import com.gamehoo.domain.vo.Status;
import com.gamehoo.domain.vo.system.BaseUserSession;
import com.gamehoo.mvc.system.GMAjaxController;
import com.gamehoo.tools.log.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/json/gmTools/intervene")
public class InterveneController extends GMAjaxController {
    private static final Logger log = new Logger(InterveneController.class);

    @Autowired
    private InterveneService interveneService;

    @RequestMapping(value = "/intervene.announcement", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo announcement(HttpServletRequest request) {
        return commonFind(request, interveneService, AnnouncementAp.class, "announcement");
    }

    @RequestMapping(value = "/intervene.frozenAccount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo frozenAccount(HttpServletRequest request) {
        return commonFind(request, interveneService, PlayerInterveneAp.class, "frozenAccount");
    }

    @RequestMapping(value = "/intervene.dispellingFrozen", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo dispellingFrozen(HttpServletRequest request) {
        return commonFind(request, interveneService, PlayerInterveneAp.class, "dispellingFrozen");
    }

    @RequestMapping(value = "/intervene.findFrozenPlayers", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findFrozenPlayers(HttpServletRequest request) {
        return commonFind(request, interveneService, null, "findFrozenPlayers");
    }

    @RequestMapping(value = "/intervene.applySupplyAward", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo applySupplyAward(HttpServletRequest request) {
//        return commonFind(request, interveneService, ApplySupplyAwardAp.class, "applySupplyAward", true);

        long currentTime = System.currentTimeMillis();
        ApplySupplyAwardAp applyAp = ActionParameterUtils.request2Ap(request, ApplySupplyAwardAp.class);
        BaseUserSession userSession = (BaseUserSession) request.getSession().getAttribute(BaseUserSession.USER_SESSION_KEY);
        applyAp.setUserId(userSession.getUserId());
        setExtraUserInfo(applyAp, userSession);
        try{
            Long applyId = interveneService.applySupplyAward(applyAp, userSession);
            ApproveSupplyAwardAp approveAp = new ApproveSupplyAwardAp();
            approveAp.setApplyId(applyId);
            approveAp.setUserId(userSession.getUserId());
            approveAp.setServerId(applyAp.getServerId());
            approveAp.setProviderId(applyAp.getProviderId());
            setExtraUserInfo(approveAp, userSession);
            Status status = interveneService.approveSupplyAward(approveAp, userSession);
            return putResult(status, status,
                    System.currentTimeMillis() - currentTime);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            if (e.getCause().getClass() == BadDataException.class) {
                return putResult(new Status("-2", e.getCause().getMessage(), e.getCause()), null,
                        System.currentTimeMillis() - currentTime);
            } else if (e.getCause().getClass() == BizException.class) {
                return putResult(new Status("-3", e.getCause().getMessage(), e.getCause()), null,
                        System.currentTimeMillis() - currentTime);
            }
            return putResult(new Status("0", "fail", e.getCause()), null,
                    System.currentTimeMillis() - currentTime);
        }
    }

    @RequestMapping(value = "/intervene.findGMAuditApply", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findGMAuditApply(HttpServletRequest request) {
        return commonFind(request, interveneService, null, "findGMAuditApply");
    }

    @RequestMapping(value = "/intervene.approveSupplyAward", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo approveSupplyAward(HttpServletRequest request) {
        return commonFind(request, interveneService, ApproveSupplyAwardAp.class, "approveSupplyAward");
    }


}
