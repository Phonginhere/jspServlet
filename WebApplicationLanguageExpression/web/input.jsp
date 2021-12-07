<%-- 
    Document   : input
    Created on : Dec 6, 2021, 10:35:54 PM
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
        <form action="ie-servlet" method="get">
            <input name="ielts_question" type="text" placeholder="Input ielts question"/>
            <input name="ielts_answer" type="text" placeholder="Input ielts question"/>
            <input name="ielts_mark" type="number" placeholder="Input ielts mark"/>
            <input type="submit" value="submit">
        </form>
        
    </body>
</html>
