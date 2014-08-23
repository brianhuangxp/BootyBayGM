package com.gamehoo.domain.serv.system;

import com.gamehoo.domain.bo.system.SysCode;
import com.gamehoo.domain.repo.system.SystemDao;
import com.gamehoo.domain.vo.system.CodeVo;
import com.gamehoo.tools.ObjectUtils;
import com.google.gson.Gson;
import org.springframework.web.context.ContextLoader;

import java.util.ArrayList;
import java.util.List;

public class CodeTable {
    private static CodeTable install;
    private Boolean isWriting = false;
    private List<SysCode> sysCodes = new ArrayList<SysCode>();

    private SystemDao systemDao;

    private CodeTable() {
        systemDao = (SystemDao) ContextLoader.getCurrentWebApplicationContext().getBean("systemDao");
    }

    public static CodeTable getInstall() {
        if (install == null) {
            install = new CodeTable();
        }
        return install;
    }

    private List<SysCode> getAllCodes() {
        if (isWriting) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
            }
            return getAllCodes();
        } else {
            if (sysCodes.size() <= 0) {
                reachCodeList();
            }
            return sysCodes;
        }
    }

    public List<SysCode> getCodes(String codeType) {
        return getCodes(codeType, false);
    }

    public List<SysCode> getCodes(String codeType, boolean isCascade) {
        getAllCodes();
        List<SysCode> cloneCodes = (ArrayList<SysCode>) ObjectUtils.cloneObject((ArrayList) sysCodes);
        List<SysCode> targetCodes = new ArrayList<SysCode>();
        if ("-1".equals(codeType)) {
            targetCodes = cloneCodes;
        } else {
            for (SysCode code : cloneCodes) {
                if (code.getCodeType().equals(codeType)) {
                    targetCodes.add(code);
                }
            }
        }
        clearCascade(targetCodes, isCascade);
        return targetCodes;
    }

    public SysCode getCode(String codeType, String codeValue, boolean isCascade) {
        getAllCodes();
        List<SysCode> cloneCodes = (ArrayList<SysCode>) ObjectUtils.cloneObject((ArrayList) sysCodes);
        for (SysCode code : cloneCodes) {
            if (code.getCodeType().equals(codeType) && code.getValue().equals(codeValue)) {
                if (!isCascade) {
                    code.setChildCodes(null);
                }
                return code;
            }
        }
        return null;
    }

    public SysCode getCode(String codeType, String codeValue) {
        return getCode(codeType, codeValue, false);
    }

    public List<SysCode> getChildCodes(String codeType, String codeValue, boolean isCascade) {
        SysCode sysCode = getCode(codeType, codeValue, true);
        List<SysCode> sysCodeList = sysCode.getChildCodes();
        clearCascade(sysCodeList, isCascade);
        return sysCodeList;
    }

    public CodeVo codeBo2CodeVo(SysCode code) {
        if ("1".equals(code.getDisplay())) {
            return null;
        }
        Gson gson = new Gson();
        code.setChildCodes(filterDisplay(code.getChildCodes()));
        return gson.fromJson(gson.toJson(code), CodeVo.class);
    }

    private List<SysCode> filterDisplay(List<SysCode> codeList) {
        List<SysCode> targetList = new ArrayList<SysCode>();
        if (codeList != null) {
            for (SysCode code : codeList) {
                if ("1".equals(code.getDisplay())) {
                    code.setChildCodes(filterDisplay(code.getChildCodes()));
                    targetList.add(code);
                }
            }
        }
        return targetList;
    }

    public List<CodeVo> codeBo2CodeVo(List<SysCode> codeList) {
        Gson gson = new Gson();
        SysCode code = new SysCode();
        code.setChildCodes(filterDisplay(codeList));
        CodeVo codeVo = gson.fromJson(gson.toJson(code), CodeVo.class);
        return codeVo.getChildCodes();
    }

    public void reset() {
        if (isWriting) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
            }
            reset();
        } else {
            sysCodes.clear();
        }
    }

    private void clearCascade(List<SysCode> targetCodes, boolean isCascade) {
        if (targetCodes != null && !isCascade) {
            for (SysCode code : targetCodes) {
                code.setChildCodes(null);
            }
        }
    }

    private void reachCodeList() {
        isWriting = true;
        synchronized (sysCodes.toString()) {
            List<SysCode> codeCacheList = systemDao.findAllEnableCode();
            for (SysCode code : codeCacheList) {
                if (!ObjectUtils.isEmpty(code.getParentCodeId())) {
                    SysCode parent = new SysCode(code.getParentCodeId());
                    int idx = codeCacheList.indexOf(parent);
                    if (idx >= 0) {
                        codeCacheList.get(idx).putChildCode(code);
                    }
                }
            }
            sysCodes = codeCacheList;
            isWriting = false;
        }
    }

}
