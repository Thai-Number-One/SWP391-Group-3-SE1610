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
                                        <h4 class="title text-bolder">Add New User</h4>
                                    </div>
                                    <div class="content">
                                        <form action="AddControl" method="post">
                                            <div class="modal-body">
                                                <div class="row">
                                                    
                                                    <div class="col-md-9">
                                                        <div class="form-group">
                                                            <label>Full Name</label>
                                                            <input name="fullName" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Phone</label>
                                                            <input name="phone" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Email address</label>
                                                            <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>User</label>
                                                            <input name="userName" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Password</label>
                                                            <input name="password" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Date</label>
                                                            <input name="date" type="date" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Gender</label>
                                                            <select name="gender" style="margin-top: 26px;padding: 10px;margin-left: 10px">  
                                                                <option value="1">Male</option>
                                                                <option value="0">Female</option>
                                                            </select>

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


                                                <div class="form-group">
                                                    <label>Address</label>
                                                    <input name="address" type="text" class="form-control" required>
                                                </div>

                                                <div class="form-group">
                                                    <label>Avatar</label>
                                                    <input name="avatar" type="file" class="form-control" required>
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
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <input type="submit" class="btn btn-success" value="Add">
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
