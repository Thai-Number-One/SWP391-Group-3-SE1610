

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
        <title>FEEDBACKS</title>
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








        </style>
    </head>
    <body>



        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0">
            <a href="index.html" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class=""></i>ChildrenCare</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    <a href="HomePage.jsp" class="nav-item nav-link ">Home</a>
                    <a href="#" class="nav-item nav-link">About Us</a>
                    <a href="#" class="nav-item nav-link">Classes</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 rounded-bottom border-0 shadow-sm m-0">
                            <a href="reservation" class="dropdown-item">Reservations List</a>
                            <a href="medical" class="dropdown-item">Medical list</a>
                            <a href="prescription" class="dropdown-item">Prescription For Staff</a>
                            <a href="#" class="dropdown-item">Make Appointment</a>
                            <a href="#" class="dropdown-item">Testimonial</a>
                            <a href="#" class="dropdown-item">404 Error</a>
                        </div>
                    </div>
                    <a href="#" class="nav-item nav-link">Contact Us</a>
                    <a href="#" class="nav-item nav-link" > sign in</a>
                </div>

            </div>
        </nav>
        <!-- Navbar End -->





        <div class="container my-5 py-5">
            <div class="d-flex justify-content-center btn-group-sm" >
                <form action="feedbacksfilter" method="get">
                    <select style="margin-left: 5px; color: #FFF5F3;" class="btn bg-primary" name="status">
                        <option value="">all</option>
                        <option value="view">view</option>
                        <option value="hide">hide</option>
                    </select>
                    <select style="margin-left: 5px;  color: #FFF5F3;" class="btn bg-primary" name="sevice">
                        <option value="">all</option>
                        <c:forEach items="${requestScope.sevices}" var="s">
                            <option>${s.servicename}</option>
                        </c:forEach>
                    </select>
                    <select style="margin-left: 5px;  color: #FFF5F3;" class="btn bg-primary" name="star">
                        <option value="">all</option>
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    <input style="margin-left: 5px;  color: #FFF5F3;" class="btn bg-primary" type="text" name="name" placeholder="Name">
                    <button style="margin-left: 5px;  color: #FFF5F3;" class="badge btn-primary" type="submit" >Filter</button>
                </form>

            </div>
            <div class="row d-flex justify-content-center">
                <div class="col-md-12 col-lg-10">
                    <div class="card text-dark">
                        <div class="card-body p-4">
                            <h4 class="mb-0">Recent Feedback</h4>


                            <c:forEach items="${requestScope.allfeedbacks}" var="a">
                                <div class="d-flex flex-start" style="padding-bottom: 20px;padding-top: 20px;">
                                    <a href="feedbackdetails?idfeedback=${a.feedbacks.feedbackid}"><img class="rounded-circle shadow-1-strong me-3"
                                         src="feedbackF/img/${a.user.avatar}" alt="avatar" width="60"
                                         height="60" /></a>
                                    <div>
                                        <h6 class="fw-bold mb-1"><a href="feedbackdetails?idfeedback=${a.feedbacks.feedbackid}">${a.user.fullname} - ${a.service.servicename}</a></h6>
                                        <div class="d-flex align-items-center mb-3">
                                            <p class="mb-0">
                                                ${a.feedbacks.date}
                                            <form action="feedbackslist" method="post">
                                                <input type="text" value="${a.feedbacks.feedbackid}" name="id" style="display: none;">
                                                <select  class="badge bg-primary" style="margin-left: 5px;" name="status">
                                                    <option>${a.feedbacks.status}</option>
                                                    <c:if test="${a.feedbacks.status == 'view'}">
                                                        <option>hide</option>
                                                    </c:if>
                                                    <c:if test="${a.feedbacks.status == 'hide'}">
                                                        <option>view</option>
                                                    </c:if>
                                                </select>
                                                <button type="submit" class="badge btn-primary" ><i class="fas fa-genderless"></i></button>

                                            </form>

                                            </p>

                                            <a href="#!" class="link-muted"><i class="fas fa-star ms-2">${a.feedbacks.star}</i></a>
                                        </div>
                                        <p class="mb-0">
                                            ${a.feedbacks.detail}
                                        </p>                               
                                    </div>
                                </div>

                                <hr class="my-0" style="margin: 20px;" />
                            </c:forEach>
                        </div>





                    </div>
                </div>
            </div>
        </div>
        <!-- feedback page start -->
        <c:if test="${requestScope.checkpage!=1}">
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item ">
                        <a class="page-link" href="feedbackslist?page=${1}"><<</a>
                    </li>
                    <c:if test="${page ==1}">
                        <li class="page-item disabled">
                            <a class="page-link" href="feedbackslist?page=${page-1}">Previous</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=1}">
                        <li class="page-item ">
                            <a class="page-link" href="feedbackslist?page=${page-1}">Previous</a>
                        </li>
                    </c:if>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:set var="page" value="${requestScope.page}"/>
                    <c:set var="max" value="${0}"/>
                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">                
                        <c:if test="${i==page-2||i==page-1||i==page+2||i==page+1||i==page}">
                            <li class=" ${i==page?"active":""} page-item"><a class="page-link" href="feedbackslist?page=${i}">${i}</a></li>

                        </c:if>
                        <h1 style="display: none;">${max=max+1}</h1>
                    </c:forEach>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:if test="${page ==max}">
                        <li class="page-item disabled">
                            <a class="page-link" href="feedbackslist?page=${page+1}">Next</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=max}">
                        <li class="page-item ">
                            <a class="page-link" href="feedbackslist?page=${page+1}">Next</a>
                        </li>
                    </c:if>
                    <li class="page-item ">
                        <a class="page-link" href="feedbackslist?page=${max}">>></a>
                    </li>
                </ul>
            </nav>
        </c:if>
        <!-- feedback page end -->
        
        <!-- filter page start -->
         <c:if test="${requestScope.checkpage==1}">
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item ">
                        <a class="page-link" href="feedbacksfilter?page=${1}&status=${requestScope.status}&sevice=${requestScope.sevice}&star=${requestScope.star}&name=${requestScope.name}"><<</a>
                    </li>
                    <c:if test="${page ==1}">
                        <li class="page-item disabled">
                            <a class="page-link" href="feedbacksfilter?page=${page-1}&status=${requestScope.status}&sevice=${requestScope.sevice}&star=${requestScope.star}&name=${requestScope.name}">Previous</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=1}">
                        <li class="page-item ">
                            <a class="page-link" href="feedbacksfilter?page=${page-1}&status=${requestScope.status}&sevice=${requestScope.sevice}&star=${requestScope.star}&name=${requestScope.name}">Previous</a>
                        </li>
                    </c:if>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:set var="page" value="${requestScope.page}"/>
                    <c:set var="max" value="${0}"/>
                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">                
                        <c:if test="${i==page-2||i==page-1||i==page+2||i==page+1||i==page}">
                            <li class=" ${i==page?"active":""} page-item"><a class="page-link" href="feedbacksfilter?page=${i}&status=${requestScope.status}&sevice=${requestScope.sevice}&star=${requestScope.star}&name=${requestScope.name}">${i}</a></li>

                        </c:if>
                        <h1 style="display: none;">${max=max+1}</h1>
                    </c:forEach>
                    <!-- /////////////////////////////////////////////////////////////////-->
                    <c:if test="${page ==max}">
                        <li class="page-item disabled">
                            <a class="page-link" href="feedbacksfilter?page=${page+1}&status=${requestScope.status}&sevice=${requestScope.sevice}&star=${requestScope.star}&name=${requestScope.name}">Next</a>
                        </li>
                    </c:if>
                    <c:if test="${page !=max}">
                        <li class="page-item ">
                            <a class="page-link" href="feedbacksfilter?page=${page+1}&status=${requestScope.status}&sevice=${requestScope.sevice}&star=${requestScope.star}&name=${requestScope.name}">Next</a>
                        </li>
                    </c:if>
                    <li class="page-item ">
                        <a class="page-link" href="feedbacksfilter?page=${max}&status=${requestScope.status}&sevice=${requestScope.sevice}&star=${requestScope.star}&name=${requestScope.name}">>></a>
                    </li>
                </ul>
            </nav>
        </c:if>
        <!-- filter page end -->

        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Get In Touch</h3>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Quick Links</h3>
                        <a class="btn btn-link text-white-50" href="">About Us</a>
                        <a class="btn btn-link text-white-50" href="">Contact Us</a>
                        <a class="btn btn-link text-white-50" href="">Our Services</a>
                        <a class="btn btn-link text-white-50" href="">Privacy Policy</a>
                        <a class="btn btn-link text-white-50" href="">Terms & Condition</a>
                    </div>


                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved. 

                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By <a class="border-bottom" href="https://muldtech.com">TEAM3_SE1610</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="">Home</a>
                                <a href="">Cookies</a>
                                <a href="">Help</a>
                                <a href="">FQAs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


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