<%-- 
    Document   : productlist
    Created on : Nov 25, 2021, 7:41:10 PM
    Author     : Phong_learning
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>alert('${succesful}');
        function functionToExecute(a) {
            alert(a);
}
        </script>
        <style>
            .btn-link {
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
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
            Statement st = con.createStatement();
            String sql = "select * from product";
            ResultSet rs = st.executeQuery(sql);
        %>
        <a class="table-row" href="./productadd.jsp">Add</a>
        <TABLE BORDER="1">
            <TR>
                <TH>ID</TH>
                <TH>Product Name</TH>
                <TH>Price</TH>
                <TH>Quantity</TH>
                <TH>Delete</TH>
            </TR>
            <% while (rs.next()) {%>
            <TR>
                <TD> <%= rs.getString(1)%></td>
                <TD> <%= rs.getString(2)%></TD>
                <TD> <%= rs.getString(3)%></TD>
                <TD> <%= rs.getString(4)%></TD>
                <TD><form action="DeleteServlet" method="post">
                <button type="submit" name="id" value="<%= rs.getString(1)%>" class="btn-link">Delete</button>
                </form>
                </TD>
            </TR>
            <% }%>
        </table> 
    </body>
</html>
