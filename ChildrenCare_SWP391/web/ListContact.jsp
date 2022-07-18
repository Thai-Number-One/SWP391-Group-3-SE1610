

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
            function Delete() {
                var result = confirm("Are you want delete it?");
                if (result == true) {
                    alert("Delete it");
                } else {
                    alert("Don't delete it");
                }
            }
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
        <jsp:include page="/Template/HeadMenuPublic.jsp" />
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Contact</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Manager</a></li>
                        <li class="breadcrumb-item">Contact</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->
        <div class="container my-5 py-5">

            <div class="row d-flex justify-content-center">
                <div class="col-md-12 col-lg-10">
                    <div class="card text-dark">
                        <div class="card-body p-4">
                            
                                <table class="table_r">
                                    <tr>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>phone</th>
                                        <th>Message</th>
                                        <th></th>
                                    </tr>
                                    <c:forEach items="${requestScope.all}" var="a">
                                        <tr>
                                            <td>${a.name}</td>
                                            <td>${a.email}</td>
                                            <td>${a.phone}</td>
                                            <td>${a.mess}</td>

                                            <td>
                                                <form action="contactservlet" method="post">
                                                <input type="number" name="change" value="0" style="display: none;">
                                                <input type="text" name="idc" value="${a.contactid}" style="display: none;">
                                                <button type="submit" class="btn btn-primary" onclick="Delete()">Delete</button>
                                                </form>
                                            </td>

                                        </tr>
                                    </c:forEach>
                                </table>
                            


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
