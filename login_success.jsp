<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成功登录</title>
</head>
<body >
<table width="100%" height="100%" cellpadding="0" cellspacing="0" bgcolor="#7fffd4">
    <tr>
        <td valign="middle" align="center">
            欢迎<h3><%=session.getAttribute("loginUsername")%></h3>登录成功!!!<br>
            <p><a href="mall.jsp">查看商城</a>
            <p><a href="car.jsp">查看购物车</a>
            <p><a href="logout.jsp">退出登录</a>
        </td>
    </tr>
</table>index

</body>
</html>
