# JSP内容——商城的登录与实现
##商城的登录注册界面（成功or失败）
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
##商城的注册页面
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
</head>
<body align="center">
<h2>新用户注册</h2>
<form action="register_success.jsp" method="post">
    <table align="center">
        <tr align="right">
            <td>请输入用户名:</td>
            <td><input type="text" name=username autofocus="autofocus"></td>
        </tr>
        <tr align="right">
            <td>请输入密码:</td>
            <td><input type="text" name=password></td>
        </tr>
        <tr align="right">
            <td>请输入确认密码:</td>
            <td><input type="text" name=refill></td>
        </tr>
    </table>
    <input type="submit" name=register value="注册" >
    <input type="reset" name=refill value="重置" >
</form>
</body>
</html>


##登录成功页面
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

##登陆失败
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆失败</title>
</head>
<body>
<table width="100%" height="100%" cellpadding="0" cellspacing="0" >
    <tr>
        <td valign="middle" align="center">
            <h2><span style="color: red">登录失败，请检查用户名或者密码！！！</span>
                <a href="login.jsp">重新登录</a></h2>
            <h3><span style="color: aquamarine">没有账号</span>
                <a href="register.jsp">注册账号</a></h3>
        </td>
    </tr>
</table>

</body>
</html>

##注册成功页面
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


#商城页面和我的购物车
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
##购买过程
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; ISO-8859-1" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

    request.setCharacterEncoding("utf-8");

    Map<String, Integer> map1 = (Map<String, Integer>)session.getAttribute("map1");
    if(map1 == null){
        map1 = new HashMap<String, Integer>();
        map1.put("笔记本", 0);
        map1.put("汽车", 0);
        map1.put("香水", 0);
        map1.put("书籍", 0);
    }

    String[] buys = request.getParameterValues("item");

    for(String item:buys){
        if(item.equals("flower")){
            int num1 = map1.get("香水").intValue();
            map1.put("香水", num1+1);
        }
        else if(item.equals("book")){
            int num2 = map1.get("书籍").intValue();
            map1.put("书籍", num2+1);
        }
        else if(item.equals("pen")){
            int num3 = map1.get("文具").intValue();
            map1.put("文具", num3+1);
        }
    }

    session.setAttribute("map1", map1);
    request.getRequestDispatcher("car.jsp").forward(request, response);
%>
#我的购物车
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







