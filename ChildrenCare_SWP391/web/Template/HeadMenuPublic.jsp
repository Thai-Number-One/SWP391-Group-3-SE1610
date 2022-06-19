<%-- 
    Document   : HeadMenuPublic
    Created on : Jun 19, 2022, 12:56:03 AM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0">
            <a href="HomeP.jsp" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class="fa fa-book-reader me-3"></i>ChildrenCare</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    <a href="HomeP.jsp" class="nav-item nav-link">Home</a>
                    <a href="HomeP.jsp" class="nav-item nav-link">About Us</a>
                    <a href="blogs" class="nav-item nav-link">Blog</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 rounded-bottom border-0 shadow-sm m-0">
                            <a href="#" class="dropdown-item">School Facilities</a>
                            <a href="#" class="dropdown-item">Popular Teachers</a>
                            <a href="dashboard" class="dropdown-item">Dashboard</a>
                            <a href="#" class="dropdown-item">Manager</a>
                            <a href="#" class="dropdown-item">404 Error</a>
                        </div>
                    </div>
                    <a href="contact.html" class="nav-item nav-link">Contact Us</a>
                </div>
                <c:if test="${sessionScope.loginsuccess == null}">
                    <a href="login.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">Login<i class="fa fa-arrow-right ms-3"></i></a>
                    </c:if>
                    <c:if test="${sessionScope.loginsuccess != null}">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-item nav-link" data-bs-toggle="dropdown">Hello ${sessionScope.loginsuccess.getFullName()}</a>
                        <div class="dropdown-menu rounded-0 rounded-bottom border-0 shadow-sm m-0">
                            <a href="logout" class="dropdown-item">Logout</a>
                        </div>
                    </div>
                </c:if>
            </div>
        </nav>
    </body>
</html>
