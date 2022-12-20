package com.itheima.web;

import com.itheima.pojo.User;
import com.itheima.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    private UserService service = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username1");
        String password = request.getParameter("password1");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        boolean flag = service.register(user);

        if (flag){
            request.setAttribute("msg","注册成功，请登录");
            request.getRequestDispatcher("/login_register.jsp").forward(request,response);
        }else {
            request.setAttribute("msg","用户名已存在，注册失败");
            request.getRequestDispatcher("/login_register.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
