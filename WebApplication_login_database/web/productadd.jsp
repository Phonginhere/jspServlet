<%-- 
    Document   : productadd
    Created on : Nov 25, 2021, 7:41:42 PM
    Author     : Phong_learning
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>alert('${fail}');</script>
    </head>
    <body>
        <h1 style="text-align: center;">Hello World!</h1>
        <form action="ProductServlet" method="post">
            <table>
            <tr>
                <td>ID</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>Product Name</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td><input type="text" name="quantity"></td>
            </tr>
        </table>
            <input type="submit" value="submit" name="submit">
        </form>
        
    </body>
</html>
