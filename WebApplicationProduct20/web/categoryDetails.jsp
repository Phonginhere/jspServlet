<%-- 
    Document   : categoryDetails
    Created on : Dec 7, 2021, 8:23:06 AM
    Author     : Phong_learning
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Description</th>
            </tr>
            <c:forEach var="i" items="${products}">
                <tr>
                <th>${i.productID}</th>
                <th>${i.name}</th>
                <th>${i.price}</th>
                <th>${i.description}</th>
            </tr>
            </c:forEach>
            
         </table>
    </body>
</html>
