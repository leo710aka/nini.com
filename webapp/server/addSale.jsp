<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新增销售账号</title>
</head>

<body style="position: relative;height: 0px;">
<div style="position: absolute;
        left:50%;
        top:50%;
        padding: 5px 70px 30px 70px;
        transform: translate(-50%,-95%);
        border: 3px solid #222222;
        /*background-color: rgba(66,44,88,0.3);*/
        border-radius: 10px;
        /*width:100px; margin:10px auto; padding: 10px；*/
">
    <h3>新增销售账号</h3>
    <form action="/nini/addSale" method="post">
        销售账号：<input name="username"><br>
        账号密码：<input name="password"><br>
        <br>
        <input type="submit" value="提交">
    </form>

</div>
<script type="text/javascript">
    window.onload = function (){
        let clientHeight = window.innerHeight
        console.log(clientHeight)
        let body = document.querySelector("body")
        body.style.height = clientHeight+'px'
    }
</script>
</body>
</html>