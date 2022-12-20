package com.itheima.mapper;

import com.itheima.pojo.Brand;
import com.itheima.pojo.Shoppingcart;
import com.itheima.pojo.Shoppingrecord;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ShoppingrecordMapper {

    @Insert("insert into tb_shoppingrecord values(#{id},#{brandname},#{goodsname},#{price},#{count})")
    void add(Shoppingrecord shoppingrecord);

    @Select("select * from tb_shoppingrecord")
    List<Shoppingrecord> selectAll();


    }
