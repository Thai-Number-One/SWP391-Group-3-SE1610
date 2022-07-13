<%-- 
    Document   : ReservationInformation
    Created on : Jun 28, 2022, 10:23:10 PM
    Author     : s
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <title>RESERVATIONS INFORMATION</title>
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

                background: #fff;
                box-shadow: 0 2px 5px 0;
                padding : 30px;
                margin: auto;
                width: 65%;


            }
            .table_r {
                margin-top: 50px;
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
            }.lists{
                margin-top: 100px;
            }.col-lg-edit{
                width: 100%;
                height: 100px;
            }.col-lg a button{
                margin-top: 40px;
                margin-left: 650px;
                width: 250px;
                height: 50px;
                background-color: #FE5D37;
                color: #ffffff;
                border: 0;
            }







        </style>
    <body>
        <!-- Navbar Start -->
        <jsp:include page="/Template/HeadMenuPublic.jsp"/>
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Reservations Information</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="LoadMyReservation?Uid=">My Reservations</a></li>
                        <li class="breadcrumb-item">Reservations Information</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->
        
        <div >
             

            <div class="all">
                
                <div style="margin: auto; width: 80%;" class="row">
                <h1 style="color: #FE5D37; text-align: center; padding-bottom: 30px;">Reservation Information</h1>
                <div class="col-8">
                    <c:set value="0" var="count" />
                    <c:set value="0" var="total" />
                    <c:forEach items="${requestScope.all}" var="a">
                        <c:if test="${count==0}">     
                            <h2>Full Name: ${a.user.fullname}</h2>
                            <h2>Address: ${a.user.address}</h2>
                            <h2>Mobile: ${a.user.phone}</h2>
                            <h2>Email: ${a.user.email}</h2>
                            
                        </c:if>
                        <h3 style="display: none;">${count=count +1}</h3>
                    </c:forEach>
                    
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
                
                
                <table class="table_r">
                    <tr>
                        
                        <th class="show">Customer's Child</th>
                        <th>Child's Age</th>
                        <th>Reservation Date</th>
                        <th>Service Name</th>
                        <th>Time Check</th>
                        <th>Total Cost</th>
                        <th>Status</th>
                    </tr>
                    

                        <tr>                 

                            
                            <td>${ReDetail.children_name}</td>
                            <td>${ReDetail.age}</td>
                            <td>${detailreser.begin_time}</td>
                            <td>${SerDe.service_name}</td>
                            <td>${detailreser.date}</td>
                            <td>${detailreser.totalCost}</td>

                            <c:if test="${detailreser.status==-1}">
                                <td>Not Approved </td>
                            </c:if>
                            <c:if test="${detailreser.status==0}">
                                <td>Pending </td>
                            </c:if>
                            <c:if test="${detailreser.status==1}">
                                <td>Approved </td>
                            </c:if>

                       

                        </tr>
                   
                </table>
                            
                <div class="lists">

                <h1 style="color: #FE5D37;  text-align: center;">Service Detail</h1>
                <table class="table_r">

                    <tr>
                        <th>Thumbnail</th>
                        <th>Service Name</th>
                        <th>Category</th>
                        <th>Unit Price</th>
                        <th>Discount</th>
                        <th>Rate</th>

                    </tr>
                    
                        <tr>
                            <td><img src="${SerDe.image}" width="auto" height="50" class="rounded-circle shadow-1-strong me-3" alt="avatar"/></td>

                            <td>${SerDe.service_name}</td>
                            <td>${SerDe.type}</td>
                            <td>${SerDe.price}</td>
                            <td >${SerDe.discount}</td>
                            <td>
                                <c:if test="${requestScope.SerDe.rate == 1}">
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="far fa-star" style="color: orange;"></span>
                                    <span class="far fa-star" style="color: orange;"></span>
                                    <span class="far fa-star" style="color: orange;"></span>
                                    <span class="far fa-star" style="color: orange;"></span>
                                </c:if>
                                <c:if test="${requestScope.SerDe.rate == 2}">
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="far fa-star" style="color: orange;"></span>
                                    <span class="far fa-star" style="color: orange;"></span>
                                    <span class="far fa-star" style="color: orange;"></span>
                                </c:if>
                                <c:if test="${requestScope.SerDe.rate == 3}">
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="far fa-star" style="color: orange;"></span>
                                    <span class="far fa-star" style="color: orange;"></span>
                                </c:if>
                                <c:if test="${requestScope.SerDe.rate == 4}">
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="far fa-star" style="color: orange;"></span>
                                </c:if>
                                    <c:if test="${requestScope.SerDe.rate == 4.5}">
                                        <span class="fas fa-star" style="color: orange;"></span>
                                        <span class="fas fa-star" style="color: orange;"></span>
                                        <span class="fas fa-star" style="color: orange;"></span>
                                        <span class="fas fa-star" style="color: orange;"></span>
                                        <span class="far fa-star" style="color: orange;"></span>
                                    </c:if>
                                <c:if test="${requestScope.SerDe.rate == 5}">
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="fas fa-star" style="color: orange;"></span>
                                    <span class="fas fa-star" style="color: orange;"></span>
                                </c:if>
                            </td>
                            
                        </tr>
                    
                </table>
                            
                            
                            <div class="col-lg-edit">
                                <div class="sidebar-item submit-comment">

                                    <div class="content">


                                        <div class="col-lg">
                                            <fieldset>
                                                <a href="ChangeReservation?Rid=${ReDetail.reservation_ID}">
                                                    <button type="submit" id="form-submit" class="main-button">Edit Reservation Information</button>
                                                </a>
                                            </fieldset>
                                        </div>



                                    </div>
                                </div>
                            </div>  

                            
            </div>            
                            
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
