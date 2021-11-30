<%-- 
    Document   : assign.jsp
    Created on : Nov 30, 2021, 7:27:54 AM
    Author     : Phong_learning
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            alert('${fail}');
        </script>
    </head>
    <body>
        <h1>Do you want to assign product ${assign} to other category!</h1>
        <%! String driverName = "com.mysql.jdbc.Driver"; %>
        <%!String url = "jdbc:mysql://localhost:3306/productdb"; %>
        <%!String user = "root"; %>
        <%!String psw = ""; %>
        <form action="addServlet" method="post">
            <%
                Connection con = null;
                PreparedStatement ps = null;
                try {
                    Class.forName(driverName);
                    con = DriverManager.getConnection(url, user, psw);
                    String sql = "SELECT * FROM category";
                    ps = con.prepareStatement(sql);
                    ResultSet rs = ps.executeQuery();
            %>
            <p>Select Name :
                <select name="name_category">
                    <%
                        while (rs.next()) {
                            String fname = rs.getString("Name");
                    %>
                    <option value="<%=fname%>"><%=fname%></option>
                    <%
                        }
                    %>
                </select>
            </p>
            <%
                } catch (SQLException sqe) {
                    out.println(sqe);
                }
            %>
        <br/> <br/>
            <button type="submit" name="name" value="${assign}" class="btn-link">Assign this product to other category</button>
        </form>
    </body>
</html>
