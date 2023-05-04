package com.itheima.pojo;

import java.time.LocalDateTime;

public class UserViewInfo {

    private Integer userid;
    private String username;
    private Integer brandid;
    private String brandname;
    private String goodsname;
    private LocalDateTime viewbegin;
    private LocalDateTime viewend;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getBrandid() {
        return brandid;
    }

    public void setBrandid(Integer brandid) {        this.brandid = brandid;    }

    public String getBrandName() {
        return brandname;
    }

    public void setBrandName(String brandName) {
        this.brandname = brandName;
    }

    public String getGoodsName() {
        return goodsname;
    }

    public void setGoodsName(String goodsName) {
        this.goodsname = goodsName;
    }

    public LocalDateTime getViewbegin() {
        return viewbegin;
    }

    public void setViewbegin(LocalDateTime viewbegin) {
        this.viewbegin = viewbegin;
    }

    public LocalDateTime getViewend() {
        return viewend;
    }

    public void setViewend(LocalDateTime viewend) {
        this.viewend = viewend;
    }

    @Override
    public String toString() {
        return "UserViewInfo{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", brandid=" + brandid +
                ", brandName='" + brandname + '\'' +
                ", goodsName='" + goodsname + '\'' +
                ", viewbegin=" + viewbegin +
                ", viewend=" + viewend +
                '}';
    }

}
