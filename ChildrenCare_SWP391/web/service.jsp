
<!DOCTYPE html>
<html lang="en">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="X-UA-compatible" content="IE-edge">
        <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
        <link rel="icon" type="image/png" href="img/favicon.png">
        <title>
            Service Manager
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
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="container-fluid py-5">
                <div class="row">
                    <div class="col-12">
                        <div class="card mb-4">
                            <div  class="card-header pb-0">
                                <div  class="row">
                                    <div class="col-md-4">
                                        <h6>Service Manager</h6>
                                    </div>

                                    <div class="col-md-4">
                                        <a href="Addservice.jsp" class="text-success text-secondary font-weight-bold text-sm" >Add new</a>
                                    </div>
                                </div>
                            </div>

                            <div class="card-body px-0 pt-0 pb-2" >
                                <div class="table-responsive p-0" >
                                    <table id="example" class="table table-striped" style="width:100%; margin-bottom: 50px ">
                                        <thead>
                                            <tr >

                                                <th style="text-align: center;">Service_ID</th>
                                                <th style="text-align: center;">Service_Name</th>
                                                <th style="text-align: center;">Image</th>
                                                <th style="text-align: center;">Type</th>
                                                <th style="text-align: center;">Title</th>
                                                <th style="text-align: center;">Price</th>
                                                <th style="text-align: center;">Discount</th>
                                                <th style="text-align: center;">Star</th>
                                                <th style="text-align: center;">Status</th>
                                                <th style="text-align: center;">Edit</th>
                                                <th style="text-align: center;">Delete</th>
                                                <th style="text-align: center;">Detail</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${list}" var="o">
                                                <tr>

                                                     <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.serviceid}</span>
                                                    </td>
                                                     <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.servicename}</span>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold"><img width="80" height="60" src="${o.image}"></span>
                                                    </td>
                                                     <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.type}</span>
                                                    </td>
                                                     <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.title}</span>
                                                    </td>
                                                     <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.price}</span>
                                                    </td>
                                                     <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.discount}</span>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.rate}</span>
                                                    </td>
                                                    <td class="align-middle text-center text-sm">

                                                        <c:if test = "${o.status == 1}">
                                                            <span class="badge badge-sm bg-gradient-success">Active</span></c:if> 


                                                        <c:if test = "${o.status == 0}"> <span class="badge badge-sm bg-gradient-danger">Deactive</span></c:if> 

                                                        </td>

                                                        <td class="align-middle">
                                                            <a href="updateservice?pid=${o.serviceid}" class="text-success text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user"><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>
                                                            Edit
                                                        </a>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <a href="deleteservice?pid=${o.serviceid}" class="text-danger text-secondary font-weight-bold text-xs" data-toggle="tooltip" onclick="return confirm('Are you sure you want to delete this item?');"><i class="far fa-trash-alt me-2"></i>Delete</a>

                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <a href="service_detail?id=${o.serviceid}" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                                                            Detail
                                                        </a>
                                                    </td>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <div id="addEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="add" method="post">
                    <div class="modal-header">						
                        <h4 class="modal-title">Add Service</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">					
                        <div class="form-group">
                            <label>Service_Name</label>
                            <input name="name" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Image</label>
                            <input name="image" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input name="price" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Title</label>
                            <textarea name="title" class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Type</label>
                            <select name="Type" style="margin-top: 26px;padding: 10px;margin-left: 10px">  
                                <option value="1">suc khoe</option>
                                <option value="2">tam ly</option>
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
    <!-- Edit Modal HTML -->
    <div id="editEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form>
                    <div class="modal-header">						
                        <h4 class="modal-title">Edit Service</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">					
                        <div class="form-group">
                            <label>Service_Name</label>
                            <input type="Service_Name" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Detail</label>
                            <input type="Detail" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Title</label>
                            <textarea class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Type</label>
                            <select name="Type" style="margin-top: 26px;padding: 10px;margin-left: 10px">  
                                <option value="1">suc khoe</option>
                                <option value="2">tam ly</option>
                            </select>
                        </div>					
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-info" value="Save">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Delete Modal HTML -->
    <div id="deleteEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form>
                    <div class="modal-header">						
                        <h4 class="modal-title">Delete Service</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">					
                        <p>Are you sure you want to delete these Records?</p>
                        <p class="text-warning"><small>This action cannot be undone.</small></p>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-danger" value="Delete">
                    </div>
                </form>
            </div>
        </div>
    </div>

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