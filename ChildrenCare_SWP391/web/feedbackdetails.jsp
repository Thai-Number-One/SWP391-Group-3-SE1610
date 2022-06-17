<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html charset="utf-8">
    <head>
        <meta>
        <title>Feedback details</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@600&family=Lobster+Two:wght@700&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <style>
            * {
                box-sizing: border-box;
            }

            /* Add a gray background color with some padding */
            body {
                font-family: Arial;
                padding: 20px;
                background: #f1f1f1;
            }

            /* Header/Blog Title */
            .header {
                padding: 30px;
                font-size: 40px;
                text-align: center;
                background: white;
            }
            .card {
                background-color: white;
                padding: 20px;
                margin-top: 20px;
                margin-right: 10%;
                margin-left: 20%;
            }

            .row:after {
                content: "";
                display: table;
                clear: both;
            }
            /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 800px) {
                .leftcolumn, .rightcolumn {   
                    width: 100%;
                    padding: 0;
                }
            }
        </style>
    </head>
    <body>
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0">
            <a href="HomePage.jsp" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class="fa fa-book-reader me-3"></i>ChildrenCare</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    <a href="HomePage.jsp" class="nav-item nav-link">Home</a>
                    <a href="about.html" class="nav-item nav-link active">About Us</a>
                    <a href="classes.html" class="nav-item nav-link">Classes</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 rounded-bottom border-0 shadow-sm m-0">
                            <a href="facility.html" class="dropdown-item">School Facilities</a>
                            <a href="team.html" class="dropdown-item">Popular Teachers</a>
                            <a href="call-to-action.html" class="dropdown-item">Become A Teachers</a>
                            <a href="appointment.html" class="dropdown-item">Make Appointment</a>
                            <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            <a href="404.html" class="dropdown-item">404 Error</a>
                        </div>
                    </div>
                    <a href="contact.html" class="nav-item nav-link">Contact Us</a>
                </div>
                <a href="" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">Join Us<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->
        <!-- Page Header End -->
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Feedback</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Feedback</a></li>
                        <li class="breadcrumb-item text-white active" aria-current="page">Details</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="row">
            <div class="leftcolumn">
                <div class="card">
                    <h2 style="border-bottom-style: ridge;">Feedback details</h2>
                    <div>
                    </div>
                </div>
                <div class="container-fluid py-4">
                    <div class="row">
                        <div class="col-12">
                            <div class="card mb-4">
                                <div class="card-header pb-0">
                                    <div class="card-body px-0 pt-0 pb-5">
                                        <div class="table-responsive p-0">
                                            <table class="table align-items-center justify-content-center mb-0">
                                                <thead>
                                                    <tr>
                                                        <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Full Name</th>
                                                        <td>
                                                            <input type="text" value="${feedbackuser.FullName}" class="form-control" name="FullName" readonly required>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2 ">Email</th>
                                                        <td>
                                                            <input type="text" value="${feedbackuser.Email}" class="form-control" name="Email" readonly required>
                                                        </td>
                                                <span class="glyphicon glyphicon-eye-open"></span>                                            
                                                </tr>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Mobile</th>
                                                    <td>
                                                        <input type="text" value="${feedbackuser.Phone}" class="form-control" name="Mobile" readonly required>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Service</th>
                                                    <td class="align-middle text-sm mb-0">
                                                        <input type="text" value="Kham rang" class="form-control" name="Service" readonly required>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Rate star</th>
                                                    <td>
                                                        <c:if test="${feedbackdetails.star == 1}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${feedbackdetails.star == 2}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${feedbackdetails.star == 3}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${feedbackdetails.star == 4}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${feedbackdetails.star == 5}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Feedback</th>
                                                    <td>
                                                        <textarea class="form-control" name="details" readonly required>Qua đây mình mong bài viết sẽ giúp các bạn nắm được component Form và Input Group trong Bootstrap 4 và nếu có thắc mắc gì cứ gửi email mình sẽ phản hồi sớm nhất có thể. Rất mong bạn tiếp tục ủng hộ trang web để mình có thể viết nhiều bài hay hơn nữa nhé. Chúc bạn có một ngày vui vẻ!</textarea>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Status</th>
                                                    <td>
                                                        <c:if test="${feedbackdetails.status == 'view'}">
                                                        <a class="fas fa-eye" style="font-size: 30px; color: black;" href="feedbackstatus?status=view&feedback_id=${feedbackdetails.feedbackid}"></a>
                                                        </c:if>
                                                        <c:if test="${feedbackdetails.status == 'hide'}">
                                                        <a class="fas fa-eye-slash" style="font-size: 30px; color: black;" href="feedbackstatus?status=hide&feedback_id=${feedbackdetails.feedbackid}"></a>
                                                        </c:if>
                                                        </td>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" onclick='window.history.go(-1);'>Return</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </form>
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
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Photo Gallery</h3>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-1.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-2.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-3.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-4.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-5.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-6.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Newsletter</h3>
                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved. 
                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
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
</body>
</html>