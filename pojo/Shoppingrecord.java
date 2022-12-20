package com.itheima.pojo;

public class Shoppingrecord {
    // id 主键
    private Integer id;
    private String brandname;
    private String goodsname;
    private Integer price;
    private Integer count;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBrandName() {return brandname;}

    public void setBrandName(String brandName) {this.brandname = brandName;}

    public String getGoodsName() {return goodsname;}

    public void setGoodsName(String goodsName) {this.goodsname = goodsName;}

    public Integer getPrice() {return price;}

    public void setPrice(Integer price) {this.price = price;}

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }


    @Override
    public String toString() {
        return "Shoppingcart{" +
                "id=" + id +
                ", brandName='" + brandname +
                ", goodsName='" + goodsname +
                ", price='" + price +
                ", count='" + count +
                '}';
    }
}
