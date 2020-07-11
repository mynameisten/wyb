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