
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="../assets/img/favicon.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <title>
            Dashboard
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .checked {
                color: orange;
            }
        </style>
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
                            <li class="breadcrumb-item text-sm text-white active" aria-current="page">Dashboard</li>
                        </ol>
                        <h6 class="font-weight-bolder text-white mb-0">Dashboard</h6>
                    </nav>
                    <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                        <div class="ms-md-auto pe-md-3 d-flex align-items-center">

                        </div>
                        <ul class="navbar-nav  justify-content-end">
                            
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
                                </a>
                                <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                                    <li class="mb-2">
                                        <a class="dropdown-item border-radius-md" href="javascript:;">
                                            <div class="d-flex py-1">
                                                <div class="my-auto">
                                                    <img src="img/team-2.jpg" class="avatar avatar-sm  me-3 ">
                                                </div>
                                                <div class="d-flex flex-column justify-content-center">
                                                    <h6 class="text-sm font-weight-normal mb-1">
                                                        <span class="font-weight-bold">New message</span> from Laur
                                                    </h6>
                                                    <p class="text-xs text-secondary mb-0">
                                                        <i class="fa fa-clock me-1"></i>
                                                        13 minutes ago
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="mb-2">
                                        <a class="dropdown-item border-radius-md" href="javascript:;">
                                            <div class="d-flex py-1">
                                                <div class="my-auto">
                                                    <img src="img/small-logos/logo-spotify.svg" class="avatar avatar-sm bg-gradient-dark  me-3 ">
                                                </div>
                                                <div class="d-flex flex-column justify-content-center">
                                                    <h6 class="text-sm font-weight-normal mb-1">
                                                        <span class="font-weight-bold">New album</span> by Travis Scott
                                                    </h6>
                                                    <p class="text-xs text-secondary mb-0">
                                                        <i class="fa fa-clock me-1"></i>
                                                        1 day
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item border-radius-md" href="javascript:;">
                                            <div class="d-flex py-1">
                                                <div class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
                                                    <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    <title>credit-card</title>
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                                    <g transform="translate(1716.000000, 291.000000)">
                                                    <g transform="translate(453.000000, 454.000000)">
                                                    <path class="color-background" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z" opacity="0.593633743"></path>
                                                    <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                                                    </g>
                                                    </g>
                                                    </g>
                                                    </g>
                                                    </svg>
                                                </div>
                                                <div class="d-flex flex-column justify-content-center">
                                                    <h6 class="text-sm font-weight-normal mb-1">
                                                        Payment successfully completed
                                                    </h6>
                                                    <p class="text-xs text-secondary mb-0">
                                                        <i class="fa fa-clock me-1"></i>
                                                        2 days
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="container-fluid py-4">
                <div class="row">
                    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                        <div class="card">
                            <div class="card-body p-3">
                                <div class="row">
                                    <div class="col-8">
                                        <div class="numbers">
                                            <p class="text-sm mb-0 text-uppercase font-weight-bold">Revenue</p>
                                            <h5 class="font-weight-bolder">
                                                $${totalREVENUE}
                                            </h5>

                                        </div>
                                    </div>
                                    <div class="col-4 text-end">
                                        <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                                            <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                        <div class="card">
                            <div class="card-body p-3">
                                <div class="row">

                                    <div class="numbers">
                                        <p class="text-sm mb-0 text-uppercase font-weight-bold">New Reservations</p>
                                        <h5 class="font-weight-bolder">
                                            Total: + ${totalStatus}
                                        </h5>
                                        <p class="text-success font-weight-bolder">Success: ${successStatus}</p>
                                        <p class="text-danger font-weight-bolder">Canceled: ${canceledStatus}</p>
                                        <p class=" font-weight-bolder">Submitted: ${submittedStatus}</p>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                        <div class="card">
                            <div class="card-body p-3">
                                <div class="row">

                                    <div class="numbers">
                                        <p class="text-sm mb-0 text-uppercase font-weight-bold">Customers</p>
                                        <h5 class="font-weight-bolder">
                                            Total: +${totaluser_rev}
                                        </h5>
                                        <p class=" font-weight-bolder">New Registered: +${totaluser}</p>
                                        

                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                        <div class="card">
                            <div class="card-body p-3">
                                <div class="row">

                                    <div class="numbers">
                                        <p class="text-sm mb-0 text-uppercase font-weight-bold">Feedbacks </p>
                                        <h5 class="font-weight-bolder">
                                            Total: ${totalfeedback} feedbacks
                                        </h5>

                                        <p class=" font-weight-bolder">Average star: ${avgStar} <span class="fa fa-star checked"></span> </p>
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