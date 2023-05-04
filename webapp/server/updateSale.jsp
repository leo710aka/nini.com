<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改销售账号信息</title>
</head>

<body style="position: relative;height: 0px;">
<div style="position: absolute;
        left:50%;
        top:50%;
        padding: 5px 70px 30px 70px;
        transform: translate(-50%,-95%);
        border: 3px solid #222222;
        border-radius: 10px;
">
    <h3>修改销售信息</h3>
    <form action="/nini/updateSale?id=${sale.id}" method="post">
        账号名：<input name="username" value="${sale.username}"><br>
        密码： <input name="password" value="${sale.password}"><br>
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