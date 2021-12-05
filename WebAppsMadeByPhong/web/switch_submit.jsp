<%@ page import = " java.util.* " %>
<%-- 
    Document   : switch_submit
    Created on : Nov 21, 2021, 9:37:56 AM
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
        <h1>Hello World!</h1>
        <%
            String marks = request.getParameter("mark");
            try {
                int mark_int = Integer.parseInt(marks);
                switch (mark_int) {
                    case 1:
                        out.print("Grade A");
                        break;
                    case 2:
                         out.print("Grade B");
                        break;
                    case 3:
                         out.print("Grade C");
                        break;
                    case 4:
                        out.print("Grade D");
                        break;
                    case 5:
                         out.print("Grade E");
                        break;
                    case 6:
                        out.print("Grade F");
                        break;
                    case 7:
                         out.print("Grade G");
                        break;
                    case 8:
                         out.print("Grade H");
                        break;
                    case 9:
                         out.print("Grade I");
                        break;
                    case 10:
                         out.print("Grade J");
                        break;
                    default:  out.print("Less than 10 and more than 0 input"); break;
                }
                
            } catch (NumberFormatException e) {
                out.print("Invalid mark: " + marks);
            }

        %>
    </body>
</html>
