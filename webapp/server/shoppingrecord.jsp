<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>销售记录</title>
    <link rel="stylesheet" href="./server/css/top.css">

</head>

<body>
<!--头部导航栏 -->
<div class="nav" >
    <ul class="ul_top">
        <li><a href="index.html">前台</a></li>
        <li><a href="/nini/selectAllServlet">商品管理</a></li>
        <li><a href="/nini/shoppingRecord">销售记录</a></li>
        <li><a href="#">浏览记录</a></li>
    </ul>
</div>
<br><br><br><br><br><hr>

<h2>销售记录</h2>
<br>
<hr>
<table border="1" cellspacing="0" width="80%">
    <tr>
        <th>商品ID</th>
        <th>品牌名称</th>
        <th>商品名称</th>
        <th>价格</th>
        <th>售出数量</th>

    </tr>

    <c:forEach items="${shoppingrecords}" var="shoppingrecord" varStatus="status">
        <tr align="center">
            <td>${shoppingrecord.id}</td>
            <td>${shoppingrecord.brandName}</td>
            <td>${shoppingrecord.goodsName}</td>
            <td>${shoppingrecord.price}</td>
            <td>${shoppingrecord.count}</td>
        </tr>
    </c:forEach>

</table>

</body>
</html>