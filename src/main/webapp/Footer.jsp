<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <% session.setAttribute("userObject", request.getSession().getAttribute("userObject"));
    %>
      
<footer id="main-footer" class="bg-dark text-white mt-5 p-5">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <p class="lead text-center">
                            Copyright &copy;
                            <span id="year"></span>
                            2019
                        </p>
                    </div>
                </div>
            </div>
        </footer>