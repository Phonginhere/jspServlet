<%-- 
    Document   : studentList
    Created on : Dec 4, 2021, 8:30:22 PM
    Author     : Phong_learning
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <h1 style="text-align: center;"> Quản lí thông tin sinh viên!</h1>
        <form method="get" action="student-list">
            Search: <input type="text" name="studentf" >
            <input type="submit" value="search">
        </form>
        <div class="container">
            <table class="table table-hover hover-bordered">        
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Address</th>
                    <th></th>
                </tr>
                <c:forEach var="d" items="${display}">
                    <tr>
                    <td>${d.id}</td>
                    <td>${d.fullName}</td>
                    <td>${d.age}</td>
                    <td>${d.address}</td>
                    <td><a href="?id_edit=${d.id}"><button class="btn btn-info">Edit</button></a></td>
                    <td><a href="?id_delete=${d.id}"><button class="btn btn-danger">Delete</button></a></td>
                </tr>
                </c:forEach>
            </table>
        </div>
        <div class="container">
             <form action="student-list" method="post">
                <div class="form­group"> 
                    <label for="name">Name:</label>
                    <input required="true" name="name" type="text" class="form-control" >
                </div>
                <div class="form­group">
                    <label for="age">Age:</label>
                    <input required="true" name="age" type="number" class="form-control">
                </div>
                <div class="form­group">
                    <label for="address">Address:</label>
                    <input type="text" name="address" class="form-control" id="address">
                </div>
                <button type="submit" class="btn btn-success">Submit</button>
            </form>
        </div>
    </body>
</html>
