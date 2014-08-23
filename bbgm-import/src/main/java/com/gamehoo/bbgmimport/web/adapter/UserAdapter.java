package com.gamehoo.bbgmimport.web.adapter;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.bo.useropt.action.ActionBaseBo;
import com.gamehoo.bbgmimport.domain.bo.useropt.GmRptPrepay;
import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpLogin;
import com.gamehoo.bbgmimport.domain.to.ImportData;
import com.gamehoo.bbgmimport.domain.to.useropt.GameAction;
import com.gamehoo.bbgmimport.domain.to.useropt.UserLogin;
import com.gamehoo.bbgmimport.domain.to.useropt.UserOpt;
import com.gamehoo.bbgmimport.domain.to.useropt.UserPrepay;
import com.gamehoo.bbgmimport.domain.vo.UserOptVo;
import com.gamehoo.bbgmimport.web.adapter.builder.actionbuilder.ActionBuilder;
import com.gamehoo.tools.ObjectUtils;
import com.gamehoo.tools.log.Logger;

import java.util.ArrayList;
import java.util.List;

public class UserAdapter extends AbstractAdapter<UserOptVo> {
    private static final Logger log = new Logger(UserAdapter.class);

    public UserAdapter() {

    }

    @Override
    public boolean verifyBo(ImportData data) {
        if (data.getuOpts() != null && data.getuOpts().size() > 0) {
            for (UserOpt opt : data.getuOpts()) {
                if (opt.getL() != null || opt.getP() != null || opt.getA() != null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public List<UserOptVo> serverBoHandler(ImportData data, BaseServerBo bo) {
        List<UserOptVo> result = new ArrayList<UserOptVo>();
        for (UserOpt opt : data.getuOpts()) {
            UserLogin uLogin = opt.getL();
            UserPrepay uPrepay = opt.getP();
            GameAction uAction = opt.getA();
            UserOptVo vo = new UserOptVo();
            boolean hasData = false;
            if (uLogin != null) {
                GmTmpLogin login = buildUserLogin(uLogin, opt);
                vo.setLogin(login);
                hasData = true;
            }
            if (uPrepay != null) {
                GmRptPrepay prepay = buildPrepay(uPrepay, opt);
                vo.setPrepay(prepay);
                hasData = true;
            }
            if (uAction != null) {
                GmTmpUserAction userAction = buildGmTmpUserAction(uAction, opt);
                List<BaseServerBo> infoList = new ArrayList<BaseServerBo>();
                if (uAction.getA() != null && uAction.getA().size() > 0) {
                    infoList = buildActionDetail(false, uAction.getT(), opt.getI(), opt.getR(), uAction.getA());
                }
                ActionBaseBo actionBaseBo = buildRelatedActionBo(userAction);
                if (actionBaseBo != null)
                    infoList.add(actionBaseBo);
                userAction.setChildBoList(infoList);
                vo.setUserAction(userAction);
                hasData = true;
            }
            if (hasData) {
                result.add(vo);
            }
        }
        return result;
    }

    private GmTmpUserAction buildGmTmpUserAction(final GameAction uAction, UserOpt uOpt) {
        GmTmpUserAction userAction = new GmTmpUserAction();
        cloneBaseBo(userAction);
        userAction.setPlayerId(uOpt.getI());
        userAction.setPlayerName(uOpt.getN());
        userAction.setPlayerLevel(uOpt.getV());
        userAction.setRecordTime(ObjectUtils.getTimestamp(uOpt.getR()));
        userAction.setResult(uAction.getS());
        userAction.setActionType(uAction.getT());
        return userAction;
    }

    private ActionBaseBo buildRelatedActionBo(GmTmpUserAction userAction) {
        ActionBaseBo bo = null;
        try {
            bo = ActionBuilder.getInstance().builderGameAction(userAction);
        } catch (Exception e) {
            log.error(e);
        }
        return bo;
    }


    private GmTmpLogin buildUserLogin(final UserLogin uLogin, final UserOpt uOpt) {
        GmTmpLogin login = new GmTmpLogin();
        cloneBaseBo(login);
        login.setPlayerId(uOpt.getI());
        login.setPlayerName(uOpt.getN());
        login.setPlayerLevel(uOpt.getV());
        login.setUdId(uLogin.getUdId());
        login.setMac(uLogin.getMac());
        login.setVendorId(uLogin.getvId());
        login.setLoginType(uLogin.getlT());
        login.setIp(uLogin.getIp());
        login.setLoginTime(ObjectUtils.getTimestamp(uLogin.getLiT()));
        login.setLogoutTime(ObjectUtils.getTimestamp(uLogin.getLoT()));
        return login;
    }

    private GmRptPrepay buildPrepay(final UserPrepay uPrepay, final UserOpt uOpt) {
        GmRptPrepay prepay = new GmRptPrepay();
        cloneBaseBo(prepay);
        prepay.setPlayerId(uOpt.getI());
        prepay.setPlayerName(uOpt.getN());
        prepay.setPlayerLevel(uOpt.getV());
        prepay.setRecordTime(ObjectUtils.getTimestamp(uOpt.getR()));
        prepay.setPrepayType(uPrepay.getT());
        prepay.setPrepayCash(uPrepay.getC());
        prepay.setPrepayGem(uPrepay.getGem());
        prepay.setFirstCharge(uPrepay.getFc());
        prepay.setRelativeDate(uPrepay.getOd());
        prepay.setRecordTime(ObjectUtils.getTimestamp(uOpt.getR()));
        return prepay;
    }
}
