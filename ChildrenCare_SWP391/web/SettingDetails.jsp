<%-- 
    Document   : newjsp
    Created on : May 31, 2022, 11:14:00 AM
    Author     : HP
--%>

<%@page import="Entity.Type"%>
<%@page import="DAO.SettingDAO"%>
<%@page import="java.util.List"%>
<%@page import="Entity.Setting"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
        <link rel="icon" type="image/png" href="img/favicon.png">
        <title>
            Setting list
        </title>
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
        <title>Setting</title>
        <% SettingDAO dao = new SettingDAO(); %>
        <% List<Type> listT = dao.GetAllType();%>
        <% Setting s = (Setting) request.getAttribute("setting");%>
        <% String mess = (String) request.getAttribute("mess");%>
        <% String status = (String) request.getAttribute("status");%>
    </head>
    <body class="g-sidenav-show   bg-gray-100">
        <div class="min-height-300 bg-primary position-absolute w-100"></div>
        <jsp:include page="Template/AdminDashboard.jsp"/>
        <main class="main-content position-relative border-radius-lg ">
            <!-- Navbar -->
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
                <div class="container-fluid py-1 px-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="javascript:;">Pages</a></li>
                            <li class="breadcrumb-item text-sm text-white active">Setting</li>
                        </ol>
                        <h6 class="font-weight-bolder text-white mb-0">Setting</h6>
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
            <div class="container-fluid py-4">
                <div class="row">
                    <div class="col-12">
                        <div class="card mb-4">
                            <div class="card-header pb-0">
                                <div class="row">
                                    <div class="col-md-4">
                                        <h6>SETTING DETAILS</h6>
                                    </div>
                                </div>
                                <div class="card-body px-0 pt-0 pb-5">
                                    <form action="settingdetails" method="post">
                                        <div class="table-responsive p-0">
                                            <table class="table align-items-center justify-content-center mb-0">
                                                <thead>
                                                    <tr>
                                                        <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Setting ID</th>
                                                        <td>
                                                            <input type="text" value="<%= s.getSetting_ID()%>" class="form-control" name="id" readonly required>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">type</th>
                                                        <td>
                                                            <select class="form-control m-b-10" name="type" >
                                                                <%for (int i = 0; i < listT.size(); i++) { %>
                                                                <% if (mess.equals("" + listT.get(i).getType_ID())) {%>
                                                                <option selected="" value="<%= listT.get(i).getType_ID()%>"><%= listT.get(i).getType_Name()%></option>
                                                                <%} else {%>
                                                                <option value="<%= listT.get(i).getType_ID()%>"><%= listT.get(i).getType_Name()%></option>
                                                                <%}%>
                                                                <%}%>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">value</th>
                                                        <td>
                                                            <input type="text" value="<%= s.getValue()%>" class="form-control" name="value">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Status</th>
                                                        <td class="align-middle text-sm mb-0">
                                                            <select class="form-control m-b-10" name="status" >
                                                                <% if (status.equals("" + 1)) { %>
                                                                <option selected value="1">Active</option>
                                                                <option value="0">Deactive</option>
                                                                <%} else {%>
                                                                <option  value="1">Active</option>
                                                                <option selected="" value="0">Deactive</option>
                                                                <%}%>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Href</th>
                                                        <td>
                                                            <input type="text" value="<%= s.getHref()%>" class="form-control" name="href">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Details</th>
                                                        <td>
                                                            <textarea class="form-control" style="width: 600px;height: 200px;" name="description"  type="text"><%= s.getDescription()%></textarea>
                                                        </td>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" onclick='window.history.go(-1);'>Return</button>
                                            <input class="btn btn-primary" type="submit" value="Edit"/>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--   Core JS Files   -->
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
