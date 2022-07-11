<%-- 
    Document   : listService
    Created on : Jun 26, 2022, 11:53:46 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <title>SERVICE</title>
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@600&family=Lobster+Two:wght@700&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <jsp:include page="Template/DesignPublic.jsp"/>
        <style>
            .servicedetail{
                display: -webkit-box;
                width: 250px;
                height: auto;
                line-height: 25px;
                overflow: hidden;
                text-overflow: ellipsis;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
            }
            .all{
                margin: auto;
                width: 90%;
            }

        </style>
    </head>
    <body>
        <!-- Navbar Start -->
        <jsp:include page="/Template/HeadMenuPublic.jsp"/>
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Service</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item">Service</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->

        <div class="all ">
            <div class="filter " style="margin: auto; width:20%; margin-bottom: 10px;">
                <form method="get" action="filterservice">
                    <input class="btn btn-primary"  type="text" name="name" placeholder="Name Servicce">
                    <button class="btn btn-primary" type="submit"><i class="bi bi-search"></i></button>
                </form>
            </div>
            <div class="row" style="margin-left: 200px;">
                <c:forEach items="${requestScope.service}" var="s">
                    <div class="col-5 border" style="margin-bottom: 30px; background: #FFF; border-radius: 15px; margin-right: 30px;  ">
                        <div class="container">
                            <div class="row">
                                <div class="col-6">
                                    <img alt="avatar" src="${s.image}" width="300" height="260">
                                </div>
                                <div class="col-6" style="padding-left: 35px; padding-top: 20px; ">
                                    <h3 ><a href="ServiceDetail?serviceid=${s.serviceid}" >${s.servicename}</a></h3>
                                    <p style="color: #000; font-size: 16px;">
                                        <c:if test="${s.discount>0}">
                                            <span style="  text-decoration: line-through;">${s.price}$</span>
                                            ${s.price-s.discount}$
                                        </c:if>
                                        <c:if test="${s.discount==0}">                                   
                                            ${s.price}$
                                        </c:if>
                                        &nbsp
                                        <c:set value="${5-s.rate}" var="star"/>
                                        <c:forEach var="count" begin="1" end="5">

                                            <c:if test="${s.rate==0}">
                                                <span class="bi bi-star" style="color: orange;"></span>
                                            </c:if>
                                            <c:if test="${count>0 && count<=s.rate}">
                                                <span class="fa fa-star " style="color: orange;"></span>
                                            </c:if>   
                                            <c:if test="${count==s.rate-0.5}">
                                                <span class="bi bi-star-half" style="color: orange;"></span>                                               
                                            </c:if> 
                                            <c:if test="${count>s.rate+0.5}">
                                                <span class="bi bi-star" style="color: orange;"></span>
                                            </c:if> 

                                        </c:forEach>                                      
                                    </p>
                                    <h6 class="servicedetail">${s.detail}</h6>
                                    <a class="btn btn-primary" style="color: #040505;" href="reservationdetail?serviceid=${s.serviceid}">Add Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>


            </div>
        </div><br>
        <!-- filter page start -->
        <c:if test="${requestScope.checkpage==0}">
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item ">
                        <a class="page-link" href="listserviceservlet?page=${1}"><i class="bi bi-chevron-double-left"></i></a>
                    </li>
                    <c:if test="${page ==1}">
                        <li class="page-item disabled">
                            <a class="page-link" href="listserviceservlet?page=${page-1}">Previous</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=1}">
                        <li class="page-item ">
                            <a class="page-link" href="listserviceservlet?page=${page-1}">Previous</a>
                        </li>
                    </c:if>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:set var="page" value="${requestScope.page}"/>
                    <c:set var="max" value="${0}"/>
                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">                
                        <c:if test="${i==page-2||i==page-1||i==page+2||i==page+1||i==page}">
                            <li class=" ${i==page?"active":""} page-item"><a class="page-link" href="listserviceservlet?page=${i}">${i}</a></li>

                        </c:if>
                        <h1 style="display: none;">${max=max+1}</h1>
                    </c:forEach>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:if test="${page ==max}">
                        <li class="page-item disabled">
                            <a class="page-link" href="listserviceservlet?page=${page+1}">Next</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=max}">
                        <li class="page-item ">
                            <a class="page-link" href="listserviceservlet?page=${page+1}">Next</a>
                        </li>
                    </c:if>
                    <li class="page-item ">
                        <a class="page-link" href="listserviceservlet?page=${max}"><i class="bi bi-chevron-double-right"></i></a>
                    </li>
                </ul>
            </nav>
        </c:if>

        <c:if test="${requestScope.checkpage==1}">
            <c:set var="max" value="${0}"/>
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <c:if test="${max!=0}">
                        <li class="page-item ">
                            <a class="page-link" href="filterservice?page=${1}&name=${requestScope.name}"><i class="bi bi-chevron-double-left"></i></a>
                        </li>
                    </c:if>
                    <c:if test="${max==0}">
                        <li class="page-item disabled">
                            <a class="page-link" href="filterservice?page=${1}&name=${requestScope.name}"><i class="bi bi-chevron-double-left"></i></a>
                        </li>
                    </c:if>
                    <c:if test="${page ==1}">
                        <li class="page-item disabled">
                            <a class="page-link" href="filterservice?page=${page-1}&name=${requestScope.name}">Previous</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=1}">
                        <li class="page-item ">
                            <a class="page-link" href="filterservice?page=${page-1}&name=${requestScope.name}">Previous</a>
                        </li>
                    </c:if>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:set var="page" value="${requestScope.page}"/>
                    
                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">                
                        <c:if test="${i==page-2||i==page-1||i==page+2||i==page+1||i==page}">
                            <li class=" ${i==page?"active":""} page-item"><a class="page-link" href="filterservice?page=${i}&name=${requestScope.name}">${i}</a></li>

                        </c:if>
                        <h1 style="display: none;">${max=max+1}</h1>
                    </c:forEach>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:if test="${page ==max}">
                        <li class="page-item disabled">
                            <a class="page-link" href="filterservice?page=${page+1}&name=${requestScope.name}">Next</a>
                        </li>
                    </c:if>
                    <c:if test="${max ==0}">
                        <li class="page-item disabled">
                            <a class="page-link" href="filterservice?page=${page+1}&name=${requestScope.name}">Next</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=max&&max !=0}">
                        <li class="page-item ">
                            <a class="page-link" href="filterservice?page=${page+1}&name=${requestScope.name}">Next</a>
                        </li>
                    </c:if>
                    <c:if test="${max!=0}">
                        <li class="page-item ">
                            <a class="page-link" href="filterservice?page=${max}&name=${requestScope.name}"><i class="bi bi-chevron-double-right"></i></a>
                        </li>
                    </c:if>
                    <c:if test="${max==0}">
                        <li class="page-item disabled">
                            <a class="page-link" href="filterservice?page=${max}&name=${requestScope.name}"><i class="bi bi-chevron-double-right"></i></a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </c:if>

        <!-- filter page end -->


        <!-- Footer Start -->
        <jsp:include page="/Template/FooterPublic.jsp"/>
        <!-- Footer End -->
    </body>
</html>
