<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>nini.com</title>

    <!--- favicon  -->
    <!-- <link rel="shortcut icon" href="./assets/images/logo/favicon.ico" type="image/x-icon"> -->

    <!--
      - custom css link
    -->
    <link rel="stylesheet" href="./client/assets/css/style.css">

    <!--
      - google font link
    -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

</head>

<body>


<div class="overlay" data-overlay></div>

<!--
  - HEADER
-->

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

                <!-- 收藏夹 -->
<%--                <button class="action-btn">--%>
<%--                    <ion-icon name="heart-outline"></ion-icon>--%>
<%--                    <span class="count">0</span>--%>
<%--                </button>--%>

                <p>
                    购物车
                </p>

                <!-- 购物车 -->
                <a href="/nini/shoppingCart">
                <button class="action-btn">
                    <ion-icon name="bag-handle-outline"></ion-icon>
<%--                    <span class="count">0</span>--%>
                </button>
                </a>

            </div>

        </div>

    </div>

    <nav class="desktop-navigation-menu">

        <div class="container">

            <ul class="desktop-menu-category-list">

                <li class="menu-category">
                    <a href="#" class="menu-title">主页</a>
                </li>

                <li class="menu-category">
                    <a href="#" class="menu-title">服装</a>

                    <div class="dropdown-panel">

                        <ul class="dropdown-panel-list">

                            <li class="menu-title">
                                <a href="#">Electronics</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Desktop</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Laptop</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Camera</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Tablet</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Headphone</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">
                                    <img src="./client/assets/images/electronics-banner-1.jpg" alt="headphone collection" width="250"
                                         height="119">
                                </a>
                            </li>

                        </ul>

                        <ul class="dropdown-panel-list">

                            <li class="menu-title">
                                <a href="#">Men's</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Formal</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Casual</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Sports</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Jacket</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Sunglasses</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">
                                    <img src="./client/assets/images/mens-banner.jpg" alt="men's fashion" width="250" height="119">
                                </a>
                            </li>

                        </ul>

                        <ul class="dropdown-panel-list">

                            <li class="menu-title">
                                <a href="#">Women's</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Formal</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Casual</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Perfume</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Cosmetics</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Bags</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">
                                    <img src="./client/assets/images/womens-banner.jpg" alt="women's fashion" width="250" height="119">
                                </a>
                            </li>

                        </ul>

                        <ul class="dropdown-panel-list">

                            <li class="menu-title">
                                <a href="#">Electronics</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Smart Watch</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Smart TV</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Keyboard</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Mouse</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">Microphone</a>
                            </li>

                            <li class="panel-list-item">
                                <a href="#">
                                    <img src="./client/assets/images/electronics-banner-2.jpg" alt="mouse collection" width="250" height="119">
                                </a>
                            </li>

                        </ul>

                    </div>
                </li>

                <li class="menu-category">
                    <a href="#" class="menu-title">家居</a>
                </li>

                <li class="menu-category">
                    <a href="#" class="menu-title">电器</a>
                </li>

                <li class="menu-category">
                    <a href="#" class="menu-title">生鲜</a>
                </li>

                <li class="menu-category">
                    <a href="#" class="menu-title">图书</a>
                </li>

                <li class="menu-category">
                    <a href="#" class="menu-title">特价</a>
                </li>

                <li class="menu-category">
                    <a href="#" class="menu-title">热卖</a>
                </li>

            </ul>

        </div>

    </nav>

    <div class="mobile-bottom-navigation">

        <button class="action-btn" data-mobile-menu-open-btn>
            <ion-icon name="menu-outline"></ion-icon>
        </button>

        <button class="action-btn">
            <ion-icon name="bag-handle-outline"></ion-icon>

            <span class="count">0</span>
        </button>

        <button class="action-btn">
            <ion-icon name="home-outline"></ion-icon>
        </button>

        <button class="action-btn">
            <ion-icon name="heart-outline"></ion-icon>

            <span class="count">0</span>
        </button>

        <button class="action-btn" data-mobile-menu-open-btn>
            <ion-icon name="grid-outline"></ion-icon>
        </button>

    </div>

    <nav class="mobile-navigation-menu  has-scrollbar" data-mobile-menu>

        <div class="menu-top">
            <h2 class="menu-title">Menu</h2>

            <button class="menu-close-btn" data-mobile-menu-close-btn>
                <ion-icon name="close-outline"></ion-icon>
            </button>
        </div>

        <ul class="mobile-menu-category-list">

            <li class="menu-category">
                <a href="#" class="menu-title">Home</a>
            </li>

            <li class="menu-category">

                <button class="accordion-menu" data-accordion-btn>
                    <p class="menu-title">Men's</p>

                    <div>
                        <ion-icon name="add-outline" class="add-icon"></ion-icon>
                        <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                    </div>
                </button>

                <ul class="submenu-category-list" data-accordion>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Shirt</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Shorts & Jeans</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Safety Shoes</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Wallet</a>
                    </li>

                </ul>

            </li>

            <li class="menu-category">

                <button class="accordion-menu" data-accordion-btn>
                    <p class="menu-title">Women's</p>

                    <div>
                        <ion-icon name="add-outline" class="add-icon"></ion-icon>
                        <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                    </div>
                </button>

                <ul class="submenu-category-list" data-accordion>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Dress & Frock</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Earrings</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Necklace</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Makeup Kit</a>
                    </li>

                </ul>

            </li>

            <li class="menu-category">

                <button class="accordion-menu" data-accordion-btn>
                    <p class="menu-title">Jewelry</p>

                    <div>
                        <ion-icon name="add-outline" class="add-icon"></ion-icon>
                        <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                    </div>
                </button>

                <ul class="submenu-category-list" data-accordion>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Earrings</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Couple Rings</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Necklace</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Bracelets</a>
                    </li>

                </ul>

            </li>

            <li class="menu-category">

                <button class="accordion-menu" data-accordion-btn>
                    <p class="menu-title">Perfume</p>

                    <div>
                        <ion-icon name="add-outline" class="add-icon"></ion-icon>
                        <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                    </div>
                </button>

                <ul class="submenu-category-list" data-accordion>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Clothes Perfume</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Deodorant</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Flower Fragrance</a>
                    </li>

                    <li class="submenu-category">
                        <a href="#" class="submenu-title">Air Freshener</a>
                    </li>

                </ul>

            </li>

            <li class="menu-category">
                <a href="#" class="menu-title">Blog</a>
            </li>

            <li class="menu-category">
                <a href="#" class="menu-title">Hot Offers</a>
            </li>

        </ul>

        <div class="menu-bottom">

            <ul class="menu-category-list">

                <li class="menu-category">

                    <button class="accordion-menu" data-accordion-btn>
                        <p class="menu-title">Language</p>

                        <ion-icon name="caret-back-outline" class="caret-back"></ion-icon>
                    </button>

                    <ul class="submenu-category-list" data-accordion>

                        <li class="submenu-category">
                            <a href="#" class="submenu-title">English</a>
                        </li>

                        <li class="submenu-category">
                            <a href="#" class="submenu-title">Espa&ntilde;ol</a>
                        </li>

                        <li class="submenu-category">
                            <a href="#" class="submenu-title">Fren&ccedil;h</a>
                        </li>

                    </ul>

                </li>

                <li class="menu-category">
                    <button class="accordion-menu" data-accordion-btn>
                        <p class="menu-title">Currency</p>
                        <ion-icon name="caret-back-outline" class="caret-back"></ion-icon>
                    </button>

                    <ul class="submenu-category-list" data-accordion>
                        <li class="submenu-category">
                            <a href="#" class="submenu-title">USD &dollar;</a>
                        </li>

                        <li class="submenu-category">
                            <a href="#" class="submenu-title">EUR &euro;</a>
                        </li>
                    </ul>
                </li>

            </ul>

            <ul class="menu-social-container">

                <li>
                    <a href="#" class="social-link">
                        <ion-icon name="logo-facebook"></ion-icon>
                    </a>
                </li>

                <li>
                    <a href="#" class="social-link">
                        <ion-icon name="logo-twitter"></ion-icon>
                    </a>
                </li>

                <li>
                    <a href="#" class="social-link">
                        <ion-icon name="logo-instagram"></ion-icon>
                    </a>
                </li>

                <li>
                    <a href="#" class="social-link">
                        <ion-icon name="logo-linkedin"></ion-icon>
                    </a>
                </li>

            </ul>

        </div>

    </nav>

