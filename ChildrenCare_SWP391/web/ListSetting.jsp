<%-- 
    Document   : newjsp
    Created on : May 31, 2022, 11:14:00 AM
    Author     : HP
--%>

<%@page import="Entity.Type"%>
<%@page import="DAO.SettingDAO"%>
<%@page import="java.util.List"%>
<%@page import="Entity.Setting"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <% List<Setting> list = (List<Setting>) request.getAttribute("listSetting");%>
    </head>
    <jsp:useBean id="a" class="DAO.SettingDAO" scope="request"></jsp:useBean>
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
                                        <h6>SETTING LIST</h6>
                                    </div>
                                    <div class="col-md-2">
                                        <li style="list-style: none" class="nav-item dropdown">
                                            <a class="dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Type</a>
                                            <ul class="dropdown-menu">
                                                <% for (Type t : listT) {%>
                                                <li><a class="dropdown-item" href="SearchSetting?type=<%= t.getType_ID()%>"><%= t.getType_Name()%></a></li>
                                                    <%}%>
                                            </ul>
                                    </div>
                                    <div class="col-md-2">
                                        <li style="list-style: none" class="nav-item dropdown">
                                            <a class="dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Status</a>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="SearchSetting?active=1">Active</a></li>
                                                <li><a class="dropdown-item" href="SearchSetting?active=0">Deactive</a></li>
                                            </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#AddnewSetting">add new setting</button>
                                    </div>
                                    <div class="modal fade" id="AddnewSetting" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">New setting</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <form action="addsetting" method="post">
                                                    <div class="modal-body">
                                                        <div>
                                                            <div class="col-lg-5">
                                                                <label for="type" class="col-form-label">Type:</label>
                                                                <select class="form-control m-b-10" name="type">
                                                                    <% for (Type t : listT) {%>
                                                                    <option value="<%= t.getType_ID()%>"><%= t.getType_Name()%></option>
                                                                    <%}%>
                                                                </select>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="value" class="col-form-label">Value:</label>
                                                                <input type="text" name="value" class="form-control" required="" >
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="description" class="col-form-label">Description:</label>
                                                                <textarea class="form-control" name="description" required="" autofocus=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-primary">add</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body px-0 pt-0 pb-5">
                                    <div class="table-responsive p-0">
                                        <table class="table align-items-center justify-content-center mb-0">
                                            <thead>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-4">Setting ID</th>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">type</th>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">value</th>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder text-center opacity-50 ps-3">Status</th>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-3">Details</th>
                                                </tr>
                                            </thead>
                                            <% for (int i = 0; i < list.size(); i++) {%>
                                            <tbody>
                                                <tr>

                                                    <td>
                                                        <p class="text-sm font-weight-bold mb-0 ps-4"><%= list.get(i).getSetting_ID()%></p>
                                                    </td>
                                                    <td>
                                                        <p class="text-sm font-weight-bold mb-0"><%= dao.GetTypeName(list.get(i).getType_ID())%></p>
                                                    </td>
                                                    <td>
                                                        <span class="text-uppercase text-xs font-weight-bold"><%= list.get(i).getValue()%></span>
                                                    </td>
                                                    <% if (list.get(i).isStatus()) {%>
                                                    <td class="align-middle text-center text-sm ps-0">
                                                        <span class="badge badge-sm bg-gradient-success" >Active</span>
                                                    </td>
                                                    <%} else {%>
                                                    <td class="align-middle text-center text-sm ps-0">
                                                        <span class="badge badge-sm bg-gradient-danger">Deactive</span>
                                                    </td>
                                                    <%}%>
                                                    <td class="align-middle">
                                                        <a type="button" class="btn btn-primary mb-0" href="settingdetails?id=<%= list.get(i).getSetting_ID()%>">
                                                            view
                                                        </a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <%}%>
                                        </table>
                                    </div>
                                    <div style="margin: 20px auto; width: 500px" aria-label="...">
                                        <ul class="pagination">
                                            <c:forEach begin="1" end="${a.numberPage}" var="i">
                                                <li class="page-item ${index == i ? "active":""}"><a class="page-link" href="settinglist?index=${i}">${i}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <div class="fixed-plugin">
            <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
                <i class="fa fa-cog py-2"> </i>
            </a>
            <div class="card shadow-lg">
                <div class="card-header pb-0 pt-3 ">
                    <div class="float-end">
                        <h5 class="mt-3 mb-0">Argon Configurator</h5>
                        <p>See our dashboard options.</p>
                    </div>
                    <div class="float-start mt-4">
                        <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                            <i class="fa fa-close"></i>
                        </button>
                    </div>
                    <!-- End Toggle Button -->
                </div>
                <hr class="horizontal dark my-1">
                <div class="card-body pt-sm-3 pt-0 overflow-auto">
                    <!-- Sidebar Backgrounds -->
                    <div>
                        <h6 class="mb-0">Sidebar Colors</h6>
                    </div>
                    <a href="javascript:void(0)" class="switch-trigger background-color">
                        <div class="badge-colors my-2 text-end">
                            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
                        </div>
                    </a>
                    <!-- Sidenav Type -->
                    <div class="mt-3">
                        <h6 class="mb-0">Sidenav Type</h6>
                        <p class="text-sm">Choose between 2 different sidenav types.</p>
                    </div>
                    <div class="d-flex">
                        <button class="btn bg-gradient-primary w-100 px-3 mb-2 active ms-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
                        <button class="btn bg-gradient-primary w-100 px-3 mb-2" data-class="bg-default" onclick="sidebarType(this)">Dark</button>
                    </div>
                    <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
                    <!-- Navbar Fixed -->
                    <div class="d-flex my-3">
                        <h6 class="mb-0">Navbar Fixed</h6>
                        <div class="form-check form-switch ps-0 ms-auto my-auto">
                            <input class="form-check-input mt-1 float-end me-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
                        </div>
                    </div>
                    <hr class="horizontal dark my-sm-4">
                    <div class="mt-2 mb-5 d-flex">
                        <h6 class="mb-0">Light / Dark</h6>
                        <div class="form-check form-switch ps-0 ms-auto my-auto">
                            <input class="form-check-input mt-1 float-end me-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--   Core JS Files   -->
        <script src="js/core/popper.min.js"></script>
        <script src="js/core/bootstrap.min.js"></script>
        <script src="js/plugins/perfect-scrollbar.min.js"></script>
        <script src="js/plugins/smooth-scrollbar.min.js"></script>
        <script src="js/plugins/chartjs.min.js"></script>
        <script>
                                var ctx1 = document.getElementById("chart-line").getContext("2d");

                                var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);

                                gradientStroke1.addColorStop(1, 'rgba(94, 114, 228, 0.2)');
                                gradientStroke1.addColorStop(0.2, 'rgba(94, 114, 228, 0.0)');
                                gradientStroke1.addColorStop(0, 'rgba(94, 114, 228, 0)');
                                new Chart(ctx1, {
                                    type: "line",
                                    data: {
                                        labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                                        datasets: [{
                                                label: "Mobile apps",
                                                tension: 0.4,
                                                borderWidth: 0,
                                                pointRadius: 0,
                                                borderColor: "#5e72e4",
                                                backgroundColor: gradientStroke1,
                                                borderWidth: 3,
                                                        fill: true,
                                                data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
                                                maxBarThickness: 6

                                            }],
                                    },
                                    options: {
                                        responsive: true,
                                        maintainAspectRatio: false,
                                        plugins: {
                                            legend: {
                                                display: false,
                                            }
                                        },
                                        interaction: {
                                            intersect: false,
                                            mode: 'index',
                                        },
                                        scales: {
                                            y: {
                                                grid: {
                                                    drawBorder: false,
                                                    display: true,
                                                    drawOnChartArea: true,
                                                    drawTicks: false,
                                                    borderDash: [5, 5]
                                                },
                                                ticks: {
                                                    display: true,
                                                    padding: 10,
                                                    color: '#fbfbfb',
                                                    font: {
                                                        size: 11,
                                                        family: "Open Sans",
                                                        style: 'normal',
                                                        lineHeight: 2
                                                    },
                                                }
                                            },
                                            x: {
                                                grid: {
                                                    drawBorder: false,
                                                    display: false,
                                                    drawOnChartArea: false,
                                                    drawTicks: false,
                                                    borderDash: [5, 5]
                                                },
                                                ticks: {
                                                    display: true,
                                                    color: '#ccc',
                                                    padding: 20,
                                                    font: {
                                                        size: 11,
                                                        family: "Open Sans",
                                                        style: 'normal',
                                                        lineHeight: 2
                                                    },
                                                }
                                            },
                                        },
                                    },
                                });
        </script>
        <script>
            var win = navigator.platform.indexOf('Win') > -1;
            if (win && document.querySelector('#sidenav-scrollbar')) {
                var options = {
                    damping: '0.5'
                }
                Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
            }
        </script>
        <!-- Github buttons -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>
        <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="js/argon-dashboard.min.js?v=2.0.2"></script>
    </body>

</html>
