package com.itheima.service;

import com.itheima.mapper.BrandMapper;
import com.itheima.mapper.ShoppingcartMapper;
import com.itheima.pojo.Brand;
import com.itheima.pojo.Shoppingcart;
import com.itheima.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class ShoppingcartService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    public void jiagou(int id){

        SqlSession sqlSession = factory.openSession();

        ShoppingcartMapper mapper = sqlSession.getMapper(ShoppingcartMapper.class);

        Shoppingcart u = mapper.selectById(id);

        if (u==null) {
            mapper.add(id);
            sqlSession.commit();
        }else {
            mapper.update(id);
            sqlSession.commit();
        }

        sqlSession.close();
    }


    public List<Shoppingcart> selectAll() {

        SqlSession sqlSession = factory.openSession();

        ShoppingcartMapper mapper = sqlSession.getMapper(ShoppingcartMapper.class);

        List<Shoppingcart> shoppingcarts = mapper.selectAll();

        sqlSession.close();

        return shoppingcarts;
    }

    public void deleteAll() {

        SqlSession sqlSession = factory.openSession();

        ShoppingcartMapper mapper = sqlSession.getMapper(ShoppingcartMapper.class);

        mapper.deleteAll();

        sqlSession.commit();
        sqlSession.close();

    }

}
