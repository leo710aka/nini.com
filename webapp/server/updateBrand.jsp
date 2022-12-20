<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>修改商品</title>
</head>
<body>
<h3>修改商品</h3>
<form action="/nini/updateBrandServlet?id=${brand.id}" method="post">

    <%--隐藏域--%>
<%--    <input type="hidden" name="id" value="${brand.id}">--%>

    品牌名称：<input name="brandName" value="${brand.brandName}"><br>
    商品名称：<input name="goodsName" value="${brand.goodsName}"><br>
    价格：<input name="price" value="${brand.price}"><br>
    描述信息：<textarea rows="5" cols="20" name="description">${brand.description}</textarea><br>
    状态：
    <input type="radio" name="status" value="0" checked>禁用
    <input type="radio" name="status" value="1">启用<br>

    <input type="submit" value="提交">
</form>
</body>
</html>