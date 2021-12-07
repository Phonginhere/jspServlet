<%-- 
    Document   : product
    Created on : Dec 7, 2021, 4:47:05 PM
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
                <th>Actions</th>
            </tr>
            <c:forEach var="i" items="${displayProducts}">
                <tr>
                <td>${i.productID}</td>
                <td>${i.name}</td>
                <td>${i.price}</td>
                <td>${i.description}</td>
                <td><a href="?id_pt=${i.productID}">Assign this product to other category</a></td>
            </tr>
            </c:forEach>
            
         </table>
    </body>
</html>
