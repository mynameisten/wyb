<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,java.io.*" %>
<html>
<body>
<h2 >菜单</h2>
</body>
<h1>购物车</h1>
<p>欢迎<%=session.getAttribute("loginUsername")%></p>
<p><a href="mall.jsp">查看商城</a> </p>
<p><a href="car.jsp">我的购物车</a></p>

</html>