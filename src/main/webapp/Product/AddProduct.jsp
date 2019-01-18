<%@page import="com.mycompany.ecomproj.model.User"%>
<%@page import="com.mycompany.ecomproj.impl.CategoryDAOImpl"%>
<%@page import="com.mycompany.ecomproj.dao.CategoryDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    User u = (User) request.getSession().getAttribute("userObject");

    if (u == null) {
        response.sendRedirect("/EcomProj/User/Login.jsp");
    }

    System.out.println(u.getRol());

    if (!u.getRol().equals("ROLE_ADMIN")) {
        response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "You don't have enough privileges");
    }

    CategoryDAO cdao = new CategoryDAOImpl();

    request.setAttribute("catList", cdao.getCategory());

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
    </head>
    <body>

        <c:import url="/header.jsp"></c:import>

            <div class="mt-5 py-2 container">
                <h1>Add Product</h1>
                <a href= "http://localhost:${pageContext.request.localPort}${pageContext.request.contextPath}/Product/ViewProduct.jsp" class="btn btn-primary" style="float:right; margin-right: 50px;">View Product</a><br><br>
            <form method="post" action="${pageContext.request.contextPath}/AddProductToDB" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="name">Add Product Name</label>
                    <input type="text" placeholder="Enter Product Name" name="name" class="form-control">
                </div>
                <div class="form-group">
                    <label for="description">Product Description</label>
                    <textarea class="form-control" name="description" placeholder="Enter Product Description"></textarea>
                </div>
                <div class="form-group">
                    <label for="price">Product Price</label>
                    <input type="text" placeholder="Enter Price" name="price" class="form-control">
                </div>
                <div class="form-group">
                    <label for="imagePath">Browse Image</label>
                    <input type="file" name="imagePath" class="form-control">
                </div>
                <div class="form-group">
                    <label for="qty">Product Quantity</label>
                    <input type="text" placeholder="Enter Quantity" name="qty" class="form-control">
                </div>
                <!--            <input type="text" placeholder="Enter Category" name="category" class="form-control"><br>-->

                <div class="form-group">
                    <label for="category">Choose category</label>
                <select class="form-control" name="category">
                    <c:forEach items="${catList}" var="c">
                        <option value="${c.getName()}" title="${c.getDescription()}">${c.getName()}</option>
                    </c:forEach>
                </select>
                </div>
                <div align="center">
                <button class="btn btn-danger" type="submit">Add Product</button>
                </div>
                <br>
            </form>
        </div>

    </body>
</html>
