package com.gamehoo.domain.vo;

public class Status {
    private String statusCode;
    private String ex;
    private String alertMsg;

    public Status() {

    }

    public Status(String statusCode, String alertMsg) {
        this.statusCode = statusCode;
        this.alertMsg = alertMsg;
    }

    public Status(String statusCode, String alertMsg, Throwable ex) {
        this.statusCode = statusCode;
        this.alertMsg = alertMsg;
        this.ex = ex.getLocalizedMessage();
    }

    public String getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(String statusCode) {
        this.statusCode = statusCode;
    }

    public String getEx() {
        return ex;
    }

    public void setEx(String ex) {
        this.ex = ex;
    }

    public String getAlertMsg() {
        return alertMsg;
    }

    public void setAlertMsg(String alertMsg) {
        this.alertMsg = alertMsg;
    }

    @Override
    public String toString() {
        return "Status{" +
                "statusCode='" + statusCode + '\'' +
                ", ex='" + ex + '\'' +
                ", alertMsg='" + alertMsg + '\'' +
                '}';
    }
}
