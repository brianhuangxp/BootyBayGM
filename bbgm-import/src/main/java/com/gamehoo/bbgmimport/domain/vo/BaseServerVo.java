package com.gamehoo.bbgmimport.domain.vo;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.domain.vo.BaseVo;

import java.util.List;

public abstract class BaseServerVo extends BaseVo{
    public abstract List<BaseServerBo> getBoList();
}
