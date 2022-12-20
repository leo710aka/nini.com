<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
    <link rel="stylesheet" href="./client/assets/css/shopping-cart.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">
</head>

<header>
    <div class="header-top">
        <div class="container">
            <ul class="header-social-container">
                <li>
                    <a href="#" class="social-link">
                        <ion-icon name="logo-wechat"></ion-icon>
                    </a>
                </li>
                <li>
                    <a href="#" class="social-link">
                        <ion-icon name="logo-twitter"></ion-icon>
                    </a>
                </li>
                <li>
                    <a href="#" class="social-link">
                        <ion-icon name="logo-linkedin"></ion-icon>
                    </a>
                </li>
            </ul>

            <div class="header-top-actions">

                <select name="currency">
                    <option value="eur">CNY ¥</option>
                    <option value="usd">USD &dollar;</option>
                </select>

                <select name="language">
                    <option value="en-CN">Chinese</option>
                    <option value="en-US">English</option>
                </select>

                <a href="/nini/login_register.jsp" style="font-size: 15px; color: blue; font-family:Georgia, 'Times New Roman', Times, serif;">退出登录</a>

            </div>

        </div>

    </div>

    <div class="header-main">

        <div class="container">

            <a href="/nini/homePage" class="header-logo">
                <img src="./client/assets/images/logo/ni.png" alt="back to home page" width="120" height="36">
            </a>

            <div class="header-search-container">

                <input type="search" name="search" class="search-field" placeholder="输入商品名以搜索...">

                <button class="search-btn">
                    <ion-icon name="search-outline"></ion-icon>
                </button>

            </div>

            <div class="header-user-actions">

                <p>
                    <b>欢迎</b>${username}
                </p>

                <button class="action-btn">
                    <ion-icon name="person-outline"></ion-icon>
                </button>

                <p>
                    购物车
                </p>

                <!-- 购物车 -->
                <button class="action-btn">
                    <ion-icon name="bag-handle-outline"></ion-icon>
<%--                    <span class="count">0</span>--%>
                </button>

            </div>
        </div>
    </div>
</header>


<body>
<br>

    <table border="1" cellspacing="0" width="80%">
        <tr>
            <th>商品id</th>
            <th>品牌</th>
            <th>商品名称</th>
            <th>单价</th>
            <th>购买数量</th>
        </tr>
        <c:forEach items="${shoppingrecords}" var="shoppingrecord">
            <tr align="center">
                <td>${shoppingrecord.id}</td>
                <td>${shoppingrecord.brandName}</td>
                <td>${shoppingrecord.goodsName}</td>
                <td>${shoppingrecord.price}</td>
                <td>${shoppingrecord.count}</td>
            </tr>
        </c:forEach>
    </table>

    <div style="margin-top: 30px;margin-left: 59pc;">
        <h3>总价：${total}</h3>
    </div>

    <div class="a25">
        <a href="./client/getEmail.html"><button class="a25color1">结算</button></a>
    </div>

<script src="./client/assets/js/script.js"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>