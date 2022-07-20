<%-- 
    Document   : SliderDetail
    Created on : Jun 16, 2022, 10:27:35 PM
    Author     : s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
        <link rel="icon" type="image/png" href="img/favicon.png">
        <title>
            Slider Details
        </title>
    

    <!-- Additional CSS Files -->
   
    <link rel="stylesheet" href="assets/css/templatemo-stand-blog.css">
   
<!--
   
        
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
        <!-- Nucleo Icons -->
        <link href="css/nucleo-icons.css" rel="stylesheet" />
        <link href="css/nucleo-svg.css" rel="stylesheet" />
        <!-- Font Awesome Icons -->
        <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
        <link href="css/nucleo-svg.css" rel="stylesheet" />
        <!-- CSS Files -->
        <link id="pagestyle" href="css/argon-dashboard.css?v=2.0.2" rel="stylesheet" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        
    <style>
          
            .row{
                width: 1000px;
            }
            .blog-thumb{
                margin-bottom: 40px;
            .h2{
                color: #5E72E4;
            }
            }.sidebar-h{
                width: 400px;
                height: 40px;
                margin-left: 15px;
            }
            
            .sidebar-h h5 {
                line-height: 10px;
                color: #5E72E4;
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
                color: #5E72E4;
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
                color: #5E72E4;
                margin-left: 12px;
            }.blog-thumb{
                width: 1000px;
                height: 450px;
                margin-top: 150px;
            }
            .blog-thumb img{
                width: auto;
                height: 100%;
            }.contact-us .contact-form button{
                width: 130px;
                background-color: #5E72E4;
            }.col-lg-r{
                width: 100%;
                height: 100px;
                margin-left: 15px;
            }
            .navbar-vertical.bg-white{
                padding-right: 50px;
            }.navbar .navbar-nav a.nav-link{
                font-size: 12px;
                font-weight: bold;
            }.bg-primary {
                background-color: #0d6efd;
            }
            
                
    </style>

<!--

TemplateMo 551 Stand Blog

https://templatemo.com/tm-551-stand-blog

  
-->
  
  </head>
    <body>
        <!-- Navbar Start -->
        
         <div class="min-height-300 bg-primary position-absolute w-100"></div>
         <jsp:include page="Template/managerDashboard.jsp"/>
        <main class="main-content position-relative border-radius-lg ">
            <!-- Navbar -->
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
                <div class="container-fluid py-1 px-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="javascript:;">Pages</a></li>
                            <li class="breadcrumb-item text-sm text-white active">Feedback Manager</li>
                        </ol>
                        <h6 class="font-weight-bolder text-white mb-0">Feedback details</h6>
                    </nav>
                    <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                        <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                            <form action="SearchSetting" method="post">
                                <div class="input-group">
                                    <button  class="input-group-text text-body"><i type="submit" class="fas fa-search" aria-hidden="true"></i></button>
                                    <input name="txt" type="text" class="form-control" placeholder="Type here...">
                                </div>
                            </form>
                        </div>
                        <ul class="navbar-nav  justify-content-end">
                            <li class="nav-item d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-white font-weight-bold px-0">
                                    <i class="fa fa-user me-sm-1"></i>
                                    <span class="d-sm-inline d-none">Sign In</span>
                                </a>
                            </li>
                            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-white p-0" id="iconNavbarSidenav">
                                    <div class="sidenav-toggler-inner">
                                        <i class="sidenav-toggler-line bg-white"></i>
                                        <i class="sidenav-toggler-line bg-white"></i>
                                        <i class="sidenav-toggler-line bg-white"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item px-3 d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-white p-0">
                                    <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
                                </a>
                            </li>
                            <li class="nav-item dropdown pe-2 d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-white p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-bell cursor-pointer"></i>
                                    <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                                    </ul>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
        
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
                                      <img src="img/img_slider/${SliderD.image}" alt="">
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
                                                      <input class="dddd" name="status" type="text" readonly id="subject" value="${SliderD.status}">
                                                  </fieldset>
                                              </div>      

                                              <div class="sidebar-h">
                                                  <h5 clas="edi"> Choice Image:</h5>
                                              </div>
                                              <div class="col-md-6 col-sm-12">
                                                  <fieldset>
                                                      <input class="imageli" name="image" type="file" id="name" required="" value="img/${SliderD.image}">
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
                                               
                                               <p class="text-danger">${messTitle}</p>       
                                                  
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
    
    <script src="js/core/popper.min.js"></script>
        <script src="js/core/bootstrap.min.js"></script>
        <script src="js/plugins/perfect-scrollbar.min.js"></script>
        <script src="js/plugins/smooth-scrollbar.min.js"></script>
        <script src="js/plugins/chartjs.min.js"></script>
        <script async defer src="https://buttons.github.io/buttons.js"></script>
        <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="js/argon-dashboard.min.js?v=2.0.2"></script>
    
    </body>
</html>
