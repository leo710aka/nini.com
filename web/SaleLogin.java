package com.itheima.web;

import com.itheima.pojo.Sale;
import com.itheima.pojo.SaleLoginInfo;
import com.itheima.service.SaleService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet("/SaleLogin")
public class SaleLogin extends HttpServlet {

    private SaleService service = new SaleService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Sale sale = service.login(username, password);
        HttpSession session = request.getSession();

        if(sale!=null){

            SaleLoginInfo saleLoginInfo = new SaleLoginInfo();
            saleLoginInfo.setId(sale.getId());
            saleLoginInfo.setUsername(sale.getUsername());
            saleLoginInfo.setLoginTime(LocalDateTime.now());
            session.setAttribute("saleLoginInfo",saleLoginInfo);
            session.setAttribute("saleid",sale.getId());
            request.getRequestDispatcher("/selectAllServlet").forward(request,response);

        }else {
            response.sendRedirect("/nini/server/login.html");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
