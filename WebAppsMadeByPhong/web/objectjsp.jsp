<%-- 
    Document   : objectjsp
    Created on : Nov 20, 2021, 8:35:09 AM
    Author     : Phong_learning
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="personpackage.Person"%>
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
             ArrayList<Person> people_list = new ArrayList<Person>();
                        people_list.add(new Person("Phong", 17, "sleep"));
                        people_list.add(new Person("Tu", 17, "lol"));
                        people_list.add(new Person("Tuan", 17, "basketball"));
                   
                %>
        <table>
            <tr>
                <th>Name</th>
                <th>Class</th>
                <th>Hobby</th>
            </tr>
            <tr>
                <%
                    for(Person p : people_list ){
                        out.print(people_list.indexOf(p));
                        if(people_list.indexOf(p) % 2 == 0){
                             %><tr style = "color:red"> <td> <%
                             out.println(people_list.get(people_list.indexOf(p)).Name+ "</td><td>" +people_list.get(people_list.indexOf(p)).Age + "</td><td>" +people_list.get(people_list.indexOf(p)).Hobby); %></td></tr> <%
                        }else{
                            %><tr style = "color:blue"> <td> <%
                             out.println(people_list.get(people_list.indexOf(p)).Name+ "</td><td>" +people_list.get(people_list.indexOf(p)).Age + "</td><td>" +people_list.get(people_list.indexOf(p)).Hobby); %></td></tr> <%
                 }
                    }
//                    for (int i = 0; i < people_list.size(); i++) {
//                        
//    }
                %>  
            </tr>
        </table>
    </body>
</html>
