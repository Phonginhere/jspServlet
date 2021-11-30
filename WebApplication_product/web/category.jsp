<%-- 
    Document   : category
    Created on : Nov 29, 2021, 9:44:56 PM
    Author     : Phong_learning
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .btn-link{
                border: none;
                outline: none;
                background: none;
                cursor: pointer;
                color: #0000EE;
                padding: 0;
                text-decoration: underline;
                font-family: inherit;
                font-size: inherit;
            }
        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdb", "root", "");
            Statement st = con.createStatement();
            String sql = "Select * from category";
            ResultSet rs = st.executeQuery(sql);
        %>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Show Products</th>
            </tr>
            
             <% while(rs.next()){ %>
            <tr>
                <td><%= rs.getInt(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><form action="product_category.jsp"><button type="submit" name="id_cate" value="<%= rs.getString(1) %>" class="btn-link">Show Products</button> </form></td>
            </tr>
           <%   } %>
        </table>
    </body>
</html>
