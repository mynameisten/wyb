<%@ page import="java.util.*,java.lang.Integer"  contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>
<form id="form1" method="post">
    <table border=0 cellpadding=0 cellspacing=0 style="width:100% ;height:100%" bgcolor="#ffebcd">
        <tr>
            <td style="width:100%;" align="center" valign="middle">
                <table style="background-color:yellow; margin:auto">
                    <tr>
                        <td align="center"> 欢迎登录 </td>

                        <table align="center">
                            <tr>
                                <td>用户名：</td><td><input type="text" name="username" placeholder="输入你的用户名"></td>
                            </tr>
                            <tr>
                                <td>密码：</td><td><input type="password" name="password" placeholder="输入密码"></td>
                            </tr>
                            <tr>
                                <td colspan="2",align="center">
                                    <input type="submit" value="登录">
                                    <input type="reset" value="重置">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p align="center"><a href="register.jsp" color=blue>注册用户</a></p>
                                </td>
                            </tr>
                        </table>

                    </tr>             
                </table>
            </td>
        </tr>
    </table>
</form>
<%
    if(request.getParameter("username")!=null
            &&request.getParameter("password")!=null){
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        if(username.equals("wyb")&&password.equals("123")){
            session.setAttribute("loginUsername", username);
            session.setAttribute("loginUser",username);
            response.sendRedirect("login_success.jsp");
        }
        else{

            response.sendRedirect("login_failure.jsp");

        }
    }
%>
</body>
</html>
