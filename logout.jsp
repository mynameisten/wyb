<%--
  Created by IntelliJ IDEA.
  User: 王二贝
  Date: 2020/7/11
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>退出登录</title>
</head>
<body>
<%
    session.removeAttribute("username");
    response.sendRedirect("login.jsp");
%>
</body>
</html>
