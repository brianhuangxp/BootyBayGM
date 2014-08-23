package com.gamehoo.mvc.rest.manageTools;

import com.gamehoo.domain.ap.manageTools.ResourceDataAp;
import com.gamehoo.domain.serv.manageTools.ResourceDataService;
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
@RequestMapping("/json/manageTools/resourceData")
public class ResourceDataController extends GMAjaxController {
    private static final Logger log = new Logger(ResourceDataController.class);

    @Autowired
    private ResourceDataService resourceDataService;

    @RequestMapping(value = "/resourceData.findResourceDataByDate", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findResourceDataByDate(HttpServletRequest request) {
        return commonFind(request, resourceDataService, ResourceDataAp.class, "findResourceDataByDate");
    }

    @RequestMapping(value = "/resourceData.findResourceDataByModule", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findResourceDataByModule(HttpServletRequest request) {
        return commonFind(request, resourceDataService, ResourceDataAp.class, "findResourceDataByModule");
    }
}
