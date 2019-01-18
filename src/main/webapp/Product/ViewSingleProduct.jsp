<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.mycompany.ecomproj.impl.ProductDAOImpl"%>
<%@page import="com.mycompany.ecomproj.dao.ProductDAO"%>
<%@page import="com.sun.scenario.effect.impl.prism.PrCropPeer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Product</title>
    </head>
    <body>
        <c:import url="/header.jsp"></c:import>

        <%
            ProductDAO pdao = new ProductDAOImpl();

            int id = Integer.parseInt(request.getParameter("id"));

            request.setAttribute("curr", pdao.getProduct(id));
        %>

        <style>

            #productname{
                margin-left:450px;
                margin-top:70px;
            }
        </style>

        <div class="container-fluid">
            <div class="form">
            <div id="productname"><h3>${curr.getName()}</h3></div>


            <form method="post" action="${pageContext.request.contextPath}/AddProductToCart">

                <div class="row">

                    <div class="col-md-4">
                        <img class="img img-thumbnail" src="${curr.getImagePath()}" style="height: 450px; width: 370px;">
                    </div>

                    <div class="col-md-8">
                        <h5>${curr.getCategory()}</h5>
                        <input type="hidden" value="${curr.getId()}" name="prodId">

                        <p>${curr.getDescription()}</p>
                        <h4><span><strong>Rs&nbsp</strong></span>${curr.getPrice()}</h4>                
                        <button type="submit" class="btn btn-danger">Add To Cart</button>

                    </div>

                </div>

            </form>
        </div>
        </div>
        <br>
        <br>
        <br>
        
    </body>
</html>
