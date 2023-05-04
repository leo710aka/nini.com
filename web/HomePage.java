package com.itheima.web;

import com.itheima.pojo.Brand;
import com.itheima.pojo.Img;
import com.itheima.pojo.User;
import com.itheima.service.BrandService;
import com.itheima.service.UserService;
import com.itheima.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/homePage")
public class HomePage extends HttpServlet {
    private UserService service = new UserService();
    private BrandService brandService = new BrandServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        String username = (String) session.getAttribute("username");
        List<Brand> brands = (List<Brand>) session.getAttribute("brands");
        List<Img> imgs = (List<Img>) session.getAttribute("imgs");


        request.setAttribute("username",username);
        request.setAttribute("brands",brands);
        request.setAttribute("imgs",imgs);

        request.getRequestDispatcher("/client/home.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
