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
            <a href="index.jsp"><span style="color: red">前往起始页</span> </a>
        </td>
    </tr>
</table>

</body>
</html>
