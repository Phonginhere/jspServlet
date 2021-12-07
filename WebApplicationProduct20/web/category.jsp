<%-- 
    Document   : category
    Created on : Dec 7, 2021, 7:57:02 AM
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
                <th>Description</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="d" items="${displayCategories}"> 
                  <tr>
                      <td>${d.categoryID}</td>
                      <td>${d.name}</td>
                      <td>${d.description}</td>
                      <td><a href="?id_cate=${d.categoryID}">Show Products</a></td>
            </tr>
            </c:forEach>
          
        </table>
    </body>
</html>
