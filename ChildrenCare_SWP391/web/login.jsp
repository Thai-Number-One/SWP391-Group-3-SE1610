<%-- 
    Document   : login
    Created on : Mar 4, 2022, 7:03:59 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login</title>
        <jsp:include page="Template/DesignPublic.jsp"/>
    </head>
    <body>
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header"><h2 class="text-center font-weight-light my-4">Login</h2></div>
                                <div class="card-body">
                                    <form action="login" method="post">
                                        <div class="form-floating mb-3">
                                            <input class="form-control" name="username" type="user" placeholder="username" required=""/>
                                            <label for="User name">User name</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input class="form-control" name="password" type="password" placeholder="Password" required=""/>
                                            <label for="inputPassword">Password</label>
                                        </div>
                                        <p class="text-danger">${mess}</p>
                                        <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <a class="small" href="TakeEmailj.jsp">Forgot Password?</a>
                                            <input class="btn btn-primary" value="Login" type="submit">
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer text-center py-3">
                                    <div class="small"><a href="register.html">Need an account? Sign up!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="Template/FooterPublic.jsp"/>
    </body>
</html>

