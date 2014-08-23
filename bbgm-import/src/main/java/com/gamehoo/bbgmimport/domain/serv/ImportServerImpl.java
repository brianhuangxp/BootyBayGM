package com.gamehoo.bbgmimport.domain.serv;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.bbgmimport.domain.bo.GmImportErrorBo;
import com.gamehoo.bbgmimport.domain.bo.GmTmpImport;
import com.gamehoo.bbgmimport.domain.to.ImportData;
import com.gamehoo.bbgmimport.domain.to.useropt.UserLogin;
import com.gamehoo.bbgmimport.domain.to.useropt.UserOpt;
import com.gamehoo.bbgmimport.web.adapter.AdapterBuilder;
import com.gamehoo.common.exception.BadDataException;
import com.gamehoo.domain.serv.BTService;
import com.gamehoo.tools.log.Logger;
import com.google.gson.Gson;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ImportServerImpl extends BTService implements ImportServer {
    private static final Logger log = new Logger(ImportServerImpl.class);

    public void saveImportData(ImportData data) throws BadDataException {
        long startTime = System.currentTimeMillis();
        GmTmpImport impData = null;
        try {
            impData = AdapterBuilder.getInstance().getGmRptImportBo(data);
            em.persist(impData);
            List<BaseServerBo> boList = AdapterBuilder.getInstance().getImportBoList(data, impData.getImportId());
            int passNum = batchSave(boList);
            String passFlag = isAllPass(boList, passNum) ? "1" : "2";
            impData.setPassNum(passNum);
            updateImportDate(impData, passFlag, startTime);
        } catch (Exception e) {
            Gson gson = new Gson();
            GmImportErrorBo errorBo = new GmImportErrorBo();
            errorBo.setServerId(data.getSvId());
            errorBo.setProviderId(data.getPvId());
            errorBo.setRecordTime(new Timestamp(data.getrTime()));
            errorBo.setErrorMsg(e.getMessage());
            errorBo.setImportData(gson.toJson(data));
            em.persist(errorBo);

            throw new BadDataException(String.format("导入数据失败， ImportId为 %s.",
                    (impData != null && impData.getImportId() != null ? impData.getImportId() : null)), e);
        }
    }

    public void updateErrorLogin(final ImportData data) {
        StringBuilder sb = new StringBuilder();
        List<Object> parameters = getUpdateErrorLoginSql(data, sb);
        String nativeSql = sb.toString();
        if (nativeSql.length() == 0) {
            return;
        }
        log.debug("update error login = " + parameters);
        Query query = em.createNativeQuery(nativeSql);
        for (int i = 0; i < parameters.size(); i++) {
            query.setParameter(i + 1, parameters.get(i));
        }
        int result = query.executeUpdate();
        log.debug("update count:" + result);
    }

    private List<Object> getUpdateErrorLoginSql(final ImportData data, StringBuilder sb) {
        List<Object> parameters = new ArrayList<Object>();
        List<Long> playerIds = getErrorLoginPlayerId(data);
        if (playerIds.size() == 0) {
            return parameters;
        }
        sb.append("update gm_tmp_login l ");
        sb.append("set login_type = '2', logout_time = sysdate, update_time = sysdate ");

        sb.append("where exists (select 1 from gm_tmp_login l1 where l1.login_type = '1' ");
        sb.append("and l1.provider_id = ?1 and l1.server_id = ?2");
        sb.append(" and l1.id = l.id and not exists ( ");
        sb.append("select 1 from gm_tmp_login l2 where l2.id != l1.id ");
        sb.append("and l2.provider_id = ?1 and l2.server_id = ?2 ");
        parameters.add(data.getPvId());
        parameters.add(data.getSvId());
        sb.append("and l2.login_time = l1.login_time and l2.player_id = l1.player_id)) ");
        sb.append("and l.player_id in (");
        for (int i = 0; i < playerIds.size(); i++) {
            Long playerId = playerIds.get(i);
            sb.append(i == 0 ? ("?" + (i + 3)) : (",?" + (i + 3)));
            parameters.add(playerId);
        }
        sb.append(")");
        return parameters;
    }

    private List<Long> getErrorLoginPlayerId(final ImportData data) {
        List<Long> playerIds = new ArrayList<Long>();
        if (data.getuOpts() != null) {
            for (UserOpt userOpt : data.getuOpts()) {
                UserLogin l = userOpt.getL();
                if (l != null && "1".equals(l.getlT()))
                    playerIds.add(userOpt.getI());
            }
        }
        return playerIds;
    }

    private boolean isAllPass(List<BaseServerBo> boList, int passNum) {
        int size = 0;
        for (BaseServerBo bo : boList) {
            size++;
            if (bo.getChildBoList() != null)
                size += bo.getChildBoList().size();
        }
        return size == passNum;
    }

    private void updateImportDate(GmTmpImport impData, String passFlag, long startTime) {
        long endTime = System.currentTimeMillis();
        if (impData != null) {
            impData.setAllPass(passFlag);
            impData.setExecTime(endTime - startTime);
            impData.setUpdateTime(new Timestamp(endTime));
            em.merge(impData);
        }
    }

    private int batchSave(List<BaseServerBo> boList) {
        int passNum = 0;
        for (int i = 0; i < boList.size(); i++) {
            BaseServerBo bo = boList.get(i);
            try {
                em.persist(bo);
                log.debug(bo);
                passNum++;

                for (BaseServerBo cbo : bo.getChildBoList()) {
                    if (cbo == null) {
                        continue;
                    }
                    cbo.setParentId(bo.getPrimaryKey());
                    em.persist(cbo);
                    passNum++;
                    log.debug(cbo);
                }

                if (i % FLUSH_COUNT == FLUSH_COUNT - 1) {
                    em.flush();
                    em.clear();
                }
            } catch (Exception e) {
                //todo save errorBO in DB.
                log.error(e, String.format("Save BaseServerBo: %s", bo.toString()));
            }
        }
        return passNum;
    }

}
