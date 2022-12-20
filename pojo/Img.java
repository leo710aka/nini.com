package com.itheima.pojo;

public class Img {
    // id 主键
    private Integer id;
    // 品牌名称
    private String imgUrl;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }


    @Override
    public String toString() {
        return "Img{" +
                "id=" + id +
                ", imgUrl='" + imgUrl +
                '}';
    }
}
