<%-- 
    Document   : contact
    Created on : Jun 30, 2022, 9:33:17 AM
    Author     : phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Contact US</title>
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
        <link href="scss/bootstrap/scss/_containers.scss" rel="stylesheet">
        <link href="scss/bootstrap/scss/_navbar.scss" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <!-- Template Javascript -->
        <script src="js/main.js"></script>


    </head>

    <body>

        <jsp:include page="/Template/HeadMenuPublic.jsp"/>
        <section>
            <!-- Contact Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                        <h1 class="mb-3">Contact</h1>
                        <p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor ut dolore lorem kasd vero ipsum sit
                            eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
                    </div>
                    <div class="row g-4 mb-5">
                        <div class="col-md-6 col-lg-4 text-center wow fadeInUp" data-wow-delay="0.1s">
                            <div class="bg-light rounded-circle d-inline-flex align-items-center justify-content-center mb-4" style="width: 75px; height: 75px;">
                                <i class="fa fa-map-marker-alt fa-2x text-primary"></i>
                            </div>
                            <h6>Đại Học FPT</h6>
                        </div>
                        <div class="col-md-6 col-lg-4 text-center wow fadeInUp" data-wow-delay="0.3s">
                            <div class="bg-light rounded-circle d-inline-flex align-items-center justify-content-center mb-4" style="width: 75px; height: 75px;">
                                <i class="fa fa-envelope-open fa-2x text-primary"></i>
                            </div>
                            <h6>info@example.com</h6>
                        </div>
                        <div class="col-md-6 col-lg-4 text-center wow fadeInUp" data-wow-delay="0.5s">
                            <div class="bg-light rounded-circle d-inline-flex align-items-center justify-content-center mb-4" style="width: 75px; height: 75px;">
                                <i class="fa fa-phone-alt fa-2x text-primary"></i>
                            </div>
                            <h6>+012 345 6789</h6>
                        </div>
                    </div>
                    <div class="bg-light rounded">
                        <div class="row g-0">
                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                                <div class="h-100 d-flex flex-column justify-content-center p-5">
                                    <p class="mb-4">Hãy gửi cảm nhận của quý khách về dịch vụ của chúng tôi </br> Chúng Tôi sẽ phản hồi lại quý khách ngay lập tức !</p>
                                    <div class="guithongtin">
                                        <p style="font-size: 22px; color: gray">Gửi thông tin liên lạc cho chúng tôi: </p>
                                        <hr />
                                        <div class="lienhe-info">
                                        <form name="formlh" onsubmit="return nguoidung()">
                                            <table cellspacing="20px">
                                                <tr>
                                                    <td>Họ và tên</td>
                                                    <td><input type="text" name="ht" size="40" maxlength="40" placeholder="Họ tên"
                                                               autocomplete="off" required></td>
                                                </tr>
                                                <tr>
                                                    <td>Điện thoại liên hệ</td>
                                                    <td><input type="text" name="sdt" size="40" maxlength="11" minlength="10" placeholder="Điện thoại"
                                                               required></td>
                                                </tr>
                                                <tr>
                                                    <td>Địa chỉ Email</td>
                                                    <td><input type="email" name="em" size="40" placeholder="Email" autocomplete="off"
                                                               required></td>
                                                </tr>
                                                <tr>
                                                    <td>Tiêu đề</td>
                                                    <td><input type="text" name="tde" size="40" maxlength="100" placeholder="Tiêu đề"
                                                               required>
                                                </tr>
                                                <tr>
                                                    <td>Nội dung</td>
                                                    <td><textarea name="nd" rows="5" cols="44" maxlength="500" wrap="physical"
                                                                  placeholder="Nội dung liên hệ" required></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td><button class="checkAll" type="submit" id="btn">Gửi thông tin liên hệ</button></td>
                                                </tr>
                                            </table>
                                        </form>
                                    </div>
                                        </div>
                                </div>
                            </div>
                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
                                <div class="position-relative h-100">
                                    <iframe class="position-relative rounded w-100 h-100"
                                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001156.4288297426!2d-78.01371936852176!3d42.72876761954724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1603794290143!5m2!1sen!2sbd"
                                            frameborder="0" style="min-height: 400px; border:0;" allowfullscreen="" aria-hidden="false"
                                            tabindex="0"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Contact End -->
        </section>



        <jsp:include page="Template/FooterPublic.jsp"/>
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    </body>
</html>