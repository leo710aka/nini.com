package com.itheima.web;

import com.itheima.pojo.Brand;
import com.itheima.pojo.Img;
import com.itheima.service.BrandService;
import com.itheima.service.ImgService;
import com.itheima.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectByIdServlet")
public class SelectByIdServlet extends HttpServlet {
    private BrandService service = new BrandServiceImpl();
    private ImgService service1 =  new ImgService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String id = request.getParameter("id");

        Brand brand = service.selectById(Integer.parseInt(id));
        request.setAttribute("brand",brand);
        Img img = service1.selectById(Integer.parseInt(id));
        request.setAttribute("imgUrl",img.getImgUrl());

        request.getRequestDispatcher("/client/goods_detail.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doGet(request,response);
    }
}
