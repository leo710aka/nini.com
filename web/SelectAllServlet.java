package com.itheima.web;

import com.alibaba.fastjson.JSON;
import com.itheima.pojo.Brand;
import com.itheima.pojo.SaleLoginInfo;
import com.itheima.service.BrandService;
import com.itheima.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectAllServlet")
public class SelectAllServlet extends HttpServlet {

    private BrandService brandService = new BrandServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer saleid = (Integer) request.getSession().getAttribute("saleid");
        request.setAttribute("saleid",saleid);

        //管理员 全部商品; 销售 部分商品
        if(saleid==1){
            List<Brand> brands = brandService.selectAll();
            request.setAttribute("brands",brands);
        }else{
            List<Brand> brands = brandService.selectBySaleId(saleid);
            request.setAttribute("brands",brands);
        }
        request.getRequestDispatcher("/server/brand.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}