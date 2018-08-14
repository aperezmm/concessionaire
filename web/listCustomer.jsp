<%-- 
    Document   : listCustomer
    Created on : 13-ago-2018, 21:42:54
    Author     : alejo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List customer</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>List customer</h1>
        <c:forEach var="c" items="${customers}">
            |${c.id}| |${c.username}| |${c.email}| |${c.names}|
            |<a onclick="return confirm('Are you ready?')" href="CustomerServlet?action=delete&id=${c.id}">Delete</a>
            <hr>
        </c:forEach>
    </body>
</html>
