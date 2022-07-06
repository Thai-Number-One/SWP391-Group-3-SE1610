<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="X-UA-compatible" content="IE-edge">
        <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
        <link rel="icon" type="image/png" href="img/favicon.png">
        <title>
            Edit user
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
                            <div class="col-md-4">
                                <h2>Edit User</h2>
                            </div>
                            <div class="content">
                                <form action="Edit" method="get">
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group" >
                                                    <label>ID</label>
                                                    <input value="${detail.id}" name="id" type="text"  class="form-control" readonly required>
                                                </div> 
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Status</label>
                                                    <select  name="status" style="margin-top: 26px;padding: 10px;margin-left: 10px">  
                                                        <option value="1" ${detail.status == 1 ? "selected": ""}>Active</option>
                                                        <option value="0" ${detail.status == 0 ? "selected": ""}>Deactive</option>
                                                    </select>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label>Role</label>
                                            <select name="role">
                                                <option  value="1" ${detail.role == 1 ? "selected": ""}>Admin</option>
                                                <option value="3"  ${detail.role == 3 ? "selected": ""}>Manager</option>
                                                <option value="2"  ${detail.role == 2 ? "selected": ""}>Staff</option>
                                                <option value="4"  ${detail.role == 4 ? "selected": ""}>Customer</option>

                                            </select>
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <a href="manager" class="btn btn-default" data-dismiss="modal">Back to manager</a>
                                        <input type="submit" class="btn btn-success" value="Edit">
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
