<%-- 
    Document   : input
    Created on : Dec 2, 2021, 2:02:06 PM
    Author     : Phong_learning
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function compare_pass() {
                var pass = document.getElementById('pass');
                var repass = document.getElementById('repass');
                if (pass.value !== repass.value) {
                    document.getElementById("caution").innerHTML = "Two password must be the same";
                    event.preventDefault();
                }else{
                     document.getElementById("caution").innerHTML = "";
                }

            }
        </script>
    </head>
    <body>
        <h1 style="color:red;" id="caution"></h1>
        <form method="post" action="cookies.jsp" onsubmit="return compare_pass();">
            First Name:   <input name="first" required style=" margin-left: 50px;">  <br>
            Last Name: <input name="last" style=" margin-left: 53px;"  required /> <br>
            Enter Password: <input type="password" id="pass" name="pass" style=" margin-left: 25px;" required/> <br>
            Re-enter Password: <input type="password" id="repass" name="repass" onkeyup="compare_pass()" style=" margin-left: 5px;" required/>
            <div>
                <input type="reset" value="Reset" />
                <input type="submit" value="Display" style=" margin-left: 153px;"/>
            </div>
        </form>

    </body>
</html>
