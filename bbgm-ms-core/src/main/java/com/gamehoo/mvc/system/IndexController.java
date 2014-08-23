package com.gamehoo.mvc.system;

import com.gamehoo.domain.ap.AccountLogin;
import com.gamehoo.domain.ap.UserBaseAp;
import com.gamehoo.domain.bo.system.SysCode;
import com.gamehoo.domain.bo.system.SysGmUser;
import com.gamehoo.domain.serv.system.AccountService;
import com.gamehoo.domain.serv.system.CodeTable;
import com.gamehoo.domain.vo.AjaxResponseVo;
import com.gamehoo.domain.vo.system.*;
import com.gamehoo.domain.vo.Status;
import com.gamehoo.tools.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gamehoo.tools.log.Logger;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = {"/", "/index.view"})
public class IndexController extends GMAjaxController {
    private static final Logger log = new Logger(IndexController.class);
    private static final String CODE_SPLIT = ",";
    @Autowired
    private AccountService accountService;

    @RequestMapping(method = RequestMethod.GET)
    public String displayIndex() {
        return "index";
    }

    @RequestMapping(value = "system/system.login", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo loginAccount(HttpServletRequest request, HttpServletResponse resp) {
        HttpSession session = request.getSession(true);
        AjaxResponseVo responseVo = commonFind(request, accountService, AccountLogin.class, "findUserForLogin");
        if(ObjectUtils.isEmpty(responseVo.getResult())){
            responseVo.setStatus(new Status("0", "fail"));
        }else{
            UserSession userSession = new UserSession();
            SysGmUser sysUser = (SysGmUser)responseVo.getResult();
            userSession.setUser(sysUser);
            userSession.setProviderServerVoList(accountService.findProviderServerVo(sysUser.getUserId()));
            userSession.setRequestIp(request.getLocalAddr());
            session.setAttribute(BaseUserSession.USER_SESSION_KEY, userSession);
            responseVo.setResult(userSession.buildClientUserVo());
        }
        return responseVo;
    }

    @RequestMapping(value = "system/system.logout", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo logoutAccount(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        session.invalidate();
        session = null;
        return putResult(new Status("1", "success"), null, 0);
    }

    @RequestMapping(value = "system/system.findMenuList", method = RequestMethod.GET, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findMenuList(HttpServletRequest request) {
        return commonFind(request, accountService, UserBaseAp.class, "findMenuList");
    }

    @RequestMapping(value = "system/system.findCodeList", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo findCode(HttpServletRequest request) {
        long currentTime = System.currentTimeMillis();
        List<CodeVo> result = new ArrayList<CodeVo>();
        String codeType = request.getParameter("codeType");
        String isCascade = request.getParameter("cascade");
        String displayValues = request.getParameter("displayValues");
        String[] codeValues;
        Status status;
        try {
            List<SysCode> codeList = CodeTable.getInstall().getCodes(codeType,
                    (ObjectUtils.isEmpty(isCascade) ? false : "true".equals(isCascade)));
            List<SysCode> displayCodeList = new ArrayList<SysCode>();
            if (!ObjectUtils.isEmpty(displayValues)) {
                codeValues = displayValues.split(CODE_SPLIT);
                for (SysCode sysCode : codeList) {
                    for (int i = 0; i < codeValues.length; i++) {
                        String displayCode = codeValues[i];
                        if (sysCode.getValue().equals(displayCode.trim())) {
                            displayCodeList.add(sysCode);
                            break;
                        }
                        ;
                    }
                }
            } else {
                displayCodeList = codeList;
            }
            result = CodeTable.getInstall().codeBo2CodeVo(displayCodeList);
            if (result != null && result.size() > 0) {
                status = new Status("1", "success");
            } else {
                status = new Status("0", "fail");
            }
        } catch (Exception e) {
            status = new Status("0", "fail");
        }
        return putResult(status, result, System.currentTimeMillis() - currentTime);
    }

    @RequestMapping(value = "system/system.resetCodeTable", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo resetCodeTable(HttpServletRequest request) {
        long currentTime = System.currentTimeMillis();
        List<SysCode> result = new ArrayList<SysCode>();
        Status status;
        try {
            CodeTable.getInstall().reset();
            status = new Status("1", "success");
        } catch (Exception e) {
            status = new Status("0", "fail");
        }
        return putResult(status, result, System.currentTimeMillis() - currentTime);
    }

    @RequestMapping(value = "system/system.execDailyProcedure", method = RequestMethod.POST, produces = "application/json")
    public
    @ResponseBody
    AjaxResponseVo execDailyProcedure(HttpServletRequest request) {
        return commonFind(request, accountService, null, "execDailyProcedure");
    }
}
