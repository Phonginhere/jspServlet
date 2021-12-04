<%-- 
    Document   : editStudent
    Created on : Dec 4, 2021, 9:51:51 PM
    Author     : Phong_learning
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Student</title>
    </head>
    <body>
        <h1>Edit!</h1>
          <div class="container">
             <form action="student-list" method="post">
                 <input name="id" value="${std.id}" type="hidden">
                <div class="form­group"> 
                    <label for="name">Name:</label>
                    <input required="true" name="name" value="${std.fullName}" type="text" class="form-control" >
                </div>
                <div class="form­group">
                    <label for="age">Age:</label>
                    <input required="true" name="age" value="${std.age}" type="number" class="form-control">
                </div>
                <div class="form­group">
                    <label for="address">Address:</label>
                    <input type="text" name="address" value="${std.address}" class="form-control" id="address">
                </div>
                <button type="submit" class="btn btn-success">Submit</button>
            </form>
        </div>
    </body>
</html>
