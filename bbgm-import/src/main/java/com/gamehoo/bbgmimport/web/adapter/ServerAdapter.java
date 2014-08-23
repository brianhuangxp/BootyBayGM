package com.gamehoo.bbgmimport.web.adapter;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.bbgmimport.domain.bo.serveropt.GmTmpRole;
import com.gamehoo.bbgmimport.domain.bo.serveropt.GmTmpServerStatus;
import com.gamehoo.bbgmimport.domain.to.ImportData;
import com.gamehoo.bbgmimport.domain.to.serveropt.ServerOpt;
import com.gamehoo.bbgmimport.domain.to.serveropt.ServerStatus;
import com.gamehoo.bbgmimport.domain.to.serveropt.UserRole;
import com.gamehoo.bbgmimport.domain.vo.ServerVo;
import com.gamehoo.tools.ObjectUtils;

import java.util.ArrayList;
import java.util.List;

public class ServerAdapter extends AbstractAdapter<ServerVo> {
    public boolean verifyBo(final ImportData data) {
        if (data.getsOpts() != null && data.getsOpts().size() > 0) {
            for (ServerOpt opt : data.getsOpts()) {
                if (opt.getStatus() != null || opt.getuRole() != null) {
                    return true;
                }
            }
        }
        return false;
    }

    public List<ServerVo> serverBoHandler(final ImportData data, final BaseServerBo bo) {
        List<ServerVo> result = new ArrayList<ServerVo>();
        for (ServerOpt opt : data.getsOpts()) {
            ServerStatus dStatus = opt.getStatus();
            UserRole dRole = opt.getuRole();
            ServerVo vo = new ServerVo();
            boolean hasData = false;
            if (dStatus != null) {
                GmTmpServerStatus status = buildServerStatus(dStatus, opt);
                vo.setServerStatus(status);
                hasData = true;
            }
            if (dRole != null) {
                GmTmpRole role = buildRole(dRole, opt);
                vo.setRole(role);
                hasData = true;
            }
            if (hasData) {
                result.add(vo);
            }
        }
        return result;
    }

    private GmTmpServerStatus buildServerStatus(final ServerStatus dStatus, final ServerOpt sOpt) {
        GmTmpServerStatus status = new GmTmpServerStatus();
        cloneBaseBo(status);
        status.setDataPersistenceCount(dStatus.getDpNum());
        status.setLastPersistenceTime(ObjectUtils.getTimestamp(dStatus.getLpdTime()));
        status.setLastReceiveRequestTime(ObjectUtils.getTimestamp(dStatus.getLrrTime()));
        status.setOnlineCount(dStatus.getOlNum());
        status.setRegisterCount(dStatus.getrNum());
        status.setReceiveRequestIncremental(dStatus.getRrNum());
        status.setSumReceiveRequestCount(dStatus.getSumRRNum());
        status.setAllianceBlessings(dStatus.getAb());
        status.setAllianceVictories(dStatus.getAv());
        status.setHordeBlessings(dStatus.getHb());
        status.setHordeVictories(dStatus.getHv());
        status.setRecordTime(ObjectUtils.getTimestamp(sOpt.getR()));
        return status;
    }

    private GmTmpRole buildRole(final UserRole dRole, final ServerOpt sOpt) {
        GmTmpRole role = new GmTmpRole();
        cloneBaseBo(role);
        role.setPlayerId(dRole.getpId());
        role.setPlayerName(dRole.getN());
        role.setMac(dRole.getMac());
        role.setUdId(dRole.getUdId());
        role.setVendorId(dRole.getvId());
        role.setOperationType(dRole.getOt());
        role.setIp(dRole.getIp());
        role.setRecordTime(ObjectUtils.getTimestamp(sOpt.getR()));
        return role;
    }
}
