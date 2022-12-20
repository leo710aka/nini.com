package com.itheima.mapper;

import com.itheima.pojo.Img;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;


public interface ImgMapper {

    @Select("select * from tb_img where id = #{id}")
    @ResultMap("imgResultMap")
    Img selectById(int id);

}
