<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册成功信息</title>

</head>
<body>
    <%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password= request.getParameter("password");
%>
<body >
<table width="100%" height="100%" cellpadding="0" cellspacing="0">
    <tr>
        <td valign="middle" align="center">
            你输入的注册信息：<br>
            用户名：<%=username%><br>
            密码：<%=password%><br>
            <a href="login.jsp"><span style="color: red">回到登录页面</span></a>
        </td>
    </tr>
</table>
</body>
</html>


