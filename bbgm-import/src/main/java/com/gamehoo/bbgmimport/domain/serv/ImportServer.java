package com.gamehoo.bbgmimport.domain.serv;

import com.gamehoo.bbgmimport.domain.bo.BaseServerBo;
import com.gamehoo.bbgmimport.domain.bo.GmTmpImport;
import com.gamehoo.bbgmimport.domain.to.ImportData;
import com.gamehoo.common.exception.BadDataException;

import java.util.List;

public interface ImportServer {
    public void saveImportData(ImportData bo) throws BadDataException;

    public void updateErrorLogin(final ImportData data);
}
