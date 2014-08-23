package com.gamehoo.bbgmimport.web.adapter;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.bbgmimport.domain.to.ImportData;
import com.gamehoo.common.exception.BadDataException;

import java.util.List;

public interface IAdapter<T> {
    // todo add filter to filter dirty data.

    public boolean verifyBo(final ImportData data);

    public List<T> serverBoHandler(final ImportData data, final BaseServerBo bo);
}