</header>





<!--
  - MAIN
-->

<main>

    <!--
      - BANNER
    -->

    <div class="banner">

        <div class="container">

            <div class="slider-container has-scrollbar">

                <div class="slider-item">

                    <img src="./client/assets/images/banner-1.jpg" alt="women's latest fashion sale" class="banner-img">

                    <div class="banner-content">

                        <p class="banner-subtitle">Trending item</p>

                        <h2 class="banner-title">Women's latest fashion sale</h2>

                        <p class="banner-text">
                            starting at &dollar; <b>20</b>.00
                        </p>

                        <a href="#" class="banner-btn">Shop now</a>

                    </div>

                </div>

                <div class="slider-item">

                    <img src="./client/assets/images/banner-2.jpg" alt="modern sunglasses" class="banner-img">

                    <div class="banner-content">

                        <p class="banner-subtitle">Trending accessories</p>

                        <h2 class="banner-title">Modern sunglasses</h2>

                        <p class="banner-text">
                            starting at &dollar; <b>15</b>.00
                        </p>

                        <a href="#" class="banner-btn">Shop now</a>

                    </div>

                </div>

                <div class="slider-item">

                    <img src="./client/assets/images/banner-3.jpg" alt="new fashion summer sale" class="banner-img">

                    <div class="banner-content">

                        <p class="banner-subtitle">Sale Offer</p>

                        <h2 class="banner-title">New fashion summer sale</h2>

                        <p class="banner-text">
                            starting at &dollar; <b>29</b>.99
                        </p>

                        <a href="#" class="banner-btn">Shop now</a>

                    </div>

                </div>

            </div>

        </div>

    </div>







    <!--
      - PRODUCT
    -->
    <%

    %>

    <div class="product-container">

        <div class="container">

            <div class="product-box">


                <!--
                  - PRODUCT GRID
                -->

                <div class="product-main">

                    <h2 class="title">商品</h2>

                    <div class="product-grid">

                        <%--商品1--%>
                        <div class="showcase">

                            <a href="/nini/selectByIdServlet?id=${brands.get(0).getId()}">
                            <div class="showcase-banner">


                                <img src="./client/assets/images/products/p30-2.jpg" alt="Mens Winter Leathers Jackets" width="300" class="product-img default">
                                <img src="./client/assets/images/products/p30.jpg" alt="Mens Winter Leathers Jackets" width="300" class="product-img hover">

                                <p class="showcase-badge">15%</p>

                                <div class="showcase-actions">

                                    <button class="btn-action">
                                        <ion-icon name="heart-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="eye-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="repeat-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="bag-add-outline"></ion-icon>
                                    </button>

                                </div>

                            </div>
                            </a>

                            <div class="showcase-content">

                                <a href="#" class="showcase-category">${brands.get(0).getBrandName()}</a>

                                <a href="/nini/selectByIdServlet?id=${brands.get(0).getId()}">
                                    <h3 class="showcase-title">${brands.get(0).getGoodsName()}</h3>
                                </a>

                                <div class="showcase-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                </div>

                                <div class="price-box">
                                    <p class="price">¥${brands.get(0).getPrice()}</p>
                                    <del>¥${brands.get(0).getPrice()*1.2}</del>
                                    <del></del>
                                </div>

                            </div>

                        </div>


