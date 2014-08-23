package com.gamehoo.domain.serv.gmTools;

import com.gamehoo.common.exception.BadDataException;
import com.gamehoo.common.exception.BizException;
import com.gamehoo.common.web.utils.RequestHandleUtils;
import com.gamehoo.domain.ap.gmTools.*;
import com.gamehoo.domain.bo.audit.GMAuditApply;
import com.gamehoo.domain.bo.audit.GMAuditPlayerIntervene;
import com.gamehoo.domain.enumtype.AuditApplyOptStatus;
import com.gamehoo.domain.enumtype.AuditApplyOptType;
import com.gamehoo.domain.serv.BTService;
import com.gamehoo.domain.serv.system.ServerUrlService;
import com.gamehoo.domain.to.request.AccountIntervene;
import com.gamehoo.domain.to.request.Announcement;
import com.gamehoo.domain.to.request.SupplyAward;
import com.gamehoo.domain.to.response.InterveneResult;
import com.gamehoo.domain.vo.Status;
import com.gamehoo.domain.vo.system.BaseUserSession;
import com.gamehoo.domain.vo.system.UserSession;
import com.gamehoo.tools.DESUtils;
import com.gamehoo.tools.DateUtils;
import com.gamehoo.tools.ObjectUtils;
import com.gamehoo.tools.log.Logger;
import com.google.gson.Gson;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.net.ConnectException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Repository
public class InterveneServiceImpl extends BTService implements InterveneService {
    private static final Logger log = new Logger(InterveneServiceImpl.class);

    public Status announcement(AnnouncementAp announcementAp) throws BadDataException, BizException {
        if (ObjectUtils.isEmpty(announcementAp.getConnectSite())) {
            throw new BadDataException("无法获取服务器连接，请联系管理员！");
        }
        String announcementUrl = ServerUrlService.getAnnouncementUrl(announcementAp.getConnectSite());
        Announcement announcement = new Announcement();
        Long startDate = null;
        Long endDate = null;
        try {
            startDate = DateUtils.parseDate(announcementAp.getStartDate()).getTime();
            endDate = DateUtils.parseDate(announcementAp.getEndDate()).getTime();
        } catch (ParseException e) {
        }
        announcement.setIp(announcementAp.getRequestIp());
        announcement.setProviderId(announcementAp.getProviderId());
        announcement.setAnnouncement(announcementAp.getAnnouncement());
        announcement.setStartDate(startDate);
        announcement.setEndDate(endDate);
        announcement.setOptTime(new Date().getTime());
        Gson gson = new Gson();
        try {
            String result = RequestHandleUtils.sendRequest(announcementUrl, gson.toJson(announcement));
            Status status = gson.fromJson(DESUtils.getDesString(result), Status.class);
            System.out.println(status);
            return status;
        } catch (ConnectException e) {
            log.error(e);
            throw new BizException("无法连接服务器，请稍后重试，或联系管理员！");
        } catch (Exception e) {
            log.error(e);
            throw new BizException("查询服务器出错了，请联系管理员！");
        }
    }

    public Status frozenAccount(PlayerInterveneAp playerIntervene) throws BadDataException, BizException {
        if (ObjectUtils.isEmpty(playerIntervene.getConnectSite())) {
            throw new BadDataException("无法获取服务器连接，请联系管理员！");
        }
        if (ObjectUtils.isEmpty(playerIntervene.getPlayers()) || ObjectUtils.isEmpty(playerIntervene.getCause())
                || ObjectUtils.isEmpty(playerIntervene.getEndDate())) {
            throw new BadDataException("输入非法数据，请检查后重试，或联系管理员！");
        }

        String interveneUrl = ServerUrlService.getAccountInterveneUrl(playerIntervene.getConnectSite());
        AccountIntervene accountIntervene = new AccountIntervene();
        Long endDate = null;
        try {
            endDate = DateUtils.parseDate(playerIntervene.getEndDate()).getTime();
        } catch (ParseException e) {
        }
        accountIntervene.setIp(playerIntervene.getRequestIp());
        accountIntervene.setProviderId(playerIntervene.getProviderId());
        accountIntervene.setUsers(playerIntervene.getPlayers());
        accountIntervene.setFrozenCause(playerIntervene.getCause());
        accountIntervene.setDispellingDate(endDate);
        accountIntervene.setOptTime(new Date().getTime());
        accountIntervene.setOptType(1);
        Gson gson = new Gson();
        try {
            String result = RequestHandleUtils.sendRequest(interveneUrl, gson.toJson(accountIntervene));
            InterveneResult interveneResult = gson.fromJson(DESUtils.getDesString(result), InterveneResult.class);
            responseFrozenAccount(playerIntervene, accountIntervene, interveneResult);
            return interveneResult.getStatus();
        } catch (ConnectException e) {
            log.error(e);
            throw new BizException("无法连接服务器，请稍后重试，或联系管理员！");
        } catch (BizException e) {
            throw e;
        } catch (Exception e) {
            log.error(e);
            throw new BizException("查询服务器出错了，请联系管理员！");
        }
    }

