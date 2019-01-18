<%@page import="com.mycompany.ecomproj.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="/header.jsp" ></c:import>
        <%
            User u = (User) request.getSession().getAttribute("userObject");
            request.setAttribute("user", u);
        %>


        <div class=" py-4 container">
            <h4 class="mt-5 text-danger">Profile</h4>
        </div>

            <div class="container form">    
                <div class="form-group">
                    <label for="username"> User Name</label>
                    <input type="text" class="form-control" name="username" value="${user.getUsername()}">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="text" class="form-control" name="password" readonly value="${user.getPassword()}">
                </div>
                <div class="form-group">
                    <label for="email"> Email</label>
                    <input type="text" class="form-control" name="email" value="${user.getEmail()}">
                </div>
                <div class="form-group">
                    <label for="phoneno">Phone Number</label>
                    <input type="text" class="form-control" name="phoneno" value="${user.getPhoneno()}">
            </div>

        </div>
    </body>
</html>
