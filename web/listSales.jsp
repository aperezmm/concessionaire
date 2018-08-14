<%-- 
    Document   : listSales
    Created on : 13-ago-2018, 21:49:25
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List sales</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>List sales</h1>
        <c:forEach var="s" items="${sales}">
            |${s.idBill}| |${s.clientName}| |${s.idClient}| |${s.licensePlate}| |${s.price}|
            <a onclick="return confirm('Are you ready?')" href="SaleServlet?action=delete&id=${s.idBill}">Delete</a>
            <hr>
        </c:forEach>
    </body>
</html>
