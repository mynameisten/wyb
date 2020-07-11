<%@page import="java.util.*" pageEncoding="UTF-8" contentType="text/html; ISO-8859-1" language="java" %>
<html>
<head>
    <title>我的购物车</title>
</head>
<div align="center">
    <h2>结算</h2>
    <%
        Map<String, Integer> map1 = (Map<String, Integer>)session.getAttribute("map1");
    %>

    <table border="0" cellspacing="30">
        <tr>
            <th>商品名称</th>
            <th>数量</th>
            <th>总价</th>
        </tr>
        <tr>
            <td>香水</td>
            <td><%=map1.get("香水")%></td>
            <td><%=map1.get("香水")%>*500</td>
        </tr>
        <tr>
            <td>书籍</td>
            <td><%=map1.get("书籍") %></td>
            <td><%=map1.get("书籍") %>*20</td>
        </tr>
        <tr>
            <td>文具</td>
            <td><%=map1.get("文具")%></td>
            <td><%=map1.get("文具")%>*15</td>
        </tr>
    </table>
    <p>总金额：<%=map1.get("香水")*500+map1.get("书籍")*20+map1.get("文具")*15 %></p>
    <p><a href="mall.jsp">继续购买</a></p>
</div>