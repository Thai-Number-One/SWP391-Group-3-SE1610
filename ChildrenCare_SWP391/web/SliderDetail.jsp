<%-- 
    Document   : SliderDetail
    Created on : Jun 16, 2022, 10:27:35 PM
    Author     : s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">

    

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-stand-blog.css">
    <link rel="stylesheet" href="assets/css/owl.css">
<!--
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <title>Post Detail</title>
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
            .row{
                width: 1000px;
            }
            .blog-thumb{
                margin-bottom: 40px;
            .h2{
                color: rgb(254,93,55);
            }
            }.sidebar-h{
                width: 400px;
                height: 40px;
                margin-left: 15px;
            }
            
            .sidebar-h h5 {
                line-height: 10px;
                color: rgb(254,93,55);
            }.sidebar-item{
                width: 1000px;
            }
            .contact-us .contact-form input{
                text-transform: none;
                font-size: 16px;
            }
            .contact-us .contact-form textarea{
                text-transform: none;
                font-size: 16px;
            }.col-lg{
                width: 10px;
                margin-left: 180px;
            }
            .contact-us .sidebar-heading h2{
                font-size: 30px;
            }.blog-posts .down-content p{
                font-size: 17px;
                color: #393f54;
            }
            .blog-posts .down-content{
                margin-left: 160px;
            }
            .blog-posts .blog-thumb img{
                margin-left: 160px;
                
            }.post-tags{
                padding-left: 10px;
                
            }.dddd{
                background-color: #babec2;
            }.contact-us .contact-form button{
                margin-top: 50px;
                
            }.sidebar-h-a h5{
                margin-top: 30px;
                margin-bottom: 28px;
                line-height: 10px;
                color: rgb(254,93,55);
                margin-left: 12px;
            }.blog-thumb{
                width: 1000px;
                height: 600px;
            }
            .blog-thumb img{
                width: auto;
                height: 100%;
            }.contact-us .contact-form button{
                width: 130px;
            }.col-lg-r{
                width: 100%;
                height: 100px;
                margin-left: 15px;
            }
            
            
                
    </style>

<!--

TemplateMo 551 Stand Blog

https://templatemo.com/tm-551-stand-blog

-->
  </head>
    <body>
        <!-- Navbar Start -->
        <jsp:include page="/Template/HeadMenuPublic.jsp"/>
        
    <!-- Navbar End -->
        
        <section class="contact-us">
      <div class="container">
          <div class="row">
             
                  <div class="col-lg-12">
                      <div class="down-contact">
                          <div class="row">
                              <div class="col-lg-8">
                                  <form action="EditSlider" method="post">
                                  <div class="blog-thumb">
                                      <img src="${SliderD.image}" alt="">
                                  </div>
                                  <div class="sidebar-item contact-form">
                                      <div class="sidebar-heading">
                                          <h2>Slider Detail</h2>
                                      </div>
                                      <div class="content">
                                          
                                              
                                              <div class="sidebar-h">
                                                    <h5 clas="edi">Slider_ID: </h5>
                                              </div>
                                              <div class="col-md-6 col-sm-12-1">
                                                  <fieldset>
                                                      <input class="dddd" name="slider_id" type="text" readonly id="name" required="" value="${SliderD.slider_ID}">
                                                  </fieldset>
                                              </div>
                                                  
                                              <div class="sidebar-h">
                                                    <h5 clas="edi">Author: </h5>
                                              </div>
                                              <div class="col-md-6 col-sm-12-1">
                                                  <fieldset>
                                                      <input class="dddd" name="user_id" type="text" readonly id="name" required="" value="${SliderD.user_ID}">
                                                  </fieldset>
                                              </div>
                                              
                                             <div class="sidebar-h">
                                                    <h5 clas="edi">Status: </h5>
                                              </div>
                                              <div class="col-md-6 col-sm-12-1">
                                                  <fieldset>
                                                      <input name="status" type="text" id="subject" value="${SliderD.status}">
                                                  </fieldset>
                                              </div>      

                                              <div class="sidebar-h">
                                                  <h5 clas="edi"> Image Link</h5>
                                              </div>
                                              <div class="col-md-6 col-sm-12">
                                                  <fieldset>
                                                      <input class="imageli" name="image" type="text" id="name" required="" value="${SliderD.image}">
                                                  </fieldset>
                                              </div>
                                              <div class="sidebar-h">
                                                  <h5 clas="edi">Title </h5>
                                              </div>
                                              <div class="col-md-12 col-sm-12">
                                                  <fieldset>
                                                      <input name="title" type="text" id="subject" value="${SliderD.title}">
                                                  </fieldset>
                                              </div>
                                              <div class="sidebar-h">
                                                  <h5 clas="edi">Blacklink </h5>
                                              </div>
                                              <div class="col-lg-12">
                                                  <fieldset>
                                                      <textarea name="backlink" rows="6" id="message"  required="">${SliderD.backLink}</textarea>
                                                  </fieldset>
                                              </div>
                                                  
                                               <p class="text-danger">${mess}</p>    
                                                  
                                             <div class="sidebar-h-a">
                                                  <h5 clas="edi">Status: </h5>
                                              </div> 
                                                  
                                              <div class="col-lg-12">
                                                          <select class="choincate" name="choicestatus">
                                                           
                                                                <option value="1">Active</option>
                                                                <option value="0">Deactive</option>
                                                            </select>
                                                        </div>
                                              </div>         
                                                  
                                                      <div class="col-lg-edit">
                                                          <div class="sidebar-item submit-comment">

                                                              <div class="content">


                                                                  <div class="col-lg-r">
                                                                      <fieldset>
                                                                          
                                                                              <button type="submit" id="form-submit" class="main-button">Edit Slider</button>
                                                                         
                                                                      </fieldset>
                                                                  </div>



                                                              </div>
                                                          </div>
                                                      </div>      
                                                
                                      </div>
                                  </div>
                                  </form>                
                              </div>
                          </div>
                      </div>
                  </div>


              
          </div>
      </div>
    </section>
        
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


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/accordions.js"></script>


    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>                                             
                                                  
    </body>
</html>
