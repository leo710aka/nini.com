<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>商品详情页</title>
  <link rel="stylesheet" href="./client/assets/css/style.css">
  <link rel="stylesheet" href="./client/assets/css/22.css">
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
        <a href="/nini/shoppingCart">
          <button class="action-btn">
            <ion-icon name="bag-handle-outline"></ion-icon>
<%--            <span class="count">0</span>--%>
          </button>
        </a>

      </div>
    </div>
  </div>
</header>

<br>
<br>

<body>
<div id="all">
  <div style="clear: both;"></div>
  <div id="content">
    <div class="a1">
      <img class="big" src="./client/assets/images/products/${imgUrl}">
    </div>
    <div class="a2">
      <h2>${brand.getGoodsName()}</h2>
      <div class="a21">
        <div class="a211">
          <span class="color">售价</span>
          <span class="prices">${brand.getPrice()}</span>
          <span class="yis">已售66件</span>
        </div>
        <div class="a22">
          <p></p>
          <span class="color">描述</span>
          <span class="neir">${brand.getDescription()}</span>
          <p></p>
        </div>
        <div class="a23">
          <p></p>
          <span class="color">配送说明</span>
          <p>北京、上海、广州、深圳、天津、重庆、南京、长沙</p>
        </div>
        <div class="a23">
          <p></p>
          <span class="color">特殊说明</span>
        </div>

        <br>
        <div class="a25">
          <a href="/nini/jiaGouServlet?id=${brand.getId()}"><button class="a25color1">加入购物车</button></a>
        </div>
      </div>
    </div>
  </div>
  <div style="clear: both;"></div>
</div>
</body>


<script src="./client/assets/js/script.js"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
