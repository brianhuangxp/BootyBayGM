package com.gamehoo.web.interceptor;

import com.gamehoo.common.web.interceptor.AuthorizationInterceptor;
import com.gamehoo.domain.vo.system.UserSession;
import com.gamehoo.tools.ObjectUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//TODO split a new interceptor to check json or jsonp without login but need check data for encrypt
public class BbgmAuthorInterceptor extends AuthorizationInterceptor {

    @Override
    protected boolean authorize(HttpServletRequest request, String url, String matchUrl) {
        HttpSession session = ((HttpServletRequest) request).getSession();
        Object o = session.getAttribute(this.getCheckAttribute());
        if (o == null) {
            //todo remove for quick test.
            /*SysGmUser user = new SysGmUser();
            user.setUserId(1l);
            user.setNickName("root");
            user.setUserName("root");
            user.setUserPwd("root");
            session.setAttribute(this.getCheckAttribute(), user);
            return true;*/
            return false;
        }
        UserSession user = (UserSession)o;
        return !ObjectUtils.isEmpty(user.getUser()) && !ObjectUtils.isEmpty(user.getUser().getUserId());
    }

    /**
     * Check external system visit no need login in, need to overwrite
     *
     * @param request
     * @param url
     * @return
     */
    protected boolean allowExternalSystem(HttpServletRequest request, String url) {
        String flag = request.getParameter("extSystemFlag");
        System.out.println("===" + url);
        if("1".equals(flag)){
            if(url.indexOf("/json/") > -1){
                System.out.println("addr==" + request.getRemoteAddr());
                //TODO check External System
                return true;
            }
        }
        return false;
    }
}
