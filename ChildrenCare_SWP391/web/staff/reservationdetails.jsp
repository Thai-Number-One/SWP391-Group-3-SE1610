<%-- 
    Document   : reservationdetails
    Created on : May 29, 2022, 9:22:08 PM
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
        <title>RESERVATION DETAILS</title>
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
                background: #fff;
                box-shadow: 0 2px 5px 0;
                padding : 30px;
                margin: auto;
                width: 65%;


            }

            .table_r {
                padding-top: 30px;
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
                <h1 class="display-2 text-white animated slideInDown mb-4">Reservations Detail</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Staff</a></li>
                        <li class="breadcrumb-item"><a href="reservation">Reservations</a></li>
                        <li class="breadcrumb-item">Reservations Detail</li>

                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->

        <div class="all">
            <div style="margin: auto; width: 80%;" class="row">
                <h1 style="color: #FE5D37; text-align: center; padding-bottom: 30px;">Reservation Information</h1>
                <div class="col-8">
                    <c:set value="0" var="count" />
                    <c:set value="0" var="total" />
                    <c:forEach items="${requestScope.all}" var="a">
                        <c:if test="${count==0}">     
                            <h2>Customer Full Name: ${a.user.fullname}</h2>
                            <h2>Address: ${a.user.address}</h2>
                            <h2>Mobile: ${a.user.phone}</h2>
                            <h2>Email: ${a.user.email}</h2>
                            <h2>Reservation Date: ${a.reservations.beginTime}</h2>
                        </c:if>
                        <h3 style="display: none;">${count=count +1}</h3>
                        <h3 style="display: none;">${total=total + a.reservations.totalcost}</h3>
                    </c:forEach>
                    <h2>Total Cost: ${total}</h2>
                </div>
                <div class="col-4" >
                    <c:set value="0" var="count" />
                    <c:forEach items="${requestScope.all}" var="a">
                        <c:if test="${count==0}">     
                            <img  src="${a.user.avatar}" width="250" height="auto">
                        </c:if>
                        <h3 style="display: none;">${count=count +1}</h3>
                    </c:forEach>
                </div>
            </div><br/>


            <div >

                <h1 style="color: #FE5D37;  text-align: center;">This list of reserved services</h1>
                <table class="table_r">

                    <tr>
                        <th>Thumbnail</th>
                        <th>Customer's Child</th>
                        <th>Child's Age</th>
                        <th>Category</th>
                        <th>Unit Price</th>
                        <th>Status</th>

                    </tr>
                    <c:forEach items="${requestScope.all}" var="a">
                        <tr>
                            <td><img src="${a.service.image}" width="auto" height="50" class="rounded-circle shadow-1-strong me-3" alt="avatar"/></td>

                            <td>${a.redetail.childrenname}</td>
                            <td >${a.redetail.age}</td>
                            <td>${a.service.servicename}</td>
                            <td>${a.service.price}</td>
                            <td>
                                <form action="updatestatusreservation" method="get">
                                    <input type="text" style="display: none;" name="id" value="${a.reservations.reservationID}">
                                    <input type="text" style="display: none;" name="uid" value="${a.user.userid}">
                                    <select name="status">

                                        <c:if test="${a.reservations.status==-1}">
                                            <option value="${a.reservations.status}">Not Approved</option>
                                            <option value="0">Pending</option>
                                            <option value="1">Approved</option>
                                        </c:if>
                                        <c:if test="${a.reservations.status==0}">
                                            <option value="${a.reservations.status}">Pending</option>
                                            <option value="-1">Not Approved</option>
                                            <option value="1">Approved</option>
                                        </c:if>
                                        <c:if test="${a.reservations.status==1}">
                                            <option value="${a.reservations.status}">Approved</option>
                                            <option value="-1">Not Approved</option>
                                            <option value="0">Pending</option>
                                        </c:if>
                                    </select>
                                    <button class="btn" type="submit"><i class="bi bi-arrow-clockwise"></i></button>
                                </form>

                            </td>
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
