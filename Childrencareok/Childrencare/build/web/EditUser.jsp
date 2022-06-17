<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Light Bootstrap Dashboard by Creative Tim</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />


        <!-- Bootstrap core CSS     -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Animation library for notifications   -->
        <link href="assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Light Bootstrap Table core CSS    -->
        <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <link href="assets/css/demo.css" rel="stylesheet" />


        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    </head>
    <body>
        <div class="wrapper">
            <div class="main-panel">
                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="card">
                                    <div class="header">
                                        <h4 class="title text-bolder">Edit New User</h4>
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
                                                            <select  name="status"  style="margin-top: 26px;padding: 10px;margin-left: 10px">  
                                                                <option value="1" ${detail.status == 1 ? "selected": ""}>Active</option>
                                                                <option value="0"${detail.status == 0 ? "selected": ""}>Deactive</option>
                                                            </select>

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label>Role</label>
                                                    <select name="role">
                                                        <option value="1">Admin</option>
                                                         <option value="2">Manager</option>
                                                         <option value="4" >Staff</option>
                                                         <option value="5">Customer</option>
                                                         
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
            </div>
        </div>
    </div>


</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

</html>
