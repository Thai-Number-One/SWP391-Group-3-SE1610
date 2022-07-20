
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
            Feedbacks Manager
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
                            <li class="breadcrumb-item text-sm text-white active" aria-current="page">Feedbacks Manager</li>
                        </ol>
                        <h6 class="font-weight-bolder text-white mb-0">Feedbacks Manager</h6>
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
                                        <h6>Feedbacks Manager</h6>
                                    </div>

                                        

                                </div>
                            </div>

                            <div class="card-body px-0 pt-0 pb-2" >
                                <div class="table-responsive p-0" >
                                    <table id="example" class="table table-striped" style="width:100%; margin-bottom: 50px ">
                                        <thead>
                                            <tr >

                                                <th style="text-align: center;">Feedbacks ID</th>
                                                <th style="text-align: center;">Image</th>
                                                <th style="text-align: center;">Full Name</th>
                                                <th style="text-align: center;">Service Name</th>
                                                <th style="text-align: center;">Date</th>
                                                <th style="text-align: center;">Star</th>                
                                                <th style="text-align: center;">Status</th>
                                                <th style="text-align: center;">Detail</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.allfeedbacks}" var="o">
                                                <tr>

                                                    <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.feedbacks.feedbackid}</span>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold"><img class="rounded-circle shadow-1-strong me-3"
                                                                                                                   src="${o.user.avatar}" alt="avatar" width="60"
                                                                                                                   height="60" /></span>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.user.fullname}</span>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.service.servicename}</span>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">${o.feedbacks.date}</span>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <c:if test="${o.feedbacks.star == 1}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${o.feedbacks.star == 2}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${o.feedbacks.star == 3}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${o.feedbacks.star == 4}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${o.feedbacks.star == 5}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                 
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <span class="text-secondary text-xs font-weight-bold">
                                                            <form action="feedbackslist" method="post">
                                                                <c:if test="${o.feedbacks.status == 1}">
                                                                    <input type="text" value="${o.feedbacks.feedbackid}" name="id" style="display: none;">
                                                                    <input type="text" value="0" name="status" style="display: none;">
                                                                    <button type="submit"><a class="fas fa-eye" style="font-size: 30px; color: black;"></a></button>
                                                                    </c:if>
                                                                    <c:if test="${o.feedbacks.status == 0}">
                                                                    <input type="text" value="${o.feedbacks.feedbackid}" name="id" style="display: none;">
                                                                    <input type="text" value="1" name="status" style="display: none;">
                                                                    <button type="submit"><a class="fas fa-eye-slash" style="font-size: 30px; color: black;"></a></button>
                                                                    </c:if>
                                                            </form>
                                                        </span>
                                                    </td>



                                                    <td class="align-middle text-center">
                                                        <a href="feedbackdetails?idfeedback=${o.feedbacks.feedbackid}" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
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