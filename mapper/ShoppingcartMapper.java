package com.itheima.mapper;

import com.itheima.pojo.Shoppingcart;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface ShoppingcartMapper {

    @Select("select * from tb_shoppingcart where id = #{id}")
    Shoppingcart selectById(Integer id);

    @Insert("insert into tb_shoppingcart values(#{id},1)")
    void add(Integer id);

    @Update("update tb_shoppingcart set count=count+1 where id=#{id}")
    void update(Integer id);

    @Select("select * from tb_shoppingcart")
    List<Shoppingcart> selectAll();

    @Delete("delete from tb_shoppingcart")
    void deleteAll();

}
