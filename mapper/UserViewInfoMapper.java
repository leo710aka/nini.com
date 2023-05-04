package com.itheima.mapper;

import com.itheima.pojo.Shoppingrecord;
import com.itheima.pojo.UserLoginInfo;
import com.itheima.pojo.UserViewInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserViewInfoMapper {

    @Insert("insert into tb_user_view_info values(#{userid},#{username},#{brandid},#{brandname},#{goodsname},#{viewbegin},#{viewend})")
    void add(UserViewInfo userViewInfo);

    @Select("select * from tb_user_view_info")
    List<UserViewInfo> selectAll();

}
