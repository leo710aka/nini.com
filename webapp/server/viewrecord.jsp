<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>浏览记录</title>
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

<h2>浏览记录</h2>
<br>
<hr>
<table border="1" cellspacing="0" width="80%">
    <tr>
        <th>用户ID</th>
        <th>用户名称</th>
        <th>商品ID</th>
        <th>品牌名称</th>
        <th>商品名称</th>
        <th>开始时间</th>
        <th>结束时间</th>
    </tr>

    <c:forEach items="${userviewinfos}" var="userviewinfo" varStatus="status">
        <tr align="center">
            <td>${userviewinfo.userid}</td>
            <td>${userviewinfo.username}</td>
            <td>${userviewinfo.brandid}</td>
            <td>${userviewinfo.brandName}</td>
            <td>${userviewinfo.goodsName}</td>
            <td>${userviewinfo.viewbegin}</td>
            <td>${userviewinfo.viewend}</td>
        </tr>
    </c:forEach>

</table>

</body>
</html>