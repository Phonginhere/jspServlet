<%-- 
    Document   : assign
    Created on : Dec 7, 2021, 6:45:41 PM
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
        <p>Do you really want to assign ${product.name} to other category</p>
        <form action="AssignServlet" method="post">
             <input type="hidden" name="productId" value="${product.productID}">
            <select name="cateId">
            <c:forEach var="i" items="${category}">
                <option value="${i.categoryID}">${i.name}</option>
            </c:forEach>
        </select>
            <input type="submit" value="Update">
        </form>
        
    </body>
</html>
