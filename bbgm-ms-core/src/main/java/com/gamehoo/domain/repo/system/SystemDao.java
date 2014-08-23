package com.gamehoo.domain.repo.system;

import com.gamehoo.domain.bo.system.SysCode;

import java.util.List;

public interface SystemDao {
    public List<SysCode> findAllEnableCode();
}
