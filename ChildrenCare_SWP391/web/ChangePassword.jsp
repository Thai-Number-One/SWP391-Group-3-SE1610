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
        <jsp:include page="Template/DesignPublic.jsp"/>
    </head>
    <body>
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-10">
                        <div class="wrap d-md-flex">
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
                                        <label class="label" for="password">ReNew Password</label>
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
        <jsp:include page="Template/FooterPublic.jsp"/>
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
