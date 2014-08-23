package com.gamehoo.mvc.system;

import com.gamehoo.domain.ap.BaseAp;
import com.gamehoo.domain.ap.CommonSearchAp;
import com.gamehoo.domain.ap.GMUserBaseAp;
import com.gamehoo.domain.ap.UserBaseAp;
import com.gamehoo.domain.serv.IBaseService;
import com.gamehoo.domain.vo.AjaxResponseVo;
import com.gamehoo.domain.vo.Status;
import com.gamehoo.domain.vo.system.BaseUserSession;
import com.gamehoo.domain.vo.system.UserSession;
import com.gamehoo.mvc.AjaxController;
import com.gamehoo.tools.ObjectUtils;

import javax.servlet.http.HttpServletRequest;

public class GMAjaxController extends AjaxController {
    public AjaxResponseVo putResult(Status status, Object result, long spendTime) {
        AjaxResponseVo vo = new AjaxResponseVo(status, result, spendTime);
        return vo;
    }

    @Override
    public AjaxResponseVo commonFind(HttpServletRequest request, IBaseService service, String loginDataServiceMethodName) {
        return this.commonFind(request, service, CommonSearchAp.class, loginDataServiceMethodName);
    }

    @Override
    public void setExtraUserInfo(BaseAp baseAp, BaseUserSession baseUserSession) {
        if (baseAp instanceof CommonSearchAp && baseUserSession instanceof UserSession) {
            UserSession session = (UserSession) baseUserSession;
            CommonSearchAp commonSearchAp = ((CommonSearchAp) baseAp);
            commonSearchAp.setProviderServerVoList(session.getProviderServerVoList());
            commonSearchAp.setConnectSite(session.getConnectSite(commonSearchAp.getServerId()));
            commonSearchAp.setRequestIp(session.getRequestIp());
        } else if (baseAp instanceof GMUserBaseAp && baseUserSession instanceof UserSession) {
            UserSession session = (UserSession) baseUserSession;
            ((GMUserBaseAp) baseAp).setProviderServerVoList(session.getProviderServerVoList());
        }
    }
}
