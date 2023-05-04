package com.itheima.service;

import com.itheima.mapper.BrandMapper;
import com.itheima.mapper.ShoppingrecordMapper;
import com.itheima.mapper.UserViewInfoMapper;
import com.itheima.pojo.Brand;
import com.itheima.pojo.Shoppingrecord;
import com.itheima.pojo.UserViewInfo;
import com.itheima.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.ArrayList;
import java.util.List;

public class ViewrecordService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    public List<UserViewInfo> selectAll() {

        SqlSession sqlSession = factory.openSession();

        UserViewInfoMapper mapper = sqlSession.getMapper(UserViewInfoMapper.class);

        List<UserViewInfo> userViewInfos = mapper.selectAll();

        sqlSession.close();

        return userViewInfos;

    }

    public List<UserViewInfo> selectBySaleId(int saleid) {

        SqlSession sqlSession = factory.openSession();
        UserViewInfoMapper mapper = sqlSession.getMapper(UserViewInfoMapper.class);
        BrandMapper mapper1 = sqlSession.getMapper(BrandMapper.class);

        List<UserViewInfo> userViewInfos = mapper.selectAll();
        List<UserViewInfo> userViewInfos1 = new ArrayList<>();

        for (int i =0; i<userViewInfos.size(); i++) {
            //每条销售记录查一下对应销售员
            int brandid = userViewInfos.get(i).getBrandid();
            Brand brand = mapper1.selectById(brandid);
            if(brand.getSaleid() == saleid){
                userViewInfos1.add(userViewInfos.get(i));
            }
        }
        sqlSession.close();
        return userViewInfos1;
    }

}