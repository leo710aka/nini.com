package com.itheima.service;

import com.itheima.mapper.BrandMapper;
import com.itheima.mapper.ImgMapper;
import com.itheima.mapper.UserMapper;
import com.itheima.pojo.Brand;
import com.itheima.pojo.Img;
import com.itheima.pojo.User;
import com.itheima.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class ImgService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    public Img selectById(int id){

        SqlSession sqlSession = factory.openSession();

        ImgMapper mapper = sqlSession.getMapper(ImgMapper.class);

        Img img = mapper.selectById(id);

        sqlSession.close();

        return img;
    }

}
