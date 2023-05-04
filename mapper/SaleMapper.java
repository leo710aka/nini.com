package com.itheima.mapper;

import com.itheima.pojo.Brand;
import com.itheima.pojo.Sale;
import com.itheima.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface SaleMapper {

    @Select("select * from tb_sale where username = #{username} and password = #{password}")
    Sale select(@Param("username") String username, @Param("password")  String password);

    @Select("select * from tb_sale")
    List<Sale> selectAll();

    @Insert("insert into tb_sale values(null,#{username},#{password})")
    void add(Sale sale);

    @Select("select * from tb_sale where id = #{id}")
    Sale selectById(int id);

    @Update("update tb_sale set username = #{username},password = #{password} where id = #{id}")
    void update(Sale sale);

}
