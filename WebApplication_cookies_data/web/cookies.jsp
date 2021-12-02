<%-- 
    Document   : cookies
    Created on : Dec 2, 2021, 2:46:17 PM
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
            //creating 3 cookies of first, last, pass using request.getParameter

            Cookie first = new Cookie("first", request.getParameter("first"));
            Cookie last = new Cookie("last", request.getParameter("last"));
            Cookie pass = new Cookie("pass", request.getParameter("pass"));

            //add time to display cookies  60*60*1 = 1 hour display it
            first.setMaxAge(10);
            last.setMaxAge(10);
            pass.setMaxAge(10);

            //add cookie 
            response.addCookie(first);
            response.addCookie(last);
            response.addCookie(pass);
        %>
        
         <%
         Cookie cookie = null;
         Cookie[] cookies = null;
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
            out.println("<h2> Found Cookies Name and Value</h2>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               out.print("Name : " + cookie.getName( ) + ",  ");
               out.print("Value: " + cookie.getValue( )+" <br/>");
            }
         } else {
            out.println("<h2>No cookies founds</h2>");
         }
      %>
    </body>
</html>
