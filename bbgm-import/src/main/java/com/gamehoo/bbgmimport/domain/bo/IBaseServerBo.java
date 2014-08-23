package com.gamehoo.bbgmimport.domain.bo;

import java.util.List;

public interface IBaseServerBo {
    public Long getPrimaryKey();

    public void setParentId(Long id);

    public List<BaseServerBo> getChildBoList();
}
