<%-- 
    Document   : staff_add_prescription
    Created on : Jun 1, 2022, 11:03:09 PM
    Author     : dathp
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
        <title>Prescribing medicine</title>
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

            .table_m {
                width: 100%;
                border-collapse: collapse;
                overflow: hidden;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
                text-align: center;
            }


            .table_m td {
                font-size: 20px;
                padding: 15px;
                background-color: rgba(255,255,255,0.2);
                color: #000;
            }

            .table_m th {
                font-size: 22px;
                padding: 15px;
                color: #fff;
                background-color: #FE5D37;
            }
        </style>
    </head>
    <body>
        <!-- Navbar Start -->
        <jsp:include page="/Template/HeadMenuPublic.jsp"/>
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Prescribing medicine</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Staff</a></li>
                        <li class="breadcrumb-item">Prescribing medicine</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->

        <div>
            <div <div class="all" style="padding-top: 30px;">
                    <form action="checkprescription" method="get">
                        <table>
                            <tr>
                                <th><input  class="form-control" type="text" name="id" placeholder="enter prescription ID"></th>
                                <th> <input style="background:#FE5D37; color: #FFF5F3;" type="submit" value="Check" class="btn btn-secondary"></th>
                                    <c:if test="${requestScope.check==1}">
                                    <th style="color: red;">Not Found</th>
                                    </c:if>
                            </tr>
                        </table>

                    </form>
                </div>
                <div class="all">
                    <h1 style="color: #FE5D37; text-align: center;">Medical Prescription</h1>
                    <table class="table_m">


                        <tr>
                            <th>Prescription_ID</th>
                            <th>User Name</th>
                            <th>Children Name</th>
                            <th>Children Age</th>
                            <th>Service Name</th>

                        </tr>
                        <c:forEach items="${requestScope.all}" var="a">
                            <tr>
                                <td>${a.redetail.prescription_ID}</td>
                                <td>${a.user.fullname}</td>
                                <td>${a.redetail.childrenname}</td>
                                <td>${a.redetail.age}</td>
                                <td>${a.service.servicename}</td>
  
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>

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
