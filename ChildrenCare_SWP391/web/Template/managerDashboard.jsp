<%-- 
    Document   : AdminDashboard
    Created on : Jun 19, 2022, 1:45:54 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .m-0 text-primary{
                
            }
        </style>
    </head>
    <body>
       <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
            <div class="sidenav-header">
                <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
                <a href="HomeP.jsp" class="navbar-brand">
                <h4 class="m-0 text-primary"><i class="fa fa-book-reader me-3"></i>ChildrenCare</h4>
            </a>
            </div>
            <hr class="horizontal dark mt-0">
            <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
                <ul class="navbar-nav">
                    
                    <li class="nav-item">
                        <a class="nav-link " href="servicecontroller">
                            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="ni ni-single-copy-04 text-success text-sm opacity-10"></i>
                            </div>
                            <span class="nav-link-text ms-1">Service Manager</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="feedbackslist">
                            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="ni ni-email-83 text-primary text-sm opacity-10"></i>
                            </div>
                            <span class="nav-link-text ms-1">Feedback Manager</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Post">
                            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="ni ni-bullet-list-67 text-warning text-sm opacity-10"></i>
                            </div>
                            <span class="nav-link-text ms-1">Post Manager</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="SliderControl">
                            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="ni ni-app text-info text-sm opacity-10"></i>
                            </div>
                            <span class="nav-link-text ms-1">Slider Manager</span>
                        </a>
                    </li>
                     
                </ul>
            </div>
        </aside>
    </body>
</html>
