<%-- 
    Document   : Login
    Created on : Jan 19, 2023, 3:58:22 PM
    Author     : Pham_Thai_Ha <>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <title>Login Form</title>
        <%String error = (String) request.getAttribute("error");%>
        <%String username = (String) request.getAttribute("ckUsername");%>
        <%if(username == null) username = "";%>
        <%String password = (String) request.getAttribute("ckPassword");%>
        <%if(password == null) password = "";%>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="Login" method="POST">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Please Sign in</h1>
                <div class="mb-2">
                <input type="text" class="form-control" id="usename" name="Username" value="<%=username%>"  placeholder="Username" >
                </div>
                <div class="mb-2">
                <input name="Password"  type="password" id="inputPassword" class="form-control" value="<%=password%>" placeholder="Password">
                </div>
                <div class="form-group form-check">
                    <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>
                <button class="btn btn-success btn-block" type="submit" value="Login" >Log in</button>
                <a style="color: blue;" href="register.html">Click here to Register</a>
            </form>
        </div>
                <br>
        <%if(error != null){
            if(error.equals("1")){%>
            <div>User name or password incorrect. Please enter again</div>
            <%}
        }%>
    </body>
</html>