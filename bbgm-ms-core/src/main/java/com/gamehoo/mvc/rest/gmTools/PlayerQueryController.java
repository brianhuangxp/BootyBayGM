package com.gamehoo.mvc.rest.gmTools;

import com.gamehoo.domain.ap.gmTools.AnnouncementAp;
import com.gamehoo.domain.ap.gmTools.PlayerQueryAp;
import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.serv.gmTools.PlayerQueryService;
import com.gamehoo.domain.serv.manageTools.LoginDataService;
import com.gamehoo.domain.vo.AjaxResponseVo;
import com.gamehoo.mvc.system.GMAjaxController;
import com.gamehoo.tools.log.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/json/gmTools/playerQuery")
public class PlayerQueryController extends GMAjaxController {
    private static final Logger log = new Logger(PlayerQueryController.class);

    @Autowired
    private PlayerQueryService playerQueryService;

    @RequestMapping(value = "/playerQuery.queryPlayerGold", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo queryPlayerGold(HttpServletRequest request) {
        return commonFind(request, playerQueryService, PlayerQueryAp.class, "findPlayerGold");
    }

    @RequestMapping(value = "/playerQuery.queryPlayerGem", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo queryPlayerGem(HttpServletRequest request) {
        return commonFind(request, playerQueryService, PlayerQueryAp.class, "findPlayerGem");
    }

    @RequestMapping(value = "/playerQuery.queryPlayerDetail", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo queryPlayerDetail(HttpServletRequest request) {
        return commonFind(request, playerQueryService, PlayerQueryAp.class, "findPlayerDetail");
    }
}
