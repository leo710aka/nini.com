<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>销售人员管理</title>
<%--    <link href="./css/top.css" type="text/css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="./server/css/top.css">

</head>

<body>
<!--头部导航栏 -->
<div class="nav" >
    <ul class="ul_top">
        <c:if test="${saleid==1}">
            <li><a href="/nini/SaleController">销售人员</a></li>
<%--            <button class="layui-btn layui-btn-xs layui-btn-primary " style="margin-left: 15px;width: 90px;" data-type="reload" id="model" onclick="model()">数据模型生成</button>--%>
        </c:if>
        <li><a href="/nini/selectAllServlet">商品管理</a></li>
        <li><a href="/nini/shoppingRecord">销售记录</a></li>
        <li><a href="/nini/viewRecord">浏览记录</a></li>
        <li><a href="/nini/SaleLogout">退出登录</a></li>
    </ul>
</div>
<br><br><br><br><br><hr>

<h2>销售员管理</h2>
<br>
<input type="button" value="新增人员" id="add" style="width:100px; height:30px;" >
<br>
<hr>
<table border="1" cellspacing="0" width="80%">
    <tr>
        <th>销售人员ID</th>
        <th>账号</th>
        <th>密码</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${sales}" var="sale" varStatus="status">
        <tr align="center">
            <td>${sale.id}</td>
            <td>${sale.username}</td>
            <td>${sale.password}</td>
            <td>
                <a href="/nini/selectSaleById?id=${sale.id}">修改</a>
                <a >删除</a>
            </td>
        </tr>
    </c:forEach>
</table>

<script>
    document.getElementById("add").onclick = function (){
        location.href = "/nini/server/addSale.jsp";
    }
</script>

</body>
</html>