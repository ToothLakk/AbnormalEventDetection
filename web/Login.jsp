<%-- 
    Document   : Login
    Created on : Jan 19, 2023, 3:58:22 PM
    Author     : Pham_Thai_Ha <>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%String error = (String) request.getAttribute("error");%>
        <%String username = (String) request.getAttribute("ckUsername");%>
        <%if(username == null) username = "";%>
        <%String password = (String) request.getAttribute("ckPassword");%>
        <%if(password == null) password = "";%>
    </head>
    <body>
        <h1>Login</h1>
        <form action="Login" method="POST">
            <label for="username">User name</label>
            <input type="text" name="Username" value="<%=username%>" /><br><br>
            <label for="password">Password</label>
            <input type="password" name="Password" value="<%=password%>" /><br><br>
            <input type="checkbox" name="remember" value="ON" />
            <label for="remember">Remember me</label><br><br>
            <input type="submit" value="Login" />
        </form>
        <br>
        <%if(error != null){
            if(error.equals("1")){%>
            <div>User name or password incorrect. Please enter again</div>
            <%}
        }%>
    </body>
</html>
