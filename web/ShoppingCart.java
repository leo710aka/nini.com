package com.itheima.web;

import com.alibaba.fastjson.JSON;
import com.itheima.pojo.Brand;
import com.itheima.pojo.Shoppingcart;
import com.itheima.pojo.Shoppingrecord;
import com.itheima.service.BrandService;
import com.itheima.service.ShoppingcartService;
import com.itheima.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/shoppingCart")
public class ShoppingCart extends HttpServlet {

    private ShoppingcartService service = new ShoppingcartService();
    private BrandService service1 = new BrandServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Shoppingcart> shoppingCarts = service.selectAll();
        List<Shoppingrecord> shoppingrecords = new ArrayList<>();
        int total=0;

        for(int i=0;i<shoppingCarts.size();i++){

            Shoppingrecord shoppingrecord = new Shoppingrecord();

            shoppingrecord.setId(shoppingCarts.get(i).getId());
            shoppingrecord.setCount(shoppingCarts.get(i).getCount());

            Brand brand = service1.selectById(shoppingCarts.get(i).getId());

            shoppingrecord.setBrandName(brand.getBrandName());
            shoppingrecord.setGoodsName(brand.getGoodsName());
            shoppingrecord.setPrice(brand.getPrice());

            shoppingrecords.add(shoppingrecord);

            total=total+shoppingCarts.get(i).getCount()*brand.getPrice();
        }

        HttpSession session = request.getSession();
        session.setAttribute("shoppingrecords",shoppingrecords);

        request.setAttribute("shoppingrecords",shoppingrecords);
        request.setAttribute("total",total);
        request.getRequestDispatcher("/client/shopping-cart.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}