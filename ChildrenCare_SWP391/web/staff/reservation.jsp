<%-- 
    Document   : reservation
    Created on : May 27, 2022, 3:06:03 PM
    Author     : dathp
--%>

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
        <title>RESERVATIONS</title>
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
            .all{

                margin: auto;
                width: 70%;


            }
            .table_r {
                width: 100%;
                border-collapse: collapse;
                overflow: hidden;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
            }

            .table_r th {
                font-size: 22px;
                text-align: center;  
                padding: 20px;
                color: #fff;
                background-color: #FE5D37;
            }

            .table_r td {
                text-align: center;  
                font-size: 20px;
                padding: 20px;
                background-color: rgba(255,255,255,0.2);
                color: #000;
            }







        </style>
    </head>
    <body>



        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0">
            <a href="index.html" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class="fa fa-book-reader me-3"></i>ChildrenCare</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    <a href="HomePage.jsp" class="nav-item nav-link ">Home</a>
                    <a href="about.html" class="nav-item nav-link">About Us</a>
                    <a href="classes.html" class="nav-item nav-link">Classes</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 rounded-bottom border-0 shadow-sm m-0">
                            <a href="reservation" class="dropdown-item">Reservations List</a>
                            <a href="medical" class="dropdown-item">Medical list</a>
                            <a href="prescription" class="dropdown-item">Prescription For Staff</a>
                            <a href="appointment.html" class="dropdown-item">Make Appointment</a>
                            <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            <a href="404.html" class="dropdown-item">404 Error</a>
                        </div>
                    </div>
                    <a href="contact.html" class="nav-item nav-link">Contact Us</a>
                </div>

            </div>
        </nav>
        <!-- Navbar End -->

        <div >
            <div class="all" style="padding-top: 30px;">
                <form method="get" action="searchreservation">
                    <table>
                        <tr>
                            <th><input type="text" name="rid"  placeholder="Search Reservation ID"  class="form-control" /></th>
                            <th><input type="text" name="rid"  placeholder="Search Customer Name"  class="form-control" /></th>
                            <th><button type="submit" class="btn btn-secondary">
                                    <i class="fas fa-search"></i>
                                </button></th>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="all">
                <form method="get" action="filterreservation">
                    <table>
                        <tr>
                            <th><input class="form-control" type="date" name="datefrom" ></th>
                            <th><input class="form-control" type="date" name="dateto" ></th>
                            <th><select name="status" class="form-control">
                                    <option value="">all status</option>
                                    <option value="wait">wait</option>
                                    <option value="being">being</option>
                                </select></th>
                            <th>
                                <select name="staff" class="form-control">
                                    <option value="">all staff</option>
                                    <c:forEach items="${requestScope.staff}" var="s">
                                        <option value="${s.userid}">${s.fullname}</option>
                                    </c:forEach>
                                </select>
                            </th>
                            <th><button class="btn btn-secondary" type="submit">Filter</button></th>
                            
                        </tr>
                    </table>
                </form>
                <button style="float: right;" class="btn btn-secondary" onclick="myFunction()" >show full list</button>
            </div>

            <div class="all">
                <table class="table_r">
                    <tr>
                        <th></th>
                        <th class="show" style="display: none;">Reservation id</th>
                        <th>Reservation date</th>
                        <th>Customer name</th>
                        <th class="show" style="display: none;">Service name</th>
                        <th>Total cost</th>
                        <th>Status</th>
                    </tr>
                    <c:set value="1" var="count" />
                    <c:forEach items="${requestScope.all}" var="a">

                        <tr>                 

                            <td>${count}</td> 
                            <td class="show" style="text-align:center; display: none;"><a style="text-decoration: none; color: black" href="reservationdetails?id=${a.user.userid}">${a.reservationid}</a></td>
                            <td>${a.ordertime}</td>
                            <td><a style="text-decoration: none; color: black" href="reservationdetails?id=${a.user.userid}">${a.user.fullname}</a></td>
                            <td class="show" style="display: none;">${a.service.servicename}</td>
                            <td>${a.totalcost}</td>
                            <td>${a.status}</td>
                        <h1 hidden>${count=count +1}</h1>

                        </tr>
                    </c:forEach>
                </table>
            </div>
           

        </div>
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
