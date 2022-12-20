package com.itheima.web;

import com.itheima.pojo.Shoppingrecord;
import com.itheima.service.ShoppingcartService;
import com.itheima.service.ShoppingrecordService;
import com.itheima.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/shoppingFinish")
public class ShoppingFinish extends HttpServlet {

    private ShoppingrecordService service = new ShoppingrecordService();
    private ShoppingcartService service1 = new ShoppingcartService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<Shoppingrecord> shoppingrecords = (List<Shoppingrecord>) session.getAttribute("shoppingrecords");

        service.jiesuan(shoppingrecords);

        service1.deleteAll();

        response.sendRedirect("/nini/client/yanzheng_success.html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
