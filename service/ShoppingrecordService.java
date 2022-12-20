package com.itheima.service;

import com.itheima.mapper.BrandMapper;
import com.itheima.mapper.ShoppingrecordMapper;
import com.itheima.pojo.Brand;
import com.itheima.pojo.Shoppingcart;
import com.itheima.pojo.Shoppingrecord;
import com.itheima.util.SqlSessionFactoryUtils;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class ShoppingrecordService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    public void jiesuan(List<Shoppingrecord> shoppingrecords) {

        SqlSession sqlSession = factory.openSession();

        ShoppingrecordMapper mapper = sqlSession.getMapper(ShoppingrecordMapper.class);

        for (int i = 0; i < shoppingrecords.size(); i++) {

            mapper.add(shoppingrecords.get(i));

            sqlSession.commit();
        }

        sqlSession.close();
    }

    public List<Shoppingrecord> selectAll() {

        SqlSession sqlSession = factory.openSession();

        ShoppingrecordMapper mapper = sqlSession.getMapper(ShoppingrecordMapper.class);

        List<Shoppingrecord> shoppingrecords = mapper.selectAll();

        sqlSession.close();

        return shoppingrecords;

    }
}