package com.itheima.mapper;

import com.itheima.pojo.SaleLoginInfo;
import com.itheima.pojo.UserLoginInfo;
import org.apache.ibatis.annotations.Insert;

public interface UserLoginInfoMapper {

    @Insert("insert into tb_user_login_info values(#{id},#{username},#{logintime},#{logouttime},#{ip})")
    void add(UserLoginInfo userLoginInfo);

}
