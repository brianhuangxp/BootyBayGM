package com.gamehoo.mvc.rest.manageTools;

import com.gamehoo.domain.serv.manageTools.RankingDataService;
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
@RequestMapping("/json/manageTools/rankingData")
public class RankingDataController extends GMAjaxController {
    private static final Logger log = new Logger(RankingDataController.class);

    @Autowired
    private RankingDataService rankingDataService;

    @RequestMapping(value = "/rankingData.findRankingData", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findRankingData(HttpServletRequest request) {
        return commonFind(request, rankingDataService, "findRankingDataVo");
    }
}
