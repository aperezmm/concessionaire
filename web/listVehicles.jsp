<%-- 
    Document   : listVehicles
    Created on : 13-ago-2018, 21:45:50
    Author     : alejo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List vehicles</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>List vehicles</h1>
        <c:forEach var="v" items="${vehicles}">
            |${v.licensePlate}| |${v.carBrand}| |${v.carModel}| |${v.price}| |<img src="${v.photo}"/>|
            |<a onclick="return confirm('Are you sure?')" href="VehicleServlet?action=delete&licensePlate=${v.licensePlate}">Delete</a>|
            |<a onclick="return ('Edit')" href="VehicleServlet?action=edit&licensePlate=${v.licensePlate}">Edit</a>|
            <hr/>
        </c:forEach>
    </body>
</html>
