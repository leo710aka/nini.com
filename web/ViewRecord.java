package com.itheima.web;

import com.itheima.pojo.Shoppingrecord;
import com.itheima.pojo.UserViewInfo;
import com.itheima.service.ShoppingrecordService;
import com.itheima.service.ViewrecordService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/viewRecord")
public class ViewRecord extends HttpServlet {

    private ViewrecordService service = new ViewrecordService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer saleid = (Integer) request.getSession().getAttribute("saleid");
        request.setAttribute("saleid",saleid);
        //管理员 全部; 销售 部分
        if(saleid==1){
            List<UserViewInfo> userviewinfos = service.selectAll();
            System.out.println(userviewinfos);
            request.setAttribute("userviewinfos",userviewinfos);
        }
        else{
            List<UserViewInfo> userviewinfos = service.selectBySaleId(saleid);
            request.setAttribute("userviewinfos",userviewinfos);
        }
        request.getRequestDispatcher("/server/viewrecord.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}