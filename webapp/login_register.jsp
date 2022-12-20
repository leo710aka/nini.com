<%--
  Created by IntelliJ IDEA.
  User: 蔡枫
  Date: 2022/12/7
  Time: 1:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/fontawesome.min.css" integrity="sha512-xX2rYBFJSj86W54Fyv1de80DWBq7zYLn2z0I9bIhQG+rxIF6XVJUpdGnsNHWRa6AvP89vtFupEPDP8eZAtu9qA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/login_register.css" />
    <title>login/signup</title>
</head>
<body>
<div id="errorMsg">${msg}</div>
    
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form action="/nini/registerServlet" method="post" id="form1">
            <h1>用户注册</h1>
            <div class="social-container">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"> <i class="fab fa-google-plus-g"></i> </a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>

            </div>
            <span>使用用户名和密码注册</span>
            <input type="text"     id="username1" name="username1" placeholder="用户名" />
            <input type="password" id="password1" name="password1" placeholder="密码" />
            <input type="submit" class="button" value="注册">
            <!-- <button>注册</button> -->
        </form>
    </div>

    <div class="form-container sign-in-container" id="loginDiv">
        <form action="/nini/loginServlet" method="post" id="form">
            <h1>用户登录</h1>
            <div class="social-container">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-google-plus-g"></i> </a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <input type="text"     id="username" name="username" placeholder="用户名" />
            <input type="password" id="password" name="password" placeholder="密码" />
            <a href="#">忘记密码？</a>
            <input type="submit" class="button" value="登录">
        </form>
    </div>

    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>欢迎回来!</h1>
                <p>使用用户名和密码登录</p>
                <button class="ghost" id="signIn">用户登录</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Hi! 你好</h1>
                <p>没有账号？欢迎注册</p>
                <button class="ghost" id="signUp">用户注册</button>
            </div>
        </div>
    </div>
</div>
<footer>
    <p>
        Copyright © ___ All Rights Reserved.
    </p>
</footer>

<script src="js/login_register.js"></script>
</body>
</html>

