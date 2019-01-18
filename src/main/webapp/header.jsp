<%-- 
    Document   : header1
    Created on : Jan 17, 2019, 1:43:09 AM
    Author     : avina
--%>

<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.ecomproj.impl.CartDAOImpl"%>
<%@page import="com.mycompany.ecomproj.dao.CartDAO"%>
<%@page import="com.mycompany.ecomproj.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<!-- Latest compiled fontawesome -->   
<script defer src="https://use.fontawesome.com/releases/v5.5.0/js/all.js" ></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
    <!-- FOR MOVING CUP --> <i class="fas fa-coffee fa-lg fa-spin" style="color: #ff922b;"></i>
    <a class="navbar-brand" href="http://localhost:${pageContext.request.localPort}${pageContext.request.contextPath}/index.jsp">FirstShop</a>
    <form class="form-inline ml-auto ">
        <input type="text" class="form-control mr-2" placeholder="search for books and other products">
        <button class="btn btn-outline-success bg-white">search</button>
    </form>

    <% session.setAttribute("userObject", request.getSession().getAttribute("userObject"));
    %>

    <c:choose>

        <c:when test="${not empty userObject}">
            <%
                User u = (User) session.getAttribute("userObject");
                int uid = u.getId();
                CartDAO cdao = new CartDAOImpl();
                List l = cdao.getCartItemsForUser(uid);
                request.setAttribute("size", l.size());
            %>
            <div class="navbar ml-auto dropdown" style="font-size: 18px; padding: 0;">
                <a href="/EcomProj/Cart/ViewCart.jsp" style="color:wheat;"><i class="fas fa-shopping-cart">&nbsp</i>View Cart&nbsp<span class="badge badge-secondary">${size}</span></a>
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:white;">
                    Welcome ${userObject.getUsername()}
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/EcomProj/User/Profile.jsp"><i>Profile</i></a>
                    <a class="dropdown-item" href="#"><i>Orders</i></a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="http://localhost:8080/EcomProj/Logout">Logout</a>
                </div>
            </div>


        </c:when>

        <c:otherwise>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Login/SignUp</a>
                    <div class="dropdown-menu bg-dark">  
                        <a class=" navbar-nav nav-link" href="/EcomProj/User/Login.jsp">Login</a>
                        <a class="navbar-nav nav-link" href="http://localhost:8080/EcomProj/User/Registration.jsp">Sign Up</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <!-- FOR CART ICON --> <i class="fas fa-shopping-bag" style="color: #ff922b;"></i> cart</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/Myecom/About.jsp">About</a>
                </li>
            </ul>
        </c:otherwise>
    </c:choose>



</nav>