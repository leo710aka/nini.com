package com.itheima.web;

import com.itheima.pojo.Brand;
import com.itheima.service.BrandService;
import com.itheima.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateBrandServlet")
public class UpdateBrandServlet extends HttpServlet {
    private BrandService service = new BrandServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println(1);

        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String brandName = request.getParameter("brandName");
        String goodsName = request.getParameter("goodsName");
        String price = request.getParameter("price");
        String description = request.getParameter("description");
        String status = request.getParameter("status");

        Brand brand = new Brand();
        brand.setId(Integer.parseInt(id));
        brand.setBrandName(brandName);
        brand.setGoodsName(goodsName);
        brand.setPrice(Integer.parseInt(price));
        brand.setDescription(description);
        brand.setStatus(Integer.parseInt(status));

        service.update(brand);

        request.getRequestDispatcher("/selectAllServlet").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }
}