<%--                        商品2--%>
                        <div class="showcase">

                            <a href="/nini/selectByIdServlet?id=${brands.get(1).getId()}">
                            <div class="showcase-banner">
                                <img src="./client/assets/images/products/huawei_watch-2.jpg" alt="MEN Yarn Fleece Full-Zip Jacket" class="product-img default"
                                     width="300">
                                <img src="./client/assets/images/products/huawei_watch.jpg" alt="MEN Yarn Fleece Full-Zip Jacket" class="product-img hover"
                                     width="300">

                                <div class="showcase-actions">
                                    <button class="btn-action">
                                        <ion-icon name="heart-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="eye-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="repeat-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="bag-add-outline"></ion-icon>
                                    </button>
                                </div>
                            </div>
                            </a>

                            <div class="showcase-content">

                                <a href="#" class="showcase-category">${brands.get(1).getBrandName()}</a>

                                <a href="/nini/selectByIdServlet?id=${brands.get(1).getId()}">
                                    <h3 class="showcase-title">${brands.get(1).getGoodsName()}</h3>
                                </a>

                                <div class="showcase-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                </div>

                                <div class="price-box">
                                    <p class="price">¥${brands.get(1).getPrice()}</p>
                                    <del>¥${brands.get(1).getPrice()*1.2}</del>
                                    <del></del>
                                </div>

                            </div>

                        </div>

                        <div class="showcase">

                            <a href="/nini/selectByIdServlet?id=${brands.get(2).getId()}">
                            <div class="showcase-banner">
                                <img src="./client/assets/images/products/geli_kongtiao.jpg" alt="Black Floral Wrap Midi Skirt" class="product-img default"
                                     width="300">
                                <img src="./client/assets/images/products/geli_kongtiao-2.jpg" alt="Black Floral Wrap Midi Skirt" class="product-img hover"
                                     width="300">

                                <p class="showcase-badge angle pink">new</p>

                                <div class="showcase-actions">
                                    <button class="btn-action">
                                        <ion-icon name="heart-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="eye-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="repeat-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="bag-add-outline"></ion-icon>
                                    </button>
                                </div>
                            </div>
                            </a>

                            <div class="showcase-content">

                                <a href="#" class="showcase-category">${brands.get(2).getBrandName()}</a>

                                <a href="/nini/selectByIdServlet?id=${brands.get(2).getId()}">
                                    <h3 class="showcase-title">${brands.get(2).getGoodsName()}</h3>
                                </a>

                                <div class="showcase-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                </div>

                                <div class="price-box">
                                    <p class="price">¥${brands.get(2).getPrice()}</p>
                                    <del>¥${brands.get(2).getPrice()*1.2}</del>
                                    <del></del>
                                </div>

                            </div>

                        </div>


                        <div class="showcase">

                            <a href="/nini/selectByIdServlet?id=${brands.get(3).getId()}">
                            <div class="showcase-banner">
                                <img src="./client/assets/images/products/geli_binxiang.jpg" alt="Pocket Watch Leather Pouch" class="product-img default"
                                     width="300">
                                <img src="./client/assets/images/products/geli_binxiang-2.jpg" alt="Pocket Watch Leather Pouch" class="product-img hover"
                                     width="300">

                                <p class="showcase-badge angle black">sale</p>

                                <div class="showcase-actions">
                                    <button class="btn-action">
                                        <ion-icon name="heart-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="eye-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="repeat-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="bag-add-outline"></ion-icon>
                                    </button>
                                </div>
                            </div>
                            </a>

                            <div class="showcase-content">

                                <a href="#" class="showcase-category">${brands.get(3).getBrandName()}</a>

                                <a href="/nini/selectByIdServlet?id=${brands.get(3).getId()}">
                                    <h3 class="showcase-title">${brands.get(3).getGoodsName()}</h3>
                                </a>

                                <div class="showcase-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                </div>

                                <div class="price-box">
                                    <p class="price">¥${brands.get(3).getPrice()}</p>
                                    <del>¥${brands.get(3).getPrice()*1.2}</del>
                                    <del></del>
                                </div>

                            </div>

                        </div>

                        <div class="showcase">

                            <a href="/nini/selectByIdServlet?id=${brands.get(4).getId()}">
                            <div class="showcase-banner">
                                <img src="./client/assets/images/products/jacket.jpg" alt="Smart watche Vital Plus" class="product-img default"
                                     width="300">
                                <img src="./client/assets/images/products/jacket-2.jpg" alt="Smart watche Vital Plus" class="product-img hover" width="300">

                                <div class="showcase-actions">
                                    <button class="btn-action">
                                        <ion-icon name="heart-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="eye-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="repeat-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="bag-add-outline"></ion-icon>
                                    </button>
                                </div>
                            </div>
                            </a>

                            <div class="showcase-content">

                                <a href="#" class="showcase-category">${brands.get(4).getBrandName()}</a>

                                <a href="/nini/selectByIdServlet?id=${brands.get(4).getId()}">
                                    <h3 class="showcase-title">${brands.get(4).getGoodsName()}</h3>
                                </a>

                                <div class="showcase-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                </div>

                                <div class="price-box">
                                    <p class="price">¥${brands.get(4).getPrice()}</p>
                                    <del>¥${brands.get(4).getPrice()*1.2}</del>
                                    <del></del>
                                </div>

                            </div>

                        </div>

                        <div class="showcase">

                            <a href="/nini/selectByIdServlet?id=${brands.get(5).getId()}">
                            <div class="showcase-banner">
                                <img src="./client/assets/images/products/shoes.jpeg" alt="Womens Party Wear Shoes" class="product-img default"
                                     width="300">
                                <img src="./client/assets/images/products/shoes-2.jpg" alt="Womens Party Wear Shoes" class="product-img hover"
                                     width="300">

                                <p class="showcase-badge angle black">sale</p>

                                <div class="showcase-actions">
                                    <button class="btn-action">
                                        <ion-icon name="heart-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="eye-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="repeat-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="bag-add-outline"></ion-icon>
                                    </button>
                                </div>
                            </div>
                            </a>

                            <div class="showcase-content">

                                <a href="#" class="showcase-category">${brands.get(5).getBrandName()}</a>

                                <a href="/nini/selectByIdServlet?id=${brands.get(5).getId()}">
                                    <h3 class="showcase-title">${brands.get(5).getGoodsName()}</h3>
                                </a>

                                <div class="showcase-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                </div>

                                <div class="price-box">
                                    <p class="price">¥${brands.get(5).getPrice()}</p>
                                    <del>¥${brands.get(5).getPrice()*1.3}</del>
                                    <del></del>
                                </div>

                            </div>

                        </div>


                        <div class="showcase">

                            <a href="/nini/selectByIdServlet?id=${brands.get(6).getId()}">
                            <div class="showcase-banner">
                                <img src="./client/assets/images/products/huasheng.jpg" alt="Trekking & Running Shoes - black" class="product-img default"
                                     width="300">
