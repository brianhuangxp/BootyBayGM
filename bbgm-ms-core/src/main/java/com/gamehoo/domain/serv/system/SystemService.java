package com.gamehoo.domain.serv.system;

import com.gamehoo.domain.bo.system.SysCode;

import java.util.List;

public interface SystemService {
    public List<SysCode> findAllEnableCode();
}
