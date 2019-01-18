<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="Style.css">
    </head>
    <body>

        <c:import url="/header.jsp"></c:import>
            <div class="p-5 container">
                <div class="mt-3">
                    <h1>Login</h1>
                </div>
                <form  class="mt-4" method="post" action="${pageContext.request.contextPath}/login">

                <div class="form-group text-info">
                    <label for="username">User Name</label>    
                    <input type="text" placeholder="Enter Username" name="username" class="form-control">
                </div>    
                <div class="form-group text-info">
                    <label for="Password">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Enter Password">
                </div>
                <div align="center">
                    <button class="btn btn-danger" type="submit">Login</button>
                    <a href="/EcomProj/User/ForgotPassword.jsp">forgot Password ?</a>
                </div>
            </form>

            <c:if test="${not empty error}">
                <br>
                <h1 class="alert alert-danger">${error}</h1>
            </c:if>

            <c:if test="${not empty reset}">
                <br>
                <h4 class="alert alert-danger">${reset}</h4>
            </c:if>    

        </div>

    </body>
</html>

