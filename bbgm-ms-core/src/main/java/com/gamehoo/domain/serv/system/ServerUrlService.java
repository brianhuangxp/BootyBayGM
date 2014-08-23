package com.gamehoo.domain.serv.system;

import com.gamehoo.common.exception.BadDataException;
import com.gamehoo.tools.ObjectUtils;

public class ServerUrlService {
    public static final String PLAYER_DETAIL_QUERY = "gr?cmd=detail";
    public static final String ANNOUNCEMENT = "gr?cmd=an";
    public static final String ACCOUNT_INTERVENE = "gr?cmd=ai";
    public static final String SUPPLY_AWARD = "gr?cmd=sa";

    private static String fixConnectSite(String connectSite) throws BadDataException {
        if (ObjectUtils.isEmpty(connectSite)) {
            throw new BadDataException("");
        }
        //todo if it's https but miss https?
        if (!connectSite.toLowerCase().startsWith("http")) {
            connectSite = "http://" + connectSite;
        }
        if (!connectSite.endsWith("/")) {
            connectSite += "/";
        }
        return connectSite;
    }

    public static String getPlayerDetailQueryUrl(String connectSite) throws BadDataException {
        return fixConnectSite(connectSite) + PLAYER_DETAIL_QUERY;
    }

    public static String getAnnouncementUrl(String connectSite) throws BadDataException {
        return fixConnectSite(connectSite) + ANNOUNCEMENT;
    }

    public static String getAccountInterveneUrl(String connectSite) throws BadDataException {
        return fixConnectSite(connectSite) + ACCOUNT_INTERVENE;
    }

    public static String getSupplyAwardUrl(String connectSite) throws BadDataException {
        return fixConnectSite(connectSite) + SUPPLY_AWARD;
    }
}