    public Status dispellingFrozen(PlayerInterveneAp playerIntervene) throws BadDataException, BizException {
        if (ObjectUtils.isEmpty(playerIntervene.getConnectSite())) {
            throw new BadDataException("无法获取服务器连接，请联系管理员！");
        }
        if (ObjectUtils.isEmpty(playerIntervene.getPlayerId())) {
            throw new BadDataException("无法获取玩家ID，请检查后重试，或联系管理员！");
        }
        String interveneUrl = ServerUrlService.getAccountInterveneUrl(playerIntervene.getConnectSite());
        AccountIntervene accountIntervene = new AccountIntervene();
        accountIntervene.setIp(playerIntervene.getRequestIp());
        accountIntervene.setProviderId(playerIntervene.getProviderId());
        accountIntervene.setOptTime(new Date().getTime());
        accountIntervene.setOptType(2);
        accountIntervene.setUserId(playerIntervene.getPlayerId());
        Gson gson = new Gson();
        try {
            String result = RequestHandleUtils.sendRequest(interveneUrl, gson.toJson(accountIntervene));
            InterveneResult interveneResult = gson.fromJson(DESUtils.getDesString(result), InterveneResult.class);
            log.debug(interveneResult);
            responseDispellingFrozen(playerIntervene, accountIntervene, interveneResult);
            return interveneResult.getStatus();
        } catch (ConnectException e) {
            log.error(e);
            throw new BizException("无法连接服务器，请稍后重试，或联系管理员！");
        } catch (BizException e) {
            throw e;
        } catch (Exception e) {
            log.error(e);
            throw new BizException("查询服务器出错了，请联系管理员！");
        }
    }

    public List<GMAuditPlayerIntervene> findFrozenPlayers() {
        Query query = em.createNamedQuery("GMAuditPlayerIntervene.findFrozenPlayers");
        return query.getResultList();
    }

