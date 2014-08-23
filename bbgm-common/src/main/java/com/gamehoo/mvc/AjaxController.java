package com.gamehoo.mvc;

import com.gamehoo.common.exception.BadDataException;
import com.gamehoo.common.exception.BizException;
import com.gamehoo.common.web.utils.ActionParameterUtils;
import com.gamehoo.domain.ap.BaseAp;
import com.gamehoo.domain.ap.UserBaseAp;
import com.gamehoo.domain.serv.IBaseService;
import com.gamehoo.domain.vo.AjaxResponseVo;
import com.gamehoo.domain.vo.Status;
import com.gamehoo.domain.vo.system.BaseUserSession;
import com.gamehoo.tools.ObjectUtils;

import javax.servlet.http.HttpServletRequest;

public class AjaxController extends BaseController {
    public AjaxResponseVo putResult(Status status, Object result, long spendTime) {
        AjaxResponseVo vo = new AjaxResponseVo(status, result, spendTime);
        return vo;
    }

    public AjaxResponseVo commonFind(HttpServletRequest request, IBaseService service, String loginDataServiceMethodName) {
        return this.commonFind(request, service, UserBaseAp.class, loginDataServiceMethodName);
    }

    public AjaxResponseVo commonFind(HttpServletRequest request, IBaseService service, Class<? extends BaseAp> apClass, String loginDataServiceMethodName, boolean pickUserSession) {
        long currentTime = System.currentTimeMillis();
        try {
            Object result;
            if (apClass == null) {
                result = service.getClass().getMethod(loginDataServiceMethodName).invoke(service);
            } else {
                BaseAp baseAp = ActionParameterUtils.request2Ap(request, apClass);
                BaseUserSession userSession = null;
                if (baseAp instanceof UserBaseAp) {
                    userSession = (BaseUserSession) request.getSession().getAttribute(BaseUserSession.USER_SESSION_KEY);
                    if (ObjectUtils.isEmpty(userSession)) {
                        return putResult(new Status("-99", "SessionTimeout"), null,
                                System.currentTimeMillis() - currentTime);
                    }
                    ((UserBaseAp) baseAp).setUserId(userSession.getUserId());
                    setExtraUserInfo(baseAp, userSession);
                }
                if (pickUserSession) {
                    result = service.getClass().getMethod(loginDataServiceMethodName, apClass, BaseUserSession.class).invoke(service, baseAp, userSession);
                } else {
                    result = service.getClass().getMethod(loginDataServiceMethodName, apClass).invoke(service, baseAp);
                }
            }
            return putResult(new Status("1", "success"), result,
                    System.currentTimeMillis() - currentTime);
        } catch (Exception e) {
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

    public AjaxResponseVo commonFind(HttpServletRequest request, IBaseService service, Class<? extends BaseAp> apClass, String loginDataServiceMethodName) {
        return commonFind(request, service, apClass, loginDataServiceMethodName, false);
    }

    public void setExtraUserInfo(BaseAp baseAp, BaseUserSession baseUserSession) {

    }
}
