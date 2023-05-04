package com.itheima.web;

import com.itheima.pojo.Sale;
import com.itheima.pojo.SaleLoginInfo;
import com.itheima.service.SaleService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet("/SaleLogout")
public class SaleLogout extends HttpServlet {

    private SaleService service = new SaleService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SaleLoginInfo saleLoginInfo = (SaleLoginInfo) request.getSession().getAttribute("saleLoginInfo");

        saleLoginInfo.setLogoutTime(LocalDateTime.now());

        service.logininfo(saleLoginInfo);

        response.sendRedirect("/nini/server/login.html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
