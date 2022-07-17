
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
        <jsp:include page="Template/managerDashboard.jsp"/>
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