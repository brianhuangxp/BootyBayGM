package com.gamehoo.bbgmimport.domain.vo;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.GmRptPrepay;
import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpLogin;

import java.util.ArrayList;
import java.util.List;

public class UserOptVo extends BaseServerVo {
    private GmTmpLogin login;
    private GmRptPrepay prepay;
    private GmTmpUserAction userAction;

    public GmTmpLogin getLogin() {
        return login;
    }

    public void setLogin(GmTmpLogin login) {
        this.login = login;
    }

    public GmRptPrepay getPrepay() {
        return prepay;
    }

    public void setPrepay(GmRptPrepay prepay) {
        this.prepay = prepay;
    }

    public GmTmpUserAction getUserAction() {
        return userAction;
    }

    public void setUserAction(GmTmpUserAction userAction) {
        this.userAction = userAction;
    }

    public List<BaseServerBo> getBoList() {
        List<BaseServerBo> boList = new ArrayList<BaseServerBo>();
        if(userAction != null)
            boList.add(userAction);
        if (login != null)
            boList.add(login);
        if (prepay != null)
            boList.add(prepay);
        return boList;
    }
}
