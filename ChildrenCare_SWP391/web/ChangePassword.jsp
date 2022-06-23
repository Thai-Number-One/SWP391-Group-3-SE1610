<%-- 
    Document   : ChangePassword
    Created on : Jun 1, 2022, 1:25:41 PM
    Author     : s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
  	<title>Change Password</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="ResetPass/css/style.css">

	</head>
	<body>
            <section class="ftco-section">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-6 text-center mb-5">
                            <h2 class="heading-section">Change Password</h2>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-md-12 col-lg-10">
                            <div class="wrap d-md-flex">
                                <div class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
                                    <div class="text w-100">
                                        <h2>Welcome to ChildrenCare</h2>
                                        <p>Don't have an account?</p>
                                        <a href="#" class="btn btn-white btn-outline-white">Sign Up</a>
                                    </div>
                                </div>
                                <div class="login-wrap p-4 p-lg-5">
                                    <div class="d-flex">
                                        <div class="w-100">
                                            <h3 class="mb-4">Change Password</h3>
                                        </div>

                                    </div>
                                    <form action="ChangePassword" method="post">
                                        <div class="form-group mb-3">
                                            <label class="label" for="name">New Password</label>
                                            <input type="text" class="form-control" name="newpass" placeholder="Username" required>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label class="label" for="password">Retype New Password</label>
                                            <input type="password" class="form-control" name="retypepass" placeholder="Password" required>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="form-control btn btn-primary submit px-3">Change Password</button>
                                        </div>
                                        <p class="text-danger">${mess}</p>
                                        <p class="text-danger">${mess1}</p>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

	<script src="ResetPass/js/jquery.min.js"></script>
  <script src="ResetPass/js/popper.js"></script>
  <script src="ResetPass/js/bootstrap.min.js"></script>
  <script src="ResetPass/js/main.js"></script>

	</body>
</html>
