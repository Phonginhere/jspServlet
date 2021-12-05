<%-- 
    Document   : index
    Created on : Nov 15, 2021, 8:30:36 AM
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
        <h1>Phong!</h1>
        <%
            int i = 0;
            i++;
            out.println(i);
            Integer y = 5;
            Integer sum = i + y;
           
            %>
            <div style="color: red;"><%out.println(sum);%></div>
            <div >
                <p style="color: blue;"><%for(int j = 0; j< 10; j++){ out.print(j + "<BR>");} %></p>
            </div>
            <div>
                <%!
                    public void method (){
                    String str = "Phongs";
                }
                 %>
                 <p><% method(); %></p>
            </div>
            <div>
                 <%!
    int addNum(int N1, int N2)
    {
      return N1 + N2;
    }
    int subtractNum(int N1, int N2)
    {
      return N1 - N2;
    }
    %>
     <%
    out.println("5 + 2 = " + addNum(5, 2) + "<BR>");
    out.println("8 - 5 = " + subtractNum(8, 5) + "<BR>");
    %>
     <%
    Integer mySum = addNum(2, 10);
    out.println(mySum);
    %>
            </div>
    </body>
</html>
