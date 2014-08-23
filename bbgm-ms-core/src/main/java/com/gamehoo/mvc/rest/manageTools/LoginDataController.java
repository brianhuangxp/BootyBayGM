package com.gamehoo.mvc.rest.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.serv.manageTools.LoginDataService;
import com.gamehoo.domain.vo.AjaxResponseVo;
import com.gamehoo.domain.vo.manageTools.RecordTimeFrequencyVo;
import com.gamehoo.mvc.system.GMAjaxController;
import com.gamehoo.tools.log.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/json/manageTools/loginData")
public class LoginDataController extends GMAjaxController {
    private static final Logger log = new Logger(LoginDataController.class);

    @Autowired
    private LoginDataService loginDataService;

    @RequestMapping(value = "/loginData.findUserTranslate", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findUserTranslate(HttpServletRequest request) {
//        request.setAttribute("type", "application/json");
//        RecordTimeFrequencyVo vo = new RecordTimeFrequencyVo();
//        vo.setAmount(123l);
//        request.setAttribute("result", vo);
        return commonFind(request, loginDataService, CommonDateSearchAp.class, "findUserTranslateVo");
    }

    @RequestMapping(value = "/loginData.findSaveData", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findSaveData(HttpServletRequest request) {
        return commonFind(request, loginDataService, CommonDateSearchAp.class, "findSaveDataVo");
    }

    @RequestMapping(value = "/loginData.findPlayerLevel", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findPlayerLevel(HttpServletRequest request) {
        return commonFind(request, loginDataService, "findPlayerLevel");
    }

    @RequestMapping(value = "/loginData.findDailyLoginAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findDailyLoginAmount(HttpServletRequest request) {
        return commonFind(request, loginDataService, CommonDateSearchAp.class, "findDailyLoginAmount");
    }

    @RequestMapping(value = "/loginData.findHourlyOnline", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findHourlyOnline(HttpServletRequest request) {
        return commonFind(request, loginDataService, CommonDateSearchAp.class, "findHourlyOnline");
    }

    @RequestMapping(value = "/loginData.findDailyOnline", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findDailyOnline(HttpServletRequest request) {
        return commonFind(request, loginDataService, CommonDateSearchAp.class, "findDailyOnline");
    }

    @RequestMapping(value = "/loginData.findActiveUser", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findActiveUser(HttpServletRequest request) {
        return commonFind(request, loginDataService, CommonDateSearchAp.class, "findActiveUserVo");
    }
}
