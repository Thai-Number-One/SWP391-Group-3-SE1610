<%-- 
    Document   : medical_examination
    Created on : Jun 1, 2022, 5:57:56 PM
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
        <title>Medical</title>
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
                padding: 30px;
                margin: auto;
                width: 80%;


            }
            .table_m {
                width: 100%;
                border-collapse: collapse;
                overflow: hidden;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
                text-align: center;
            }


            .table_m td {
                padding: 15px;
                background-color: rgba(255,255,255,0.2);
                color: #000;
            }

            .table_m th {
                font-size: 20px;
                padding: 15px;
                color: #fff;
                background-color: #FE5D37;
            }
            .det{
                display: -webkit-box;
                width: 200px;
                height: 100px;
                line-height: 30px;
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
                <h1 class="display-2 text-white animated slideInDown mb-4">Medical</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Staff</a></li>
                        <li class="breadcrumb-item">Medical</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->

        <div>
            <div class="all">
                <h1 style="color: #FE5D37;  text-align: center;">Medical</h1>
                <form action="filtermedical" method="get" >
                    <table>
                        <tr>
                            <th> <select  name="service" class="form-control">
                                    <option value="">All Service</option>
                                    <c:forEach items="${requestScope.se}" var="s">
                                        <option value="${s.serviceid}">${s.servicename}</option>
                                    </c:forEach>
                                </select></th>
                            <th><input type="date" name="from" class="form-control"></th>
                            <th><input type="date" name="to" class="form-control"></th>
                            <th><select  name="medical" class="form-control">
                                    <option value="">All Medical</option>
                                    <c:forEach items="${requestScope.me}" var="m">
                                        <option>${m.medicinename}</option>
                                    </c:forEach>
                                </select></th>
                                <th><input style="background:#FE5D37; color: #FFF5F3;" type="submit" value="filter" class="btn btn-secondary"></th>
                        </tr>
                    </table>





                </form>
                
                <table class="table_m">
                    <tr>
                        <th>Date</th>
                        <th>Customer full name</th>
                        <th>Customer's child</th>
                        <th>Child's age</th>
                        <th>Used services</th>
                        <th>Medicine_name</th>
                        <th>Amount</th>
                        <th>Price</th>
                        <th>Drug-producing country</th>
                        <th>Expiry date</th>
                        <th>Detail</th>
                        <th>Image</th>
                        <th>Note</th>
                    </tr>
                    <c:forEach items="${requestScope.all}" var="a">
                        <tr>
                            <td>${a.reservations.date}</td>
                            <td><a style="color: black;" href="detailmedicalservlet?id=${a.reservationdetail.prescription_ID}">${a.user.fullname}</a></td>
                            <td><a style="color: black;" href="detailmedicalservlet?id=${a.reservationdetail.prescription_ID}">${a.reservationdetail.childrenname}</a></td>
                            <td>${a.reservationdetail.age}</td>
                            <td>${a.service.servicename}</td>
                            <td>${a.medicine.medicinename}</td>
                            <td>${a.prescription.amount}</td>
                            <td>${a.medicine.price}</td>
                            <td>${a.medicine.country}</td>
                            <td>${a.medicine.expirydate}</td>
                            <td class="det">${a.medicine.detail}</td>
                            <td><img src="${a.medicine.image}" alt="img" width="100" height="100"></td>
                            <td class="det">${a.prescription.note}</td>
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