    private void UpdateFrozenPlayer(List<Long> accountList) {
        StringBuilder sb = new StringBuilder();
        List<Object> parameters = getUpdateFrozenPlayerSql(accountList, sb);
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

    private List<Object> getUpdateFrozenPlayerSql(final List<Long> accountList, StringBuilder sb) {
        List<Object> parameters = new ArrayList<Object>();
        if (accountList.size() == 0) {
            return parameters;
        }
        sb.append("update gm_audit_player_intervene l ");
        sb.append("set disable = '1', update_time = sysdate ");
        sb.append("where player_id in (");
        for (int i = 1; i <= accountList.size(); i++) {
            Long playerId = accountList.get(i - 1);
            sb.append(i == 1 ? ("?" + i) : (",?" + i));
            parameters.add(playerId);
        }
        sb.append(") and intervene_type=1 and disable = 0");
        return parameters;
    }

    private void responseFrozenAccount(PlayerInterveneAp playerIntervene, AccountIntervene accountIntervene,
                                       InterveneResult interveneResult) throws BizException {
        if (ObjectUtils.isEmpty(interveneResult) || ObjectUtils.isEmpty(interveneResult.getStatus())) {
            throw new BizException("无法获取封号信息！");
        } else if (InterveneResult.FAIL_STATUS.equals(interveneResult.getStatus().getStatusCode())) {
            throw new BizException(interveneResult.getStatus().getAlertMsg());
        } else if (ObjectUtils.isEmpty(interveneResult.getAccountList())) {
            throw new BizException("无法获取封号信息！");
        }
        List<GMAuditPlayerIntervene> list = new ArrayList<GMAuditPlayerIntervene>();
        for (Long id : interveneResult.getAccountList()) {
            GMAuditPlayerIntervene p = new GMAuditPlayerIntervene();
            p.setAutoDispelDate(new Timestamp(accountIntervene.getDispellingDate()));
            p.setDisable("0");
            p.setInterveneType("1");
            p.setPlayerId(id);
            p.setReason(playerIntervene.getCause());
//            p.setPlayerName(interveneResult.g);
            p.setServerId(playerIntervene.getServerId());
            p.setProviderId(playerIntervene.getProviderId());
            p.setOptUserId(playerIntervene.getUserId());
            list.add(p);
        }
        UpdateFrozenPlayer(interveneResult.getAccountList());
        batchSaveBo(list);
    }

    private void responseDispellingFrozen(PlayerInterveneAp playerIntervene, AccountIntervene accountIntervene,
                                          InterveneResult interveneResult) throws BizException {
        if (ObjectUtils.isEmpty(interveneResult) || ObjectUtils.isEmpty(interveneResult.getStatus())) {
            throw new BizException("无法获取封号信息！");
        } else if (InterveneResult.FAIL_STATUS.equals(interveneResult.getStatus().getStatusCode())) {
            throw new BizException(interveneResult.getStatus().getAlertMsg());
        }
        String nativeSql = "update gm_audit_player_intervene set disable = '1' , update_time = sysdate where pi_id = :piId and server_id = :serverId and player_id = :playerId ";
        Query query = em.createNativeQuery(nativeSql);
        query.setParameter("piId", playerIntervene.getPiId());
        query.setParameter("serverId", playerIntervene.getServerId());
        query.setParameter("playerId", playerIntervene.getPlayerId());
        int result = query.executeUpdate();

        GMAuditPlayerIntervene p = new GMAuditPlayerIntervene();
        p.setDisable("0");
        p.setInterveneType("2");
        p.setPlayerId(playerIntervene.getPlayerId());
        p.setServerId(playerIntervene.getServerId());
        p.setProviderId(playerIntervene.getProviderId());
        p.setOptUserId(playerIntervene.getUserId());
        em.persist(p);
        log.debug("update count:" + result);
    }

    public Long applySupplyAward(ApplySupplyAwardAp applySupplyAward, BaseUserSession userSession){
        Gson gson = new Gson();
        SupplyAward supplyAwardTo = buildSupplyAward(applySupplyAward);
        GMAuditApply bo = buildGMAuditSupplyAward(applySupplyAward, gson.toJson(supplyAwardTo), userSession);
        em.persist(bo);
        return bo.getAaId();
    }

    public List<GMAuditApply> findGMAuditApply(){
        Query query = em.createNamedQuery("GMAuditApply.findApplyList");
        return query.getResultList();
    }

    public Status approveSupplyAward(ApproveSupplyAwardAp approveSupplyAward, BaseUserSession userSession) throws BizException {
        Gson gson = new Gson();
        log.debug(gson.toJson(approveSupplyAward));

        Query q = em.createQuery("select g from GMAuditApply g where aaId = ?1");
        q.setParameter(1, approveSupplyAward.getApplyId());
        List<GMAuditApply> list =q.getResultList();
        if(list == null || list.size() < 1){
            return new Status("0", "无法获取申请记录");
        }
        GMAuditApply apply = list.get(0);
        SupplyAward supplyAwardTo = gson.fromJson(apply.getJsonData(), SupplyAward.class);

        String supplyAwardUrl = ServerUrlService.getSupplyAwardUrl(approveSupplyAward.getConnectSite());
        try {
            String result = RequestHandleUtils.sendRequest(supplyAwardUrl, gson.toJson(supplyAwardTo));
            Status status = gson.fromJson(DESUtils.getDesString(result), Status.class);
            log.debug(status);
            apply.setOptStatus(AuditApplyOptStatus.APPROVED.getStatusCode());
            apply.setSendResult(status.getStatusCode());
            apply.setUpdateTime(new Timestamp(System.currentTimeMillis()));
            em.merge(apply);
            return status;
        } catch (ConnectException e) {
            log.error(e);
            throw new BizException("无法连接服务器，请稍后重试，或联系管理员！");
        } catch (Exception e) {
            log.error(e);
            throw new BizException("查询服务器出错了，请联系管理员！");
        }
    }

    private SupplyAward buildSupplyAward(ApplySupplyAwardAp applySupplyAward) {
        SupplyAward to = new SupplyAward();
        Long startDate = null;
        Long endDate = null;
        try {
            startDate = DateUtils.parseDate(applySupplyAward.getStartDate()).getTime();
            endDate = DateUtils.parseDate(applySupplyAward.getEndDate()).getTime();
        } catch (ParseException e) {
        }
        to.setStartDate(startDate);
        to.setEndDate(endDate);
        to.setPlayers(applySupplyAward.getPlayers());
        to.setProviderId(applySupplyAward.getProviderId());
        to.setIp(applySupplyAward.getRequestIp());
        to.setEmailTitle(applySupplyAward.getEmailTitle());
        to.setEmailContent(applySupplyAward.getEmailContent());
        to.setGem(applySupplyAward.getGem());
        to.setIsRecharge(applySupplyAward.getIsRecharge());
        to.setGold(applySupplyAward.getGold());
        to.setExp(applySupplyAward.getExp());
        if (!ObjectUtils.isEmpty(applySupplyAward.getSuppleExtend())) {
            SupplyAwardExtendJasonBean ext = applySupplyAward.getSuppleExtend();
            to.setConditionInfos(ext.getConditionInfos());
            to.setHonorMap(ext.getHonorMap());
            to.setItems(ext.getItems());
            to.setEquips(ext.getEquips());
            to.setHeros(ext.getHeros());
            to.setPets(ext.getPets());
        }
        return to;
    }

    private GMAuditApply buildGMAuditSupplyAward(ApplySupplyAwardAp applySupplyAward, String jsonData, BaseUserSession userSession) {
        GMAuditApply bo = new GMAuditApply();
        bo.setServerId(applySupplyAward.getServerId());
        bo.setProviderId(applySupplyAward.getProviderId());
        bo.setOptType(String.format("%d", AuditApplyOptType.SUPPLY_AWARD.getOptType()));
        bo.setOptUserId(applySupplyAward.getUserId());
        if (userSession instanceof UserSession) {
            UserSession us = (UserSession) userSession;
            bo.setOptUserName(us.getUser().getUserName());
        }
        bo.setOptTime(new Timestamp(new Date().getTime()));
        bo.setOptStatus(String.format("%s", AuditApplyOptStatus.APPLY.getStatusCode()));
        bo.setJsonData(jsonData);
        bo.setDisable("0");
        bo.setUpdateTime(new Timestamp(new Date().getTime()));
        return bo;
    }
}