<%--                                <img src="./client/assets/images/products/sports-4.jpg" alt="Trekking & Running Shoes - black" class="product-img hover"--%>
<%--                                     width="300">--%>

                                <p class="showcase-badge angle black">sale</p>

                                <div class="showcase-actions">
                                    <button class="btn-action">
                                        <ion-icon name="heart-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="eye-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="repeat-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="bag-add-outline"></ion-icon>
                                    </button>
                                </div>
                            </div>
                            </a>

                            <div class="showcase-content">

                                <a href="#" class="showcase-category">${brands.get(6).getBrandName()}</a>

                                <a href="/nini/selectByIdServlet?id=${brands.get(6).getId()}">
                                    <h3 class="showcase-title">${brands.get(6).getGoodsName()}</h3>
                                </a>

                                <div class="showcase-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                </div>

                                <div class="price-box">
                                    <p class="price">¥${brands.get(6).getPrice()}</p>
                                    <del>¥${brands.get(6).getPrice()*1.2}</del>
                                    <del></del>
                                </div>

                            </div>

                        </div>

                        <div class="showcase">

                            <a href="/nini/selectByIdServlet?id=${brands.get(7).getId()}">
                            <div class="showcase-banner">
                                <img src="./client/assets/images/products/xiaweiyiguo.jpeg" alt="Casual Men's Brown shoes" class="product-img default"
                                     width="300">
