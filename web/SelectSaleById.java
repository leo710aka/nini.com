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

@WebServlet("/selectSaleById")
public class SelectSaleById extends HttpServlet {
    private SaleService service = new SaleService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        Sale sale = service.selectById(Integer.parseInt(id));

        request.setAttribute("sale",sale);

        request.getRequestDispatcher("/server/updateSale.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doGet(request,response);
    }
}
