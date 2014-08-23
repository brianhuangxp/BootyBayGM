package com.gamehoo.mvc.rest.manageTools;

import com.gamehoo.domain.ap.manageTools.CommonDateSearchAp;
import com.gamehoo.domain.ap.manageTools.RechargeRecordAp;
import com.gamehoo.domain.serv.manageTools.RechargeDataService;
import com.gamehoo.domain.vo.AjaxResponseVo;
import com.gamehoo.mvc.system.GMAjaxController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/json/manageTools/rechargeData")
public class RechargeDataController extends GMAjaxController {
    @Autowired
    private RechargeDataService rechargeDataService;

    @RequestMapping(value = "/rechargeData.findTotalRecharge", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findTotalRecharge(HttpServletRequest request) {
        return commonFind(request, rechargeDataService, CommonDateSearchAp.class, "findTotalRecharge");
    }

    @RequestMapping(value = "/rechargeData.findSingleRecharge", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findSingleRecharge(HttpServletRequest request) {
        return commonFind(request, rechargeDataService, CommonDateSearchAp.class, "findSingleRecharge");
    }

    @RequestMapping(value = "/rechargeData.findFirstlyChargeAndLevel", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findFirstlyChargeAndLevel(HttpServletRequest request) {
        return commonFind(request, rechargeDataService, CommonDateSearchAp.class, "findFirstlyChargeAndLevel");
    }

    @RequestMapping(value = "/rechargeData.findFirstlyChargeAndRelativeDate", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findFirstlyChargeAndRelativeDate(HttpServletRequest request) {
        return commonFind(request, rechargeDataService, CommonDateSearchAp.class, "findFirstlyChargeAndRelativeDate");
    }

    @RequestMapping(value = "/rechargeData.findFirstlyChargeAndAmount", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findFirstlyChargeAndAmount(HttpServletRequest request) {
        return commonFind(request, rechargeDataService, CommonDateSearchAp.class, "findFirstlyChargeAndAmount");
    }

    @RequestMapping(value = "/rechargeData.findChargeRecords", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findChargeRecords(HttpServletRequest request) {
        return commonFind(request, rechargeDataService, RechargeRecordAp.class, "findChargeRecords");
    }

    @RequestMapping(value = "/rechargeData.findPrepayAndAPRU", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findPrepayAndAPRU(HttpServletRequest request) {
        return commonFind(request, rechargeDataService, CommonDateSearchAp.class, "findPrepayAndAPRU");
    }

    @RequestMapping(value = "/rechargeData.findPlayerPrivilege", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findPlayerPrivilege(HttpServletRequest request) {
        return commonFind(request, rechargeDataService, CommonDateSearchAp.class, "findPlayerPrivilegeVo");
    }


//    public List<PrivilegeVo> findPrivilegeVo(CommonDateSearchAp searchAp){

}
