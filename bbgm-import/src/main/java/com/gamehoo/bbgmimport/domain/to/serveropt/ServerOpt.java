package com.gamehoo.bbgmimport.domain.to.serveropt;

import com.gamehoo.bbgmimport.domain.to.OptTo;

public class ServerOpt extends OptTo{
    private ServerStatus status;
    private UserRole uRole;

    public ServerStatus getStatus() {
        return status;
    }

    public void setStatus(ServerStatus status) {
        this.status = status;
    }

    public UserRole getuRole() {
        return uRole;
    }

    public void setuRole(UserRole uRole) {
        this.uRole = uRole;
    }
}
