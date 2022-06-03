<%-- 
    Document   : ResetHome1
    Created on : May 26, 2022, 8:36:11 PM
    Author     : s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <<head>
        <title>Reset Password</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">Reset Password</h2>
                    </div>
                </div>

                <div class="s2">
                    <div class="" style=";margin-left: 350px;">
                        <div class=" ">
                            <div class="text-wrap p-4 p-lg-5 text-center d-flex  order-md-last">
                                <div class="text w-100">
                                    <h2>Fogot Your Password?</h2>
                                    <p>Please enter your email to change your password</p>

                                </div>
                            </div>
                            <div class="login-wrap p-4 p-lg-5">
                                <p class="text-danger">${mess}</p>
                                <form action="TakeEmail" method="post">
                                    <div class="form-group mb-3">
                                        <label class="label" for="name">Email</label>
                                        <input type="text" class="form-control" id ="email" name="email" placeholder="Email" required>
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="form-control btn btn-primary submit px-3">Reset my Password</button>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
