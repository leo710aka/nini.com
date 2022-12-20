package com.itheima.web;

import com.itheima.pojo.Brand;
import com.itheima.pojo.Shoppingrecord;
import com.itheima.service.BrandService;
import com.itheima.service.ShoppingrecordService;
import com.itheima.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/shoppingRecord")
public class ShoppingRecord extends HttpServlet {

    private ShoppingrecordService service = new ShoppingrecordService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Shoppingrecord> shoppingrecords = service.selectAll();

        request.setAttribute("shoppingrecords",shoppingrecords);
        request.getRequestDispatcher("/server/shoppingrecord.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}