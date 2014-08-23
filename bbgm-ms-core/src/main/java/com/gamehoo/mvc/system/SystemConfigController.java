package com.gamehoo.mvc.system;

import com.gamehoo.domain.vo.system.BaseUserSession;
import com.gamehoo.domain.vo.system.ProviderServerVo;
import com.gamehoo.domain.vo.system.UserSession;
import com.gamehoo.mvc.BaseController;
import com.gamehoo.tools.DateUtils;
import com.gamehoo.tools.ObjectUtils;
import com.gamehoo.tools.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/system/")
public class SystemConfigController extends BaseController {
    @RequestMapping(value = "configJs", method = RequestMethod.GET, produces = "text/javascript;charset=UTF-8")
    public
    @ResponseBody
    String bulidingJsConfig(HttpServletRequest request, HttpServletResponse resp) {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        StringBuilder sb = new StringBuilder();
        String projectPath = request.getContextPath() + "/";
        sb.append("var RC= RC || {} ;");
        sb.append("RC.Config={");
//        sb.append("		projectPath: '" + projectPath + "',");
//        sb.append("		resourcePath: '" + projectPath + "resources/',");
//        sb.append("		componentsPath: '" + projectPath + "components/',");
        sb.append("		loadUserConfig: false,");
        sb.append("		dateFormat: '" + DateUtils.DEFAULT_DATE_FORMAT + "'");
        sb.append("};");

        return sb.toString();
    }

    @RequestMapping(value = "userConfig.js", method = RequestMethod.GET, produces = "text/javascript;charset=UTF-8")
    public
    @ResponseBody
    String bulidingJsUserConfig(HttpServletRequest request) {
        StringBuilder sb = new StringBuilder();
        HttpSession session = request.getSession();
        Object sk = session.getAttribute("securityKey");
        String securityKey = "";

        Object o = session.getAttribute(BaseUserSession.USER_SESSION_KEY);
        UserSession userSession = (o != null) ? (UserSession) o : null;
        if (ObjectUtils.isEmpty(sk)) {
            securityKey = SecurityUtils.getInstance().generateKey();
            session.setAttribute("securityKey", securityKey);
        } else {
            securityKey = sk.toString();
        }

        sb.append("var RC= RC || {} ;");
        sb.append("RC.Config= RC.Config || {} ;");

        sb.append("(function(config){");
        sb.append("		config.loadUserConfig = true;");
        sb.append("		config.skid = '" + securityKey + "';");
        if(isEmpty(userSession) || isEmpty(userSession.getUser())){
            sb.append("		config.sessionTimeout = 'true';");
        }else{
            sb.append("		config.sessionTimeout = 'false';");
            sb.append("		config.userNickName = '" + userSession.getUser().getNickName() + "';");
            putProviderServerList(sb, userSession);
        }

        // todo make config for isCookieMenu
        sb.append("		config.isCookieMenu= 'true';");
        sb.append("})(RC.Config);");
        return sb.toString();
    }

    private void putProviderServerList(StringBuilder sb, UserSession userSession){
        List<ProviderServerVo> providerServerVoList = userSession.getProviderServerVoList();
        sb.append("config.providerServers=[");
        for(int i = 0 ; i < providerServerVoList.size(); i++){
            ProviderServerVo providerServerVo =  providerServerVoList.get(i);
            sb.append( i == 0 ? "{"  : ",{");
            sb.append("providerId:" + providerServerVo.getProviderId());
            sb.append(",providerName:'" + providerServerVo.getProviderName() + "'");
            sb.append(",serverId:" + providerServerVo.getServerId());
            sb.append(",serverName:'" + providerServerVo.getServerName() + "'}");
        }
        sb.append("];");
    }
}
