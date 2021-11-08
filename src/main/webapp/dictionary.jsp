<%@ page import="com.sun.javafx.collections.MappingChange" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Phong Vu
  Date: 11/8/2021
  Time: 5:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>


<body>
<%
    Map<String,String> list = new HashMap<>();

%>
<%
    list.put("Hello","xin chao");
    list.put("Dog","Con cho");
    list.put("Cat","Con meo");
    list.put("Sunnie","Mat troi");
    list.put("Dxi","nyc CT");

    String search = request.getParameter("search");
    String result = list.get(search);
    if(result!=null){
        out.println("Word: " + search);
        out.println("Result: " + result);
    }
    else {
        out.println("Not found");
    }
%>
</body>
</html>
