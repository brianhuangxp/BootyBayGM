package com.gamehoo.bbgmimport.domain.enumtype;

public enum AttrModuleType {
    USER_ACTION(1),
    DAILY_ACTION(0);

    public Integer module;

    AttrModuleType(Integer module){
        this.module = module;
    }

    public Integer getModule() {
        return module;
    }
}
