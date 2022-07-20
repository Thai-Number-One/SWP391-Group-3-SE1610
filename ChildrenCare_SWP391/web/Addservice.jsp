<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Add Service</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />
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
         <jsp:include page="Template/managerDashboard.jsp"/>
        <main class="main-content position-relative border-radius-lg ">
            <!-- Navbar -->
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
                <div class="container-fluid py-1 px-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="dashboard">Pages</a></li>
                            <li class="breadcrumb-item text-sm text-white active" aria-current="page">Service Manager</li>
                        </ol>
                        <h6 class="font-weight-bolder text-white mb-0">Service Manager</h6>
                    </nav>

                </div>
            </nav>

            <!-- End Navbar -->
            <div class="container-fluid py-5">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title text-bolder">Add New Service</h4>
                            </div>
                            <div class="content">
                                <form action="addservice" method="post">
                                    <div class="modal-body">
                                        <div class="row">
                                            <div>
                                                <p class="text-muted">Service photo update</p>
                                                <div id="myfileupload">
                                                    <input  type="file" name="Image" id="uploadfile" accept="image/*"  name="ImageUpload" onchange="readURL(this);" />
                                                </div>
                                                <div id="thumbbox">
                                                    <img class="rounded" height="20%" width="30%"  alt="Thumb image" id="thumbimage" style="display: none" />
                                                    <a class="removeimg" href="javascript:"></a>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <label>Service_Name</label>
                                                    <input name="Service_Name" type="text" class="form-control" required>
                                                </div>
                                                <p class="text-danger" style="text-align: center;">${mess1}</p>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <label>Detail</label>
                                                    <input name="Detail" type="text" class="form-control" required>
                                                </div>
                                                <p class="text-danger" style="text-align: center;">${mess2}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Title</label>
                                                    <input name="Title" type="text" class="form-control" required>
                                                </div>
                                                <p class="text-danger" style="text-align: center;">${mess4}</p>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Type</label>
                                                    <input name="Type" type="text" class="form-control" required>
                                                </div>
                                                <p class="text-danger" style="text-align: center;">${mess3}</p>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <label>Price</label>
                                                    <input name="Price" type="text" class="form-control" required>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <label>Discount</label>
                                                    <input name="Discount" type="text" class="form-control" required>
                                                </div>
                                            </div>

                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <label>Rate</label>
                                                    <input name="Rate" type="text" class="form-control" required>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Status</label>
                                                <select name="status" style="margin-top: 26px;padding: 10px;margin-left: 10px">  
                                                    <option value="1">Active</option>
                                                    <option value="0">Deactive</option>
                                                </select>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="modal-footer">
                                        <a href="servicecontroller" class="btn btn-default" data-dismiss="modal">Back to manager</a>

                                        <input type="submit" class="btn btn-success" value="Add">
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
