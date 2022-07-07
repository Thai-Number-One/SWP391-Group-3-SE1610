<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="X-UA-compatible" content="IE-edge">
        <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
        <link rel="icon" type="image/png" href="img/favicon.png">
        <title>
            User Details
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
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
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
                            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="dashboard">Pages</a></li>
                            <li class="breadcrumb-item text-sm text-white active" aria-current="page">User Manager</li>
                        </ol>
                        <h6 class="font-weight-bolder text-white mb-0">User Manager</h6>
                    </nav>

                </div>
            </nav>

            <!-- End Navbar -->
            <div class="container-fluid py-5">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title text-bolder">User Detail</h4>
                            </div>
                            <div class="content">
                                <form action="Edit" method="post">
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-8">
                                                <table class="table">
                                                    <th>ID:</th><td>${detail.id}</td><tr>
                                                        <th>FullName:</th><td>${detail.fullName}</td><tr> 
                                                        <th>Phone: </th><td>${detail.phone}</td><tr>  
                                                        <th>Gender: </th>
                                                            <c:if test="${detail.gender == 1}">
                                                            <td>Male</td>
                                                        </c:if>
                                                        <c:if test="${detail.gender == 0}">
                                                            <td>Female</td>
                                                        </c:if>
                                                    <tr> 
                                                        <th>Email: </th><td>${detail.email}</td> <tr> 
                                                        <th>UserName: </th><td>${detail.userName}</td><tr>  
                                                        <th>Role: </th>
                                                            <c:if test="${detail.role == 1}">
                                                            <td>Admin</td> 
                                                        </c:if>
                                                        <c:if test="${detail.role == 2}">
                                                            <td>Staff</td> 
                                                        </c:if>
                                                        <c:if test="${detail.role == 3}">
                                                            <td>Manager</td> 
                                                        </c:if>
                                                        <c:if test="${detail.role == 4}">
                                                            <td>Customer</td> 
                                                        </c:if>
                                                    <tr> 
                                                        <th>Status: </th><td>${detail.status}</td> 
                                                </table>
                                            </div>
                                            <div class="col-md-4">
                                                <img src="${detail.avatar}" width="200" height="200" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="manager" class="btn btn-default" data-dismiss="modal">Back to manager</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>



        <!-- Edit Modal HTML -->



        <!--   Core JS Files   -->
        <script src="js/core/popper.min.js"></script>
        <script src="js/core/bootstrap.min.js"></script>
        <script src="js/plugins/perfect-scrollbar.min.js"></script>
        <script src="js/plugins/smooth-scrollbar.min.js"></script>
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

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
        <script src="./js/app.js"></script>
    </body>


</html>
