<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.mycompany.ecomproj.impl.ProductDAOImpl"%>
<%@page import="com.mycompany.ecomproj.dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    ProductDAO pdao = new ProductDAOImpl();

    if (request.getParameter("category") == null) {
        request.setAttribute("productMap", pdao.getProductsByCategory());
    } else {
        request.setAttribute("productMap", pdao.getProductsByCategory(request.getParameter("category")));
    }

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <c:import url="header.jsp"/>

    </head>
    <body>

        <!-- Carousel ------------>    
        <!--        <nav class="navbar navbar-expand-sm navbar-light bg-light mt-5">
            <div class="container-fluid">
              <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarCollapse">
                 use of mt is margin top 
                <ul class="navbar-nav mt-auto">
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">NCERT</a>
                      <div class="dropdown-menu">
                        <a class="dropdown-item nav-link" href="index.html">Class1</a>
                        <a class="dropdown-item nav-link" href="index.html">Class2</a>
                        <a class="dropdown-item nav-link" href="index.html">Class3</a>
                        <a class="dropdown-item nav-link" href="index.html">Class4</a>
                        <a class="dropdown-item nav-link" href="index.html">Class5</a>
                        <a class="dropdown-item nav-link" href="index.html">Class6</a>
                        <a class="dropdown-item nav-link" href="index.html">Class7</a>
                        <a class="dropdown-item nav-link" href="index.html">Class8</a>
                        <a class="dropdown-item nav-link" href="index.html">Class9</a>
                        <a class="dropdown-item nav-link" href="index.html">Class10</a>
                        <a class="dropdown-item nav-link" href="index.html">Class11</a>
                        <a class="dropdown-item nav-link" href="index.html">Class12</a>
                      </div>
                    </div>
                  </li>
        
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Novels</a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item nav-link">Mysteries</a>
                        <a href="#" class="dropdown-item nav-link">Romance</a>
                        <a href="#" class="dropdown-item nav-link">Horror</a>
                        <a href="#" class="dropdown-item nav-link">Fantasy</a>
                        <a href="#" class="dropdown-item nav-link">Westerns</a>
                        <a href="#" class="dropdown-item nav-link">Thrillers</a>
                        <a href="#" class="dropdown-item nav-link">Science Fiction</a>
                        <a href="#" class="dropdown-item nav-link">Historical Fiction</a>
        
                      </div>
                    </div>
                  </li>
        
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Magazines</a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item nav-link">India Today</a>
                        <a href="#" class="dropdown-item nav-link">Femine</a>
                        <a href="#" class="dropdown-item nav-link">Sakhi</a>
                        <a href="#" class="dropdown-item nav-link">Nandan</a>
                        <a href="#" class="dropdown-item nav-link">Champak</a>
                        <a href="#" class="dropdown-item nav-link">FHM India</a>
                        <a href="#" class="dropdown-item nav-link">Chacha Chaudhary</a>
                        <a href="#" class="dropdown-item nav-link">Pratiyogita Darpan</a>
                      </div>
                    </div>
                  </li>
        
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Biographies</a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
        
                      </div>
                    </div>
                  </li>
        
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Fiction</a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                      </div>
                    </div>
                  </li>
        
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Childern</a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                      </div>
                    </div>
                  </li>
        
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Religious</a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                      </div>
                    </div>
                  </li>
        
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Art</a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                        <a href="#" class="dropdown-item nav-link">link4</a>
                      </div>
                    </div>
                  </li>
        
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Comics</a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item nav-link">Astonishing X-man</a>
                        <a href="#" class="dropdown-item nav-link">Batman</a>
                        <a href="#" class="dropdown-item nav-link">Wolverine</a>
                        <a href="#" class="dropdown-item nav-link">New Avengers</a>
                        <a href="#" class="dropdown-item nav-link">Justice League Of America</a>
                        <a href="#" class="dropdown-item nav-link">The Incredible Hulk</a>
                      </div>
                    </div>
                  </li>
        
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Yoga</a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item nav-link">Lights Of Yoga</a>
                        <a href="#" class="dropdown-item nav-link">Practice Of Movement</a>
                        <a href="#" class="dropdown-item nav-link">Yoga Anatomy</a>
                        <a href="#" class="dropdown-item nav-link">Yoga Sutras</a>
                        <a href="#" class="dropdown-item nav-link">Heart Of Yoga</a>
                      </div>
                    </div>
                  </li>
        
                  <li class="nav-item dropdown">
                    <div class="container">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Indian History</a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item nav-link">Ancient</a>
                        <a href="#" class="dropdown-item nav-link">Medival</a>
                        <a href="#" class="dropdown-item nav-link">Modern</a>
                         <a href="#" class="dropdown-item nav-link">link4</a> 
                         <a href="#" class="dropdown-item nav-link">link4</a> 
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            </div>
          </nav>-->

        <!-- SLIDER -->

        <div class="mt-5 mb-4 row">
            <div class="col-sm-12">
                <div id="slider1" class="carousel slide mb-1" data-ride="carousel">

                    <!-- SLIDE WITH INDICATORS -->
                    <ol class="carousel-indicators">
                        <li class="active" data-target="#slider1" data-slide-to="0"></li>
                        <li data-target="#slider1" data-slide-to="1"></li>
                        <li data-target="#slider1" data-slide-to="2"></li>
                        <li data-target="#slider1" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block img-fluid" src="images/Untitled-1.jpg" alt="First slide">
                            <div class="carousel-caption d-non d-md-block">
                                <h3>Slide one</h3>
                                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eius, qui consequuntur. Amet molestias
                                    impedit laboriosam praesentium, pariatur commodi voluptates. Deserunt fugit nostrum deleniti quisquam
                                    officiis vitae dolorum. Eveniet, fugiat molestiae?</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid" src="images/ssssssssssssssssss.jpg" alt="second slide">
                            <div class="carousel-caption d-non d-md-block">
                                <h3>Slide two</h3>
                                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eius, qui consequuntur. Amet molestias
                                    impedit laboriosam praesentium, pariatur commodi voluptates. Deserunt fugit nostrum deleniti quisquam
                                    officiis vitae dolorum. Eveniet, fugiat molestiae?</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid" src="images/aaaaaaaaaaa.jpg" alt="third slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid" src="images/bbbbbbbbbbbbbbb.jpg" alt="forth slide">
                            <div class="carousel-caption d-non d-md-block">
                                <h4>Invite your Friends</h4>
                                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. <p>Eius, qui consequuntur. Amet molestias
                                    impedit laboriosam praesentium, pariatur commodi voluptates. Deserunt fugit nostrum deleniti quisquam
                                    officiis vitae dolorum. Eveniet, fugiat molestiae?</p>
                            </div>
                        </div>
                    </div>

                    <!-- controls -->
                    <a href="#slider1" class="carousel-control-prev" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>

                    <a href="#slider1" class="carousel-control-next" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
            </div>
        </div>


        <!---        left and right bar ---->

        <div class="container-fluid">
            <div class="row">

                <!-- Left Bar --->

                <div class="col-md-3">
                    <ul class="list-group">
                        <li class="list-group-item" style="background-color: yellowgreen; color: white;"><h4>Categories</h4></li>
                           
                        <c:forEach items="${productMap}" var="entry">

                            <li class="list-group-item"><button bid="${entry.key}" class="btn btn-link">${entry.key}</button></li>
                                    </c:forEach>
                    </ul>
                </div>

                <!-- Right Bar  --->

                <div class="col-md-8">


                    <c:forEach items="${productMap}" var="entry">
                        

                        <div id="${entry.key}" class="catproddisp" >
                            <div class="container"> 
                         <h5 class="text text-danger">${entry.key}</h5>   <!--    this is use for category name-->
                            </div>
                            <c:forEach items="${entry.value}" var="prod">
                              

                                <div  style="width: 200px;">
                                    <div class="card" style="margin: 10 ; width: 300px;">
                                        <div class="card-body"  style="padding: 0; text-align: center;">
                                            <img class="card-img-top" src="${prod.getImagePath()}" alt="Card image cap" style="object-fit: cover; height: 200px;">
                                            <h6 class="card-title" style="margin-top: 5px;">${prod.getName()}</h6>
                                            <h5>${prod.getPrice()}</h5>
                                            <a  href="Product/ViewSingleProduct.jsp?id=${prod.getId()}" class="btn btn-primary" style="color: white; width: 150px; margin-bottom: 10px;">View</a>
                                        </div>  
                                    </div>
                                        </div>  
                            </c:forEach>

                        </div>

                        <script>

                            $(document).ready(function () {

                                $("button[bid='${entry.key}']").click(function () {

                                    $(".catproddisp").each(function () {
                                           $(this).hide();
                                    });

                                    $("#${entry.key}").show();
                                });


                            });

                        </script>

                    </c:forEach>


                    <script>

                        $(document).ready(function () {

                            $(".catproddisp").each(function () {
                                $(this).hide();
                            });

                            $(".catproddisp").eq(0).show();
                        });

                    </script>
                </div>
            </div>

        </div>

        <!-- Footer   --->

        <c:import url="Footer.jsp"/>
    </body>
</html>
