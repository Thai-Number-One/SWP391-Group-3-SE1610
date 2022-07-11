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
        <jsp:include page="/Template/HeadMenuPublic.jsp"/>
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Reservations</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Staff</a></li>
                        <li class="breadcrumb-item">Reservations</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->

        <div >
            <div class="all" style="padding-top: 30px;">
                <form method="get" action="searchreservation">
                    <table>
                        <tr>
                            <th><input type="text" name="rid"  placeholder="Search Reservation ID"  class="form-control" /></th>
                            <th><input type="text" name="name"  placeholder="Search Customer Name"  class="form-control" /></th>
                            <th><button type="submit" style="background:#FE5D37; color: #FFF5F3;" class="btn btn-secondary">
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
                                    <option value="-1">Not Approved</option>
                                    <option value="0">Pending</option>
                                    <option value="1">Approved</option>
                                </select></th>
                            <th>
                                <select name="staff" class="form-control">
                                    <option value="">all staff</option>
                                    <c:forEach items="${requestScope.staff}" var="s">
                                        <option value="${s.userid}">${s.fullname}</option>
                                    </c:forEach>
                                </select>
                            </th>
                            <th><button style="background:#FE5D37; color: #FFF5F3;" class="btn btn-secondary" type="submit">Filter</button></th>

                        </tr>
                    </table>
                </form>
                <button style="float: right; background:#FE5D37; color: #FFF5F3;" class="btn btn-secondary" onclick="myFunction()" >show full list</button>
            </div>

            <div class="all">
                <table class="table_r">
                    <tr>

                        <th class="show" style="display: none;">Reservation id</th>
                        <th>Reservation date</th>
                        <th>Customer name</th>
                        <th>Customer's child</th>
                        <th class="show" style="text-align:center; display: none;">Child's age</th>
                        <th class="show" style="display: none;">Service name</th>
                        <th>Unit Price</th>
                        <th>Status</th>
                    </tr>

                    <c:forEach items="${requestScope.all}" var="a">

                        <tr>                 


                            <td class="show" style="text-align:center; display: none;"><a style="text-decoration: none; color: black" href="reservationdetails?id=${a.user.userid}">${a.reservations.reservationID}</a></td>

                            <td>${a.reservations.beginTime}</td>
                            <td><a style="text-decoration: none; color: black" href="reservationdetails?id=${a.user.userid}">${a.user.fullname}</a></td>
                            <td>${a.redetail.childrenname}</td>
                            <td class="show" style="text-align:center; display: none;">${a.redetail.age}</td>
                            <td class="show" style="display: none;">${a.service.servicename}</td>
                            <td>${a.service.price}</td>
                            <c:if test="${a.reservations.status==-1}">
                                <td>Not Approved </td>
                            </c:if>
                            <c:if test="${a.reservations.status==0}">
                                <td>Pending </td>
                            </c:if>
                            <c:if test="${a.reservations.status==1}">
                                <td>Approved </td>
                            </c:if>



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
