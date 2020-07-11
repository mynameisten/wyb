<%@page import="java.util.*" pageEncoding="UTF-8" contentType="text/html; ISO-8859-1" language="java" %>
<html>
<head>
    <title>商城</title>
</head>
<body>
<h2 align="center">商品列表</h2>
<a href="car.jsp"><h3 align="center">查看我的购物车</h3> </a>
<div align="center">
    <form action="processbuy.jsp" method="post">
        <table border="0" cellspacing="30">
            <tr>
                <th>商品名称</th>
                <th>图片样式</th>
                <th>  购买</th>
                <th>价格</th>
            </tr>
            <tr>
                <td>香水</td>
                <td><img  style="width:100px" src ="image/flower.png" /></td>
                <td><input type="checkbox" name="item" value="flower"></td>
                <td>￥500</td>
            </tr>
            <tr>
                <td>书籍</td>
                <td><img  style="width:70px" src ="image/book.png" /></td>
                <td><input type="checkbox" name="item" value="book"></td>
                <td>￥20</td>
            </tr>
            <tr>
                <td>文具</td>
                <td><img  style="width:100px" src ="image/pen.png" /></td>
                <td><input type="checkbox" name="item" value="pen"></td>
                <td>￥15</td>
            </tr>
        </table>

        <input type="submit" value="购买">
    </form>
</div>
</body>
</html>