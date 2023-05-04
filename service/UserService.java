package com.itheima.service;

import com.itheima.mapper.UserLoginInfoMapper;
import com.itheima.mapper.UserMapper;
import com.itheima.mapper.UserViewInfoMapper;
import com.itheima.pojo.User;
import com.itheima.pojo.UserLoginInfo;
import com.itheima.pojo.UserViewInfo;
import com.itheima.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class UserService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    public User login(String username, String password){
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        User user = mapper.select(username, password);
        sqlSession.close();
        return user;
    }

    public boolean register(User user){
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        User u = mapper.selectByUsername(user.getUsername());
        if (u==null) {
            mapper.add(user);
            sqlSession.commit();
        }
        sqlSession.close();
        return u==null;
    }

    public void logininfo(UserLoginInfo userLoginInfo){
        SqlSession sqlSession = factory.openSession();
        UserLoginInfoMapper mapper = sqlSession.getMapper(UserLoginInfoMapper.class);
        mapper.add(userLoginInfo);
        sqlSession.commit();
        sqlSession.close();
    }

    public void viewinfo(UserViewInfo userViewInfo){
        SqlSession sqlSession = factory.openSession();
        UserViewInfoMapper mapper = sqlSession.getMapper(UserViewInfoMapper.class);
        mapper.add(userViewInfo);
        sqlSession.commit();
        sqlSession.close();
    }

}
