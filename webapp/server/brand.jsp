<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商品管理</title>
<%--    <link href="./css/top.css" type="text/css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="./server/css/top.css">

</head>

<body>
<!--头部导航栏 -->
<div class="nav" >
    <ul class="ul_top">
        <c:if test="${saleid==1}">
            <li><a href="/nini/SaleController">销售人员</a></li>
        </c:if>
        <li><a href="/nini/selectAllServlet">商品管理</a></li>
        <li><a href="/nini/shoppingRecord">销售记录</a></li>
        <li><a href="/nini/viewRecord">浏览记录</a></li>
        <li><a href="/nini/SaleLogout">退出登录</a></li>
    </ul>
</div>
<br><br><br><br><br><hr>

<h2>商品管理</h2>
<br>
<input type="button" value="新增商品" id="add" style="width:100px; height:30px;" >
<br>
<hr>
<table border="1" cellspacing="0" width="80%">
    <tr>
        <th>商品ID</th>
        <th>品牌名称</th>
        <th>商品名称</th>
        <th>价格</th>
        <th>商品介绍</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${brands}" var="brand" varStatus="status">
        <tr align="center">
            <td>${brand.id}</td>
<%--            <td>${status.count}</td>--%>
            <td>${brand.brandName}</td>
            <td>${brand.goodsName}</td>
            <td>${brand.price}</td>
            <td>${brand.description}</td>
            <c:if test="${brand.status == 1}">
                <td>启用</td>
            </c:if>
            <c:if test="${brand.status != 1}">
                <td>禁用</td>
            </c:if>
            <td>
                <a href="/nini/selectBrandByIdServlet?id=${brand.id}">修改</a>
<%--                <a href="/nini/deleteBrandByIdServlet?id=${brand.id}">删除</a>--%>
                <a>删除</a>
            </td>
        </tr>
    </c:forEach>
</table>

<script>
    document.getElementById("add").onclick = function (){
        location.href = "/nini/server/addBrand.jsp";
    }
</script>

</body>
</html>