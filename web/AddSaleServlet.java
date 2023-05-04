package com.itheima.web;

import com.itheima.pojo.Brand;
import com.itheima.pojo.Sale;
import com.itheima.service.BrandService;
import com.itheima.service.SaleService;
import com.itheima.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addSale")
public class AddSaleServlet extends HttpServlet {
    private SaleService service = new SaleService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Sale sale = new Sale();
        sale.setPassword(password);
        sale.setUsername(username);

        service.add(sale);

        request.getRequestDispatcher("/SaleController").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }
}
