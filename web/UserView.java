package com.itheima.web;


import com.itheima.pojo.Brand;
import com.itheima.pojo.UserLoginInfo;
import com.itheima.pojo.UserViewInfo;
import com.itheima.service.BrandService;
import com.itheima.service.UserService;
import com.itheima.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;


@WebServlet("/UserView")
public class UserView extends HttpServlet {

    private UserService service = new UserService();
    private BrandService service1 = new BrandServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer userid = (Integer) request.getSession().getAttribute("userid");
        String username = (String) request.getSession().getAttribute("username");
        Integer brandid = Integer.valueOf(request.getParameter("brandid"));
        Brand brand = service1.selectById(brandid);
        LocalDateTime viewbegin = (LocalDateTime) request.getSession().getAttribute("viewbegin");

        UserViewInfo userViewInfo = new UserViewInfo();
        userViewInfo.setUserid(userid);
        userViewInfo.setUsername(username);
        userViewInfo.setBrandid(brandid);
        userViewInfo.setBrandName(brand.getBrandName());
        userViewInfo.setGoodsName(brand.getGoodsName());
        userViewInfo.setViewbegin(viewbegin);
        userViewInfo.setViewend(LocalDateTime.now());
        //把userViewInfo存进表里
        service.viewinfo(userViewInfo);

        response.sendRedirect("/nini/homePage");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
