

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
                -webkit-line-clamp: 1;
                -webkit-box-orient: vertical;
            }





        </style>
    </head>
    <body>
        <!-- Navbar Start -->
        <jsp:include page="/Template/HeadMenuPublic.jsp" />
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Feedback Management</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Manager</a></li>
                        <li class="breadcrumb-item">Feedbacks</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->
        <div class="container my-5 py-5">
            <div class="d-flex justify-content-center btn-group-sm" >
                <form action="feedbacksfilter" method="get">
                    <select style="margin-left: 5px; background:#FE5D37;  color: #FFF5F3;" class="btn bg-default" name="status">
                        <option value="">all</option>
                        <option value="1">view</option>
                        <option value="0">hide</option>
                    </select>
                    <select style="margin-left: 5px; background:#FE5D37; color: #FFF5F3;" class="btn bg-default" name="sevice">
                        <option value="">all</option>
                        <c:forEach items="${requestScope.sevices}" var="s">
                            <option>${s.servicename}</option>
                        </c:forEach>
                    </select>
                    <select style="margin-left: 5px; background:#FE5D37; color: #FFF5F3;" class="btn bg-default" name="star">
                        <option value="">all</option>
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    <input style="margin-left: 5px; background:#FE5D37; color: #FFF5F3;" class="btn bg-default" type="text" name="name" placeholder="Name">
                    <button style="margin-left: 5px; background:#FE5D37; color: #FFF5F3;" class="badge btn-default" type="submit" >Filter</button>
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
                                         src="${a.user.avatar}" alt="avatar" width="60"
                                         height="60" /></a>
                                    <div>
                                        <h6 class="fw-bold mb-1"><a href="feedbackdetails?idfeedback=${a.feedbacks.feedbackid}">${a.user.fullname} - ${a.service.servicename}</a></h6>
                                        <div class="d-flex align-items-center mb-3">
                                            <p class="mb-0">
                                                ${a.feedbacks.date}
                                            <form action="feedbackslist" method="post">
                                                <input type="text" value="${a.feedbacks.feedbackid}" name="id" style="display: none;">
                                                <select  class="badge bg-default" style="margin-left: 5px;  background:#FE5D37; color: #FFF5F3;" name="status">
                                                    <c:if test="${a.feedbacks.status == 1}">
                                                        <option value="${a.feedbacks.status}">view</option>
                                                        <option value="0">hide</option>
                                                    </c:if>
                                                    <c:if test="${a.feedbacks.status == 0}">
                                                        <option value="${a.feedbacks.status}">hide</option>
                                                        <option value="1">view</option>
                                                    </c:if>
                                                </select>
                                                    <button style=" background:#FE5D37; color: #FFF5F3;" type="submit" class="badge btn-default" ><i class="fas fa-genderless"></i></button>

                                            </form>

                                            </p>

                                            <a href="#!" class="link-muted"><i class="fas fa-star ms-2">${a.feedbacks.star}</i></a>
                                        </div>
                                        <p class="mb-0 detail">
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
