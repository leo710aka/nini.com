package com.itheima.mapper;

import com.itheima.pojo.Brand;
import com.itheima.pojo.Sale;
import com.itheima.pojo.SaleLoginInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface SaleLoginInfoMapper {

//    @Insert("insert into tb_sale_login_info values(#{id},#{username},#{loginTime},#{logoutTime})")
//    void add(SaleLoginInfo saleLoginInfo);
    @Insert("insert into tb_sale_login_info values(#{id},#{username},#{loginTime},#{logoutTime})")
    void add(SaleLoginInfo saleLoginInfo);

}
