package com.itheima.service;

import com.itheima.mapper.BrandMapper;
import com.itheima.mapper.SaleLoginInfoMapper;
import com.itheima.mapper.SaleMapper;
import com.itheima.mapper.UserMapper;
import com.itheima.pojo.Brand;
import com.itheima.pojo.Sale;
import com.itheima.pojo.SaleLoginInfo;
import com.itheima.pojo.User;
import com.itheima.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class SaleService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();


    public Sale login(String username, String password){
        SqlSession sqlSession = factory.openSession();
        SaleMapper mapper = sqlSession.getMapper(SaleMapper.class);
        Sale sale = mapper.select(username, password);
        sqlSession.close();
        return sale;
    }

    public void logininfo(SaleLoginInfo saleLoginInfo){
        SqlSession sqlSession = factory.openSession();
        SaleLoginInfoMapper mapper = sqlSession.getMapper(SaleLoginInfoMapper.class);
        mapper.add(saleLoginInfo);
        sqlSession.commit();
        sqlSession.close();
    }

    public List<Sale> selectAll() {

        SqlSession sqlSession = factory.openSession();
        SaleMapper mapper = sqlSession.getMapper(SaleMapper.class);
        List<Sale> sales = mapper.selectAll();
        sqlSession.close();
        return sales;

    }

    public void add(Sale sale) {

        SqlSession sqlSession = factory.openSession();
        SaleMapper mapper = sqlSession.getMapper(SaleMapper.class);
        mapper.add(sale);

        sqlSession.commit();//提交事务
        sqlSession.close();

    }

    public Sale selectById(int id){

        SqlSession sqlSession = factory.openSession();

        SaleMapper mapper = sqlSession.getMapper(SaleMapper.class);

        Sale sale = mapper.selectById(id);

        sqlSession.close();

        return sale;
    }

    public void update(Sale sale){

        SqlSession sqlSession = factory.openSession();

        SaleMapper mapper = sqlSession.getMapper(SaleMapper.class);

        mapper.update(sale);

        sqlSession.commit();
        sqlSession.close();

    }

}
