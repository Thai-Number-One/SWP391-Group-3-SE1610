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
        <title>Medical DETAILS</title>
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
                <h1 class="display-2 text-white animated slideInDown mb-4">Medical Detail</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Staff</a></li>
                        <li class="breadcrumb-item"><a href="reservation">Medical</a></li>
                        <li class="breadcrumb-item">Medical Detail</li>

                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->

        <div class="all">
            <div style="margin: auto; width: 80%;" class="row">
                <h1 style="color: #FE5D37; text-align: center; padding-bottom: 30px;">Information</h1>
                <div class="col-8">
                    <c:set value="0" var="count" />
                    <c:forEach items="${requestScope.all}" var="a">
                        <c:if test="${count==0}">     
                            <h2>Customer Full Name: <span style="color: #666666; font-size: 28px">${a.user.fullname}</span></h2>        
                            <h2>Address: <span style="color: #666666; font-size: 28px">${a.user.address}</span></h2>
                            <h2>Mobile: <span style="color: #666666; font-size: 28px">${a.user.phone}</span></h2>
                            <h2>Email: <span style="color: #666666; font-size: 28px">${a.user.email}</span></h2>
                            <h2>Reservation Date: <span style="color: #666666; font-size: 28px">${a.reservations.beginTime}</span></h2>
                            <h2>Customer's child: <span style="color: #666666; font-size: 28px">${a.reservationdetail.childrenname}</span></h2>
                            <h2>Child's age:<span style="color: #666666; font-size: 28px">${a.reservationdetail.age}</span></h2>
                            <h2>Used services:<span style="color: #666666; font-size: 28px">${a.service.servicename}</span></h2>
                            <h3 style="display: none;">${count=count +1}</h3>
                        </c:if>
                    </c:forEach>

                </div>
                <div class="col-4" >
                    <c:set value="0" var="count" />
                    <c:forEach items="${requestScope.all}" var="a">
                        <c:if test="${count==0}"> 
                            <img  src="${a.user.avatar}" width="250" height="auto" style="margin-bottom: : 30px;">                      
                        </c:if>
                        <h3 style="display: none;">${count=count +1}</h3>
                    </c:forEach>
                </div>
            </div>
            <div class="row" style="margin: auto; width: 80%;">
                <c:forEach items="${requestScope.all}" var="a">
                    <div class="col-8">
                        
                        <h2>Medicine name:<span style="color: #666666; font-size: 28px">${a.medicine.medicinename}</span></h2>
                        <h2>Amount:<span style="color: #666666; font-size: 28px">${a.prescription.amount}</span> - Price:<span style="color: #666666; font-size: 28px">${a.medicine.price}$</span></h2>
                        <h2>Drug-producing country:<span style="color: #666666; font-size: 28px">${a.medicine.country}</span></h2>
                        <h2>Expiry date:<span style="color: #666666; font-size: 28px">${a.medicine.expirydate}</span></h2>

                        <h2>Note:<span style="color: #666666; font-size: 28px">${a.prescription.note}</span></h2>
                        <h2>Detail:</h2>
                        <p style="color: #666666; margin-left: 20px">
                            ${a.medicine.detail}
                        </p>
                    </div>
                    <div class="col-4" >
                        <h2>Image Medicine<img src="${a.medicine.image}" alt="img" width="200" height="200"></h2>
                    </div>
                </c:forEach>
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
