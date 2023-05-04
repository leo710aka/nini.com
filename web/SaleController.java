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
import java.util.List;

@WebServlet("/SaleController")
public class SaleController extends HttpServlet {

    private SaleService saleService = new SaleService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer saleid = (Integer) request.getSession().getAttribute("saleid");
        request.setAttribute("saleid",saleid);

        List<Sale> sales = saleService.selectAll();
        request.setAttribute("sales",sales);

        request.getRequestDispatcher("/server/sale.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}