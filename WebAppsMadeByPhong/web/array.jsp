<%@page import="javax.print.DocFlavor.STRING"%>
<%@page import="java.util.ArrayList"%>

<%-- 
    Document   : arrayjsp
    Created on : Nov 15, 2021, 9:24:34 PM
    Author     : Phong_learning
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<String> names = new ArrayList<String>(); //dat ten voi so nhieu
            ArrayList<String> classes = new ArrayList<String>();
        %>
        <%
            names.add("Leu Tho Tue");
            names.add("Phong");
            names.add("Tu Hoang Anh");

            classes.add("A1908G1");
            classes.add("A1908G2");
            classes.add("A1908G1");
        %>
        <table>
            <tr>
                <th>Tên</th>
                <th>Lớp</th>
            </tr>
            
                <%
                    for (int i = 0; i < names.size(); i++) {
                        if(i % 2 == 0){
                             %><tr style = "color:red"> <td> <%
                             out.println(names.get(i)+ "</td><td>" +classes.get(i)); %></td></tr> <%
                        }else{
                            %><tr style = "color:blue"> <td> <%
                             out.println(names.get(i)+ "</td><td>" +classes.get(i)); %></td></tr> <%
                 }
}
                %>
                



            
            
                </body>
            </html>
