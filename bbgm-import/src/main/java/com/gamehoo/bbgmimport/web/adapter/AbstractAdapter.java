package com.gamehoo.bbgmimport.web.adapter;

import com.gamehoo.bbgmimport.domain.bo.AttrOtherInfo;
import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.bbgmimport.domain.bo.GmTmpImport;
import com.gamehoo.bbgmimport.domain.bo.useropt.GmTmpUserAction;
import com.gamehoo.bbgmimport.domain.to.AttrDetail;
import com.gamehoo.bbgmimport.domain.to.ImportData;
import com.gamehoo.bbgmimport.domain.to.useropt.GameAction;
import com.gamehoo.bbgmimport.domain.to.useropt.UserOpt;
import com.gamehoo.bbgmimport.web.adapter.builder.actioninfobuilder.AttrDetailBuilder;
import com.gamehoo.tools.ObjectUtils;
import com.gamehoo.tools.log.Logger;
import org.springframework.beans.BeanUtils;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractAdapter<T> implements IAdapter {
    private static final Logger log = new Logger(UserAdapter.class);
    private BaseServerBo bo;

    private final void parseBaseServerBo(final ImportData data, Long importId) {
        this.bo = parseBaseServerBo(data);
        if (importId != null) {
            this.bo.setImportId(importId);
        }
    }

    private final static BaseServerBo parseBaseServerBo(final ImportData data) {
        BaseServerBo bo = new BaseServerBo();
        bo.setServerId(data.getSvId());
        bo.setProviderId(data.getPvId());
        bo.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        bo.setRecordTime(ObjectUtils.getTimestamp(data.getrTime()));
        return bo;
    }

    public abstract boolean verifyBo(final ImportData data);

    public abstract List<T> serverBoHandler(final ImportData data, final BaseServerBo bo);

    public final List<T> parseServerBo(final ImportData data, Long importId) {
        if (verifyBo(data)) {
            parseBaseServerBo(data, importId);
            return serverBoHandler(data, this.bo);
        }

        return new ArrayList<T>();
    }

    public final static GmTmpImport parseGmRptImport(final ImportData data) {
        GmTmpImport impData = new GmTmpImport();
        BaseServerBo bo = parseBaseServerBo(data);
        BeanUtils.copyProperties(bo, impData, BaseServerBo.class);
        impData.setServerIp(data.getIp());
        impData.setRemoteAddr(data.getRemoteAddr());
        return impData;
    }

    protected final void cloneBaseBo(final BaseServerBo subBo) {
        BeanUtils.copyProperties(this.bo, subBo, BaseServerBo.class);
    }

    List<BaseServerBo> buildActionDetail(boolean isDaily, final Integer actionType, Long playerId,
                                         Long recordTime, List<AttrDetail> dsList) {
        List<BaseServerBo> infoList = new ArrayList<BaseServerBo>();
        if (dsList != null) {
            for (AttrDetail detail : dsList) {
                AttrOtherInfo info = new AttrOtherInfo();
                cloneBaseBo(info);
                info.setAttribution(isDaily ? "DailyInfo" : "GameAction");
                info.setPlayerId(playerId);
                info.setActionType(actionType);
                info.setType(detail.getT());
                info.setAmount(detail.getC());
                info.setOid(detail.getO());
                info.setSid(detail.getS());
                info.setRank(detail.getR());
                info.setItemLevel(detail.getV());
                info.setRecordTime(ObjectUtils.getTimestamp(recordTime));
                try {
                    infoList.add(AttrDetailBuilder.getInstance().builderGameAction(info));
                } catch (Exception e) {
                    log.error(e);
                }
            }
        }
        return infoList;
    }
}
