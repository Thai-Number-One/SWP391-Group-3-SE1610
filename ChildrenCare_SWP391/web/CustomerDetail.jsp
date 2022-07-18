<%@page import="Entity.User"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
        <!--  All snippets are MIT license http://bootdey.com/license -->
        <title>user about me section - Bootdey.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="#!">Customer Detail</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Services</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <section class="bg-light">
            <%User u = (User) request.getAttribute("customerdetail");%>
            <form action="customerdetail" method="post">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 mb-4 mb-sm-5">
                            <div class="card card-style1 border-0">
                                <div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
                                    <div class="row align-items-center">
                                        <div class="col-lg-6 mb-4 mb-lg-0">
                                            <img src="<%=u.getAvatar()%>" alt="...">
                                        </div>
                                        <div class="col-lg-6 px-xl-10">
                                            <div class="bg-secondary d-lg-inline-block py-1-9 px-1-9 px-sm-6 mb-1-9 rounded">
                                                <h3 class="h2 text-white mb-0">Customer informations</h3>
                                            </div>
                                            <ul class="list-unstyled mb-1-9">
                                                <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Full name:</span> <input type="text" value="<%=u.getFullName()%>" class="form-control" name="fullname" ></li>
                                                <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Phone:</span> <input type="text" value="<%=u.getPhone()%>" class="form-control" name="phone" ></li>
                                                <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Email:</span> <input type="text" value="<%=u.getEmail()%>" class="form-control" name="email" ></li>
                                                <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Address:</span> <input type="text" value="<%=u.getAddress()%>" class="form-control" name="address" ></li>
                                                <li class="display-28"><span class="display-26 text-secondary me-2 font-weight-600">Gender</span> <select class="form-control m-b-10" name="gender" >
                                                        <% if (u.getGender() == 1) { %>
                                                        <option selected value="1">Male</option>
                                                        <option value="0">Female</option>
                                                        <%} else {%>
                                                        <option  value="1">Male</option>
                                                        <option selected value="0">Female</option>
                                                        <%}%>
                                                    </select>
                                            </ul>
                                            <p class="text-success">${mess}</p>
                                            <input class="btn btn-primary" value="Save" type="submit">                                                                                               
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </section>

        <style type="text/css">
            body{margin-top:20px;}
            .card-style1 {
                box-shadow: 0px 0px 10px 0px rgb(89 75 128 / 9%);
            }
            .border-0 {
                border: 0!important;
            }
            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 1px solid rgba(0,0,0,.125);
                border-radius: 0.25rem;
            }

            section {
                padding: 120px 0;
                overflow: hidden;
                background: #fff;
            }
            .mb-2-3, .my-2-3 {
                margin-bottom: 2.3rem;
            }

            .section-title {
                font-weight: 600;
                letter-spacing: 2px;
                text-transform: uppercase;
                margin-bottom: 10px;
                position: relative;
                display: inline-block;
            }
            .text-primary {
                color: #ceaa4d !important;
            }
            .text-secondary {
                color: #15395A !important;
            }
            .font-weight-600 {
                font-weight: 600;
            }
            .display-26 {
                font-size: 1.3rem;
            }

            @media screen and (min-width: 992px){
                .p-lg-7 {
                    padding: 4rem;
                }
            }
            @media screen and (min-width: 768px){
                .p-md-6 {
                    padding: 3.5rem;
                }
            }
            @media screen and (min-width: 576px){
                .p-sm-2-3 {
                    padding: 2.3rem;
                }
            }
            .p-1-9 {
                padding: 1.9rem;
            }

            .bg-secondary {
                background: #15395A !important;
            }
            @media screen and (min-width: 576px){
                .pe-sm-6, .px-sm-6 {
                    padding-right: 3.5rem;
                }
            }
            @media screen and (min-width: 576px){
                .ps-sm-6, .px-sm-6 {
                    padding-left: 3.5rem;
                }
            }
            .pe-1-9, .px-1-9 {
                padding-right: 1.9rem;
            }
            .ps-1-9, .px-1-9 {
                padding-left: 1.9rem;
            }
            .pb-1-9, .py-1-9 {
                padding-bottom: 1.9rem;
            }
            .pt-1-9, .py-1-9 {
                padding-top: 1.9rem;
            }
            .mb-1-9, .my-1-9 {
                margin-bottom: 1.9rem;
            }
            @media (min-width: 992px){
                .d-lg-inline-block {
                    display: inline-block!important;
                }
            }
            .rounded {
                border-radius: 0.25rem!important;
            }
        </style>

        <script type="text/javascript">

        </script>
        <footer class="py-5 bg-dark">
            <div class="container px-4 px-lg-5"><p class="m-0 text-center text-white">Copyright &copy; Children Care 2022</p></div>
        </footer>
    </body>
</html>