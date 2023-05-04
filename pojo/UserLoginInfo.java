package com.itheima.pojo;

import java.time.LocalDateTime;

public class UserLoginInfo {

    private Integer id;
    private String username;
    private LocalDateTime logintime;
    private LocalDateTime logouttime;
    private String ip;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public LocalDateTime getLogintime() {
        return logintime;
    }

    public void setLogintime(LocalDateTime logintime) {
        this.logintime = logintime;
    }

    public LocalDateTime getLogouttime() {
        return logouttime;
    }

    public void setLogouttime(LocalDateTime logouttime) {
        this.logouttime = logouttime;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }


}
