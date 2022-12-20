package com.itheima.pojo;

public class Shoppingcart {
    // id 主键
    private Integer id;
    // 品牌名称
    private Integer count;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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
                ", count='" + count +
                '}';
    }
}
