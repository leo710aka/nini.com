package com.itheima.mapper;

import com.itheima.pojo.Brand;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface BrandMapper {

    /**
     * 查询所有
     * @return
     */
    @Select("select * from tb_brand")
    @ResultMap("brandResultMap")
    List<Brand> selectAll();

    /**
     * 添加数据
     * @param brand
     */
    @Insert("insert into tb_brand values(null,#{brandName},#{goodsName},#{price},#{description},#{status},#{saleid})")
    void add(Brand brand);

    @Select("select * from tb_brand where id = #{id}")
    @ResultMap("brandResultMap")
    Brand selectById(int id);

    @Update("update tb_brand set brand_name = #{brandName},goods_name = #{goodsName},price = #{price}," +
            "description = #{description},status = #{status} where id = #{id}")
    void update(Brand brand);

    @Delete("delete from tb_brand where id = #{id}")
    void deleteById(int id);


}
