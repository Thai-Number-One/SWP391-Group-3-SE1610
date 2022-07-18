<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Light Bootstrap Dashboard by Creative Tim</title>

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
            .all{
                margin: auto;
                width: 70%;
                border: 1px solid;
                background: white;
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

        <div class="all">
            <div class="container">
                <div class="">
                    <h1 style="text-align: center;" class="title text-bolder">Service Detail</h1>
                </div>
                <div class="">
                    <form action="Edit" method="post">
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-8">
                                    <h5><span style="font-size: 25px;">Title:</span> ${detail.service_name}</h5> 
                                    <h5><span style="font-size: 25px;">Category:</span>${detail.type}</h5>
                                    <h5><span style="font-size: 25px;">Original Price:</span>$${detail.price}</h5>

                                    <h5><span style="font-size: 25px;">Sale Price:</span>$${detail.discount}</h5>

                                    <h5><span style="font-size: 25px;">Service Details:</span>${detail.detail}</h5>
                                </div>
                                <div class="col-md-4">
                                    <img src="${detail.image}" width="400" height="400" alt="" />
                                </div>


                            </div>
                        </div>
                        <div class="modal-footer">
                            <a href="listserviceservlet" class="btn btn-default" data-dismiss="modal">Back to service list</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
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
        <jsp:include page="/Template/FooterPublic.jsp"/>
        <!-- Footer End -->

    </body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Charts Plugin -->
    <script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>

</html>
