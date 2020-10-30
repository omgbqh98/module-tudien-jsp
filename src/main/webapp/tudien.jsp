<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 30/10/2020
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, String> map = new HashMap<>();
%>
<%
    map.put("hello", "xin chào");
    map.put("hi", "chào");

    String search = request.getParameter("word");
    String result = map.get(search);

    if (result != null) {
        out.println("word: " + search);
        out.println("result: " + result);
    } else {
        out.println("not found");
    }
%>
</body>
</html>
