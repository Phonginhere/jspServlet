<%-- 
    Document   : expressionLanguage
    Created on : Dec 6, 2021, 10:05:36 PM
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
        <h3>An expression language math</h3>
        <p>How old are you? I'm ${ 9/3 + 14} years old</p>
        <h3>What do you do?</h3>
        <p>I'm a student at Aptech school. I'm in grade ${(3.0*3.0)*1.0 + 3.0} and I'm studying to prepare for the national exam next year. </p>
        <h3>Do you enjoy studying here?</h3>
        <p>Well, ${10 % 3 == 0 ? "I'm really happy about my school. Because the facilies are very well and modern, which make me feel comfortable to study. And since I'm interested  " : "to be honest, I am not really happy because the curriculum ís quite hard to learn and it is too theoretical. This make us diffcult to study technological subject, my favourite ones"}</p>
        
        <!-- Display from input -->
        <h3>3 cách hiện</h3>
        Question: ${ielts.ielts_question} <br> <!-- cách đơn thuần - lấy từ thuộc tính của session -->
        Answer: ${sessionScope.ielts.ielts_answer} <br><!-- global object session-->
        Mark: ${ielts["ielts_mark"]} <br> <!-- kiểu key-value, hashmap, dictionary-->
        
        <h3>Map Table</h3>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>Skills</td>
            </tr>
             <tr>
                 <%
                     out.print("phong");
                 %>
                 <th>1</th>
                <th>${sessionScope.skill.get("one")}</th>
            </tr>
            <tr>
                <th>2</th>
                <th>${sessionScope.skill.get("two")}</th>
            </tr>
            <tr>
                <th>3</th>
                <th>${sessionScope.skill.get("three")}</th>
            </tr>
            <tr>
                <th>4</th>
                <th>${sessionScope.skill.get("four")}</th>
            </tr>
        </table>
    </body>
</html>
