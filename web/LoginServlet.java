package com.itheima.web;

import com.alibaba.fastjson.JSON;
import com.itheima.pojo.*;
import com.itheima.service.*;
import com.itheima.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.*;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private UserService service = new UserService();
    private BrandService brandService = new BrandServiceImpl();
    private ImgService imgService = new ImgService();
    private ShoppingrecordService shoppingrecordService = new ShoppingrecordService();
    private ViewrecordService viewrecordService = new ViewrecordService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = service.login(username, password);
        HttpSession session = request.getSession();

        if(user!=null){

            request.setAttribute("username",username);
            session.setAttribute("userid", user.getId());
            session.setAttribute("username",username);

            //取出数据库中的品牌
            List<Brand> brandss = brandService.selectAll();
            //事实上只能用前16个（因为只有前16个品牌对应的照片
            List<Brand> brands = new ArrayList<>();
            for (int i=0;i<16;i++){
                brands.add(brandss.get(i));
            }

            //推荐系统
            //品牌评分:初始20
            Map<Integer, Integer> map = new HashMap<>();
            for (int i=0;i<brands.size();i++){
                map.put(brands.get(i).getId(),20);
            }

            //订单加分：根据订单信息加分（6~10）
            Map<Integer, Integer> map1 = new HashMap<>();
            List<Shoppingrecord> shoppingrecords = shoppingrecordService.selectAll();
            for (int i=0;i<brands.size();i++){
                map1.put(brands.get(i).getId(),0);
            }//初始化
            for (int i=0;i<shoppingrecords.size();i++){
                map1.put(shoppingrecords.get(i).getId(),map1.get(shoppingrecords.get(i).getId())+1);
            }
            List<Integer> keylist = new ArrayList<>();   //将hashmap转化出两个list
            List<Integer> valuelist = new ArrayList<>(); //根据value对key降序排序
            for(Map.Entry<Integer, Integer> entry : map1.entrySet()) {
                keylist.add(entry.getKey());
                valuelist.add(entry.getValue());
            }//初始化keylist和valuelist
            for(int i=0; i<valuelist.size(); i++) {
                int maxpos = i;
                Integer max = valuelist.get(i);
                for(int j=i+1; j<valuelist.size(); j++) {
                    if(valuelist.get(j).compareTo(max)>0) {
                        maxpos = j;
                        max = valuelist.get(j);
                    }
                }//选择排序（按值排序）
                if(maxpos!=i) {
                    Integer temp = valuelist.get(i);
                    valuelist.set(i, max);
                    valuelist.set(maxpos, temp);//valuelist排序
                    Integer templ = keylist.get(i);
                    keylist.set(i, keylist.get(maxpos));
                    keylist.set(maxpos, templ);//同时排序keylist
                }
            }
            map.put(keylist.get(0),map.get(keylist.get(0))+20);//前八加分
            map.put(keylist.get(1),map.get(keylist.get(1))+15);
            map.put(keylist.get(2),map.get(keylist.get(2))+12);
            map.put(keylist.get(3),map.get(keylist.get(3))+10);
            map.put(keylist.get(4),map.get(keylist.get(4))+9);
            map.put(keylist.get(5),map.get(keylist.get(5))+8);
            map.put(keylist.get(6),map.get(keylist.get(6))+7);
            map.put(keylist.get(7),map.get(keylist.get(7))+6);

            //浏览加分：根据浏览记录加分（10~1）
            Map<Integer, Integer> map2 = new HashMap<>();
            List<UserViewInfo> viewRecords = viewrecordService.selectAll();
            for (int i=0;i<brands.size();i++){
                map2.put(brands.get(i).getId(),0);
            }//初始化
            for (int i=0;i<viewRecords.size();i++){
                map2.put(viewRecords.get(i).getBrandid(),map2.get(viewRecords.get(i).getBrandid())+1);
            }
            List<Integer> keylist1 = new ArrayList<>();
            List<Integer> valuelist1 = new ArrayList<>();
            for(Map.Entry<Integer, Integer> entry : map2.entrySet()) {
                keylist1.add(entry.getKey());
                valuelist1.add(entry.getValue());
            }//初始化
            for(int i=0; i<valuelist1.size(); i++) {
                int maxpos = i;
                Integer max = valuelist1.get(i);
                for(int j=i+1; j<valuelist1.size(); j++) {
                    if(valuelist1.get(j).compareTo(max)>0) {
                        maxpos = j;
                        max = valuelist1.get(j);
                    }
                }//选择排序（按值排序）
                if(maxpos!=i) {
                    Integer temp = valuelist1.get(i);
                    valuelist1.set(i, max);
                    valuelist1.set(maxpos, temp);//valuelist排序
                    Integer templ = keylist1.get(i);
                    keylist1.set(i, keylist1.get(maxpos));
                    keylist1.set(maxpos, templ);//同时排序keylist
                }
            }
            map.put(keylist1.get(0),map.get(keylist1.get(0))+10);//前八加分
            map.put(keylist1.get(1),map.get(keylist1.get(1))+8);//前八加分
            map.put(keylist1.get(2),map.get(keylist1.get(2))+6);//前八加分
            map.put(keylist1.get(3),map.get(keylist1.get(3))+5);//前八加分
            map.put(keylist1.get(4),map.get(keylist1.get(4))+4);//前八加分
            map.put(keylist1.get(5),map.get(keylist1.get(5))+3);//前八加分
            map.put(keylist1.get(6),map.get(keylist1.get(6))+2);//前八加分
            map.put(keylist1.get(7),map.get(keylist1.get(7))+1);//前八加分


            //根据评分后，从所有品牌中随机选8个（评分高的选择概率大
            List<Brand> brandsss = new ArrayList<>();
            //判断是否已选入
            Map<Integer, Integer> exist = new HashMap<>();
            for (int i=0;i<brands.size();i++){
                exist.put(brands.get(i).getId(),0);
            }//初始化
            int flag = 0;
            while (flag<8){
                Collections.shuffle(brands); // 混乱
                // 生成 Random 对象(1~50
                Random random = new Random();
                int number = random.nextInt(50);
                for (int i=0;i<brands.size();i++){
                    if (number < map.get(brands.get(i).getId()) && exist.get(brands.get(i).getId())==0){
                        if(flag>=8){
                            break;
                        }
                        brandsss.add(brands.get(i));
                        exist.put(brands.get(i).getId(),1);
                        flag++;
                    }
                }
            }



            //查照片
            List<String> imgs = new ArrayList<>();
            for (int i=0;i<8;i++){
                String img = imgService.selectById(brandsss.get(i).getId()).getImgUrl();
                imgs.add(img);
            }

            request.setAttribute("brands",brandsss);
            request.setAttribute("imgs",imgs);
            session.setAttribute("brands",brandsss);
            session.setAttribute("imgs",imgs);
            session.setAttribute("logintime", LocalDateTime.now());

            request.getRequestDispatcher("/client/home.jsp").forward(request,response);

        }else {
            request.setAttribute("msg","用户名或密码错误");
            request.getRequestDispatcher("/login_register.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
