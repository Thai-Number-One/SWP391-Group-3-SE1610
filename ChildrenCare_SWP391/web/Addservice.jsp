<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Add Service</title>

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
                                                        <div id="boxchoice">
                                                            <a href="javascript:" class="Choicefile"><i class="fas fa-cloud-upload-alt"></i> Choose a photo</a>
                                                            <p style="clear:both"></p>
                                                        </div> 
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="form-group">
                                                            <label>Service_Name</label>
                                                            <input name="Service_Name" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="form-group">
                                                            <label>Detail</label>
                                                            <input name="Detail" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Title</label>
                                                            <input name="Title" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Type</label>
                                                            <input name="Type" type="text" class="form-control" required>
                                                        </div>
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
