package com.itheima.web;

import com.alibaba.fastjson.JSON;
import com.itheima.pojo.Brand;
import com.itheima.pojo.User;
import com.itheima.service.BrandService;
import com.itheima.service.UserService;
import com.itheima.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private UserService service = new UserService();
    private BrandService brandService = new BrandServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = service.login(username, password);
        HttpSession session = request.getSession();

        if(user!=null){

            request.setAttribute("username",username);
            session.setAttribute("username",username);

            //取出数据库中的品牌
            List<Brand> brands = brandService.selectAll();
            request.setAttribute("brands",brands);
            session.setAttribute("brands",brands);

            request.getRequestDispatcher("/client/home.jsp").forward(request,response);

        }else {
            request.setAttribute("msg","用户名或密码错误");
            request.getRequestDispatcher("/login_register.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