<%--                                <img src="./client/assets/images/products/shoe-2_1.jpg" alt="Casual Men's Brown shoes" class="product-img hover"--%>
<%--                                     width="300">--%>

                                <div class="showcase-actions">
                                    <button class="btn-action">
                                        <ion-icon name="heart-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="eye-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="repeat-outline"></ion-icon>
                                    </button>

                                    <button class="btn-action">
                                        <ion-icon name="bag-add-outline"></ion-icon>
                                    </button>
                                </div>
                            </div>
                            </a>

                            <div class="showcase-content">

                                <a href="#" class="showcase-category">${brands.get(7).getBrandName()}</a>

                                <a href="/nini/selectByIdServlet?id=${brands.get(7).getId()}">
                                    <h3 class="showcase-title">${brands.get(7).getGoodsName()}</h3>
                                </a>

                                <div class="showcase-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                    <ion-icon name="star-outline"></ion-icon>
                                </div>

                                <div class="price-box">
                                    <p class="price">¥${brands.get(7).getPrice()}</p>
                                    <del>¥${brands.get(7).getPrice()*1.2}</del>
                                    <del></del>
                                </div>

                            </div>

                        </div>



                    </div>

                </div>

            </div>

        </div>

    </div>


    <!--
      - FOOTER
    -->

    <!-- <footer style="">
      <p>
          Copyright © ___ All Rights Reserved.
      </p>
   </footer> -->






    <!--
      - custom js link
    -->
    <script src="./client/assets/js/script.js"></script>

    <!--
      - ionicon link
    -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</html>
