

<%@page import="model_staff.reservations_user"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <title>BLOGS</title>
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
        <script>
            $(document).ready(function () {
                $("button").click(function () {
                    $(".show").toggle();
                });
            });

        </script>
        <style>
            body {
                margin: 0;
                font-family: "Heebo",sans-serif;
                font-size: 1rem;
                font-weight: 400;
                line-height: 1.5;
                color: #74787C;
                background-color: #FFF5F3;
                -webkit-text-size-adjust: 100%;
                -webkit-tap-highlight-color: rgba(0,0,0,0);
            }

            .text-primary {
                color: #FE5D37 !important;
            }


            .navbar .navbar-nav .nav-link {
                padding: 30px 15px;
                color: #103741;
                font-weight: 500;
                outline: none;
            }
            a{
                text-decoration: none;
                color: #FE5D37;
            }
            .page-link{
                color: #FE5D37;
            }
            .detail{
                display: -webkit-box;
                width: 500px;
                height: auto;
                line-height: 25px;
                overflow: hidden;
                text-overflow: ellipsis;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
            }






        </style>
    </head>
    <body>



        <!-- Navbar Start -->
        <jsp:include page="/Template/HeadMenuPublic.jsp"/>
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Blogs</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="blogs">Blogs</a></li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->

        <div class="container my-5 py-1">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12 col-lg-3">
                    <div class="card text-dark">
                        <div class="card-body p-4">
                            <h4 class="mb-0" style="text-align: center;">Recent Blogs</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container my-5 py-1">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12 col-lg-4">
                    <div class="card text-dark">
                        <div class="card-body p-4">
                            <form method="get" action="blogssearch">
                                <table style="margin-left: 20px;">
                                    <tr>
                                        <th> <h4>Search tilte:</h4></th>
                                        <th style="padding-left: 15px;"><input type="search" name="name"></th>
                                    </tr>
                                </table>


                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:forEach items="${requestScope.allblogs}" var="a">
            <div class="container my-4 py-1">

                <div class="row d-flex justify-content-center">
                    <div class="col-md-12 col-lg-10">
                        <div class="card text-dark">
                            <div class="card-body p-4">

                                <div class="d-flex flex-start" style="padding-bottom: 20px;padding-top: 20px;">
                                    <a href="blogdetails?postid=${a.posts.post_ID}"><img class=" shadow-1-strong me-3"
                                                                                         src="img/img_post/${a.posts.image}" alt="avatar" width="150"
                                                                                         height="150" /></a>
                                    <div>
                                        <h3 class="fw-bold mb-1"><a href="blogdetails?postid=${a.posts.post_ID}">${a.posts.tilte}</a></h3>
                                        <h6 class="fw-bold mb-1"><a href="blogdetails?postid=${a.posts.post_ID}">${a.user.fullname} - ${a.service.servicename}</a></h6>
                                        <div class="d-flex align-items-center mb-3">
                                            <p class="mb-0">
                                                ${a.posts.date} / 
                                                ${a.posts.category}
                                            </p>
                                        </div>
                                        <p class="mb-0 detail">
                                            ${a.posts.content}
                                        </p>                               
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        <!-- blogs page start -->
        <c:if test="${requestScope.checkpage!=1}">
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item ">
                        <a class="page-link" href="blogs?page=${1}"><i class="bi bi-chevron-double-left"></i></a>
                    </li>
                    <c:if test="${page ==1}">
                        <li class="page-item disabled">
                            <a class="page-link" href="blogs?page=${page-1}">Previous</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=1}">
                        <li class="page-item ">
                            <a class="page-link" href="blogs?page=${page-1}">Previous</a>
                        </li>
                    </c:if>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:set var="page" value="${requestScope.page}"/>
                    <c:set var="max" value="${0}"/>
                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">                
                        <c:if test="${i==page-2||i==page-1||i==page+2||i==page+1||i==page}">
                            <li class=" ${i==page?"active":""} page-item"><a class="page-link" href="blogs?page=${i}">${i}</a></li>

                        </c:if>
                        <h1 style="display: none;">${max=max+1}</h1>
                    </c:forEach>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:if test="${page ==max}">
                        <li class="page-item disabled">
                            <a class="page-link" href="blogs?page=${page+1}">Next</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=max}">
                        <li class="page-item ">
                            <a class="page-link" href="blogs?page=${page+1}">Next</a>
                        </li>
                    </c:if>
                    <li class="page-item ">
                        <a class="page-link" href="blogs?page=${max}"><i class="bi bi-chevron-double-right"></i></a>
                    </li>
                </ul>
            </nav>
        </c:if>
        <!-- blogs page end -->

        <!-- filter page start -->
        <c:if test="${requestScope.checkpage==1}">
            <c:set var="max" value="${0}"/>
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <c:if test="${max !=0}">
                        <li class="page-item ">
                            <a class="page-link" href="blogssearch?page=${1}&name=${requestScope.name}"><i class="bi bi-chevron-double-left"></i></a>
                        </li>
                    </c:if>
                    <c:if test="${max ==0}">
                        <li class="page-item disabled">
                            <a class="page-link " href="blogssearch?page=${1}&name=${requestScope.name}"><i class="bi bi-chevron-double-left"></i></a>
                        </li>
                    </c:if>
                    <c:if test="${page ==1}">
                        <li class="page-item disabled">
                            <a class="page-link" href="blogssearch?page=${page-1}&name=${requestScope.name}">Previous</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=1}">
                        <li class="page-item ">
                            <a class="page-link" href="blogssearch?page=${page-1}&name=${requestScope.name}">Previous</a>
                        </li>
                    </c:if>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:set var="page" value="${requestScope.page}"/>
                    
                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">                
                        <c:if test="${i==page-2||i==page-1||i==page+2||i==page+1||i==page}">
                            <li class=" ${i==page?"active":""} page-item"><a class="page-link" href="blogssearch?page=${i}&name=${requestScope.name}">${i}</a></li>

                        </c:if>
                        <h1 style="display: none;">${max=max+1}</h1>
                    </c:forEach>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:if test="${page ==max}">
                        <li class="page-item disabled">
                            <a class="page-link" href="blogssearch?page=${page+1}&name=${requestScope.name}">Next</a>
                        </li>
                    </c:if>
                    <c:if test="${max ==0}">
                        <li class="page-item disabled">
                            <a class="page-link" href="blogssearch?page=${page+1}&name=${requestScope.name}">Next</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=max&&max !=0}">
                        <li class="page-item ">
                            <a class="page-link" href="blogssearch?page=${page+1}&name=${requestScope.name}">Next</a>
                        </li>
                    </c:if>
                    <c:if test="${max !=0}">
                        <li class="page-item ">
                            <a class="page-link" href="blogssearch?page=${max}&name=${requestScope.name}"><i class="bi bi-chevron-double-right"></i></a>
                        </li>
                    </c:if>
                    <c:if test="${max ==0}">
                        <li class="page-item disabled">
                            <a class="page-link " href="blogssearch?page=${max}&name=${requestScope.name}"><i class="bi bi-chevron-double-right"></i></a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </c:if>
        <!-- filter page end -->

        <!-- Footer Start -->
        <jsp:include page="/Template/FooterPublic.jsp"/>
        <!-- Footer End -->




        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>                
    </body>
</html>
