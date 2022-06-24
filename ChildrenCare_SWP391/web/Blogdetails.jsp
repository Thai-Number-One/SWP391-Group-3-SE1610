<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html charset="utf-8">
    <head>
        <meta>
        <title>Blog Detail</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@600&family=Lobster+Two:wght@700&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <style>
            * {
                box-sizing: border-box;
            }

            /* Add a gray background color with some padding */
            body {
                font-family: Arial;
                padding: 20px;
                background: #f1f1f1;
            }

            /* Header/Blog Title */
            .header {
                padding: 30px;
                font-size: 40px;
                text-align: center;
                background: white;
            }

            /* Create two unequal columns that floats next to each other */
            /* Left column */
            .leftcolumn {   
                float: left;
                width: 75%;
            }

            /* Right column */
            .rightcolumn {
                float: left;
                width: 25%;
                padding-left: 20px;
            }

            /* Fake image */
            /* Add a card effect for articles */
            .card {
                background-color: white;
                padding: 20px;
                margin-top: 20px;
                margin-right: 10%;
                margin-left: 20%;

            }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Footer */
            /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 800px) {
                .leftcolumn, .rightcolumn {   
                    width: 100%;
                    padding: 0;
                }
            }
        </style>
    </head>
    <body>
        <!-- Navbar Start -->
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <!-- Navbar End -->
        <!-- Page Header End -->
        <c:forEach items="${requestScope.blogdetails}" var="a">
            <div class="container-xxl py-5 page-header position-relative mb-5">
                <div class="container py-5">
                    <h1 class="display-2 text-white animated slideInDown mb-4">Blog</h1>
                    <nav aria-label="breadcrumb animated slideInDown">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                            <li class="breadcrumb-item"><a href="blogs">Blog</a></li>
                            <li class="breadcrumb-item"><a href="#">${a.posts.category}</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">${a.service.servicename}</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!-- Page Header End -->

            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-md-7 mt-4">
                    <div class="bg-white rounded shadow overflow-hidden">
                        <div class="p-4">
                            <h1 class="mb-0">${a.posts.tilte}</h1>
                        </div>
                        <div>
                            <a class="text-muted font-italic p-3" title="author" href="#" style="text-decoration: none; color: black;">${a.user.fullname}</a>/<a  class="text-muted font-italic p-3" title="date" href="#" style="text-decoration: none; color: darkslategrey;">${a.posts.date}</a>
                        </div>
                        <div class="text-muted font-italic p-3">
                            <ul>
                                <c:forEach begin="1" end="3"  items="${contactlink}" var="l">
                                    <li>
                                        <a href="blogdetails?postid=${l.posts.post_ID}" style="text-decoration: none;">${l.posts.tilte}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="text-muted font-italic p-5"> 
                            <p>
                                ${a.posts.content}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-md-7 mt-4">
                <div class="bg-white rounded shadow overflow-hidden">
                    <div class="p-4 border-bottom">
                        <h5 class="mb-0">Feedback</h5>
                    </div>
                    <c:forEach items="${requestScope.feedback}" var="f">
                        <ul class="media-list list-unstyled p-4 mb-0">
                            <li class="mt-4">
                                <div class="d-flex justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <a class="pe-2" href="#">
                                            <img src="img/def.png" class="img-fluid avatar avatar-md-sm rounded-circle shadow" alt="img" width="50" height="50">
                                        </a>
                                        <div class="commentor-detail">
                                            <h6 class="mb-0"><a href="javascript:void(0)" class="text-dark media-heading">${f.user.fullname}</a></h6>
                                            <small class="text-muted">${f.feedbacks.date}</small>
                                        </div>
                                    </div>
                                    <ul class="list-unstyled text-warning h5 mb-0">
                                        <c:if test="${f.feedbacks.star == 1}">
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                        </c:if>
                                        <c:if test="${f.feedbacks.star == 2}">
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                        </c:if>
                                        <c:if test="${f.feedbacks.star == 3}">
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                        </c:if>
                                        <c:if test="${f.feedbacks.star == 4}">
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                        </c:if>
                                        <c:if test="${f.feedbacks.star == 5}">
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                        </c:if>
                                    </ul>
                                </div>
                                <div class="mt-3">
                                    <p class="text-muted font-italic p-3 bg-light rounded">${f.feedbacks.detail}</p>
                                </div>
                            </li>
                        </ul>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- Footer Start -->
        <jsp:include page="Template/FooterPublic.jsp"/>
        <!-- Footer End -->

    </body>
</html>
