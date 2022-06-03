<%-- 
    Document   : EnterCode
    Created on : Jun 2, 2022, 10:12:46 PM
    Author     : s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <<head>
        <title>Enter Verification Code </title>
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
                    </div>
                </div>

                <div class="s2">
                    <div class="" style=";margin-left: 350px;">
                        <div class=" ">
                            <div class="text-wrap p-4 p-lg-5 text-center d-flex  order-md-last">
                                <div class="text w-100">
                                    <h2>Verification Code</h2>
                                    <p>Please enter your verification code to change your password</p>

                                </div>
                            </div>
                            <div class="login-wrap p-4 p-lg-5">
                                <p class="text-danger">${mess}</p>
                                <form action="Verity" method="post">
                                    <div class="form-group mb-3">
                                        <label class="label" for="name">Verification Code</label>
                                        <input type="text" class="form-control" id ="email" name="authcode" placeholder="Verification Code" required>
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="form-control btn btn-primary submit px-3">Change my Password</button>
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
