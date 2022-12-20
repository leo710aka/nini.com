<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>添加商品</title>
</head>
<body>
<h3>添加商品</h3>
<form action="/nini/addBrandServlet" method="post">
    品牌名称：<input name="brandName"><br>
    商品名称：<input name="goodsName"><br>
    价格：<input name="price"><br>
    描述信息：<textarea rows="5" cols="20" name="description"></textarea><br>
    状态：
    <input type="radio" name="status" value="0">禁用
    <input type="radio" name="status" value="1">启用<br>

    <input type="submit" value="提交">
</form>
</body>
</html>