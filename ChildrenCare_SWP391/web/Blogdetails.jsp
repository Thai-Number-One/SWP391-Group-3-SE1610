<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html charset="utf-8">
    <head>
        <meta>
        <title>Blog Detail</title>
        <jsp:include page="Template/DesignPublic.jsp"/>
    </head>
    <body>
        <!-- Navbar Start -->
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <!-- Navbar End -->
        <!-- Page Header End -->
        <c:forEach items="${requestScope.blogdetails}" var="a">
            <div class="container-xxl py-5 page-header position-relative mb-5">
                <div class="container py-5">
                    <h1 class="display-2 text-white animated slideInDown mb-4">Blogs Details</h1>
                    <nav aria-label="breadcrumb animated slideInDown">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                            <li class="breadcrumb-item"><a href="blogs">Blogs</a></li>
                            <li class="breadcrumb-item">Details</li>

                        </ol>
                    </nav>
                </div>
            </div>
            <!-- Page Header End -->

            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-md-7 mt-4">
                    <div class="bg-white rounded shadow overflow-hidden">
                        <div class="p-4">
                            <h1 class="mb-0">${a.posts.tilte}</h1>
                        </div>
                        <div>
                            <a class="text-muted font-italic p-3" title="author" href="#" style="text-decoration: none; color: black;">${a.user.fullname}</a>/<a  class="text-muted font-italic p-3" title="date" href="#" style="text-decoration: none; color: darkslategrey;">${a.posts.date}</a>
                        </div>
                        <div class="text-muted font-italic p-3">
                            <ul>
                                <c:forEach begin="1" end="3"  items="${contactlink}" var="l">
                                    <li>
                                        <a href="blogdetails?postid=${l.posts.post_ID}" style="text-decoration: none;">${l.posts.tilte}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="text-muted font-italic p-5"> 
                            <p>
                                ${a.posts.content}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-md-7 mt-4">
                <div class="bg-white rounded shadow overflow-hidden">
                    <div class="p-4 border-bottom">
                        <h5 class="mb-0">Feedback</h5>
                    </div>
                    <c:forEach items="${requestScope.feedback}" var="f">
                        <ul class="media-list list-unstyled p-4 mb-0">
                            <li class="mt-4">
                                <div class="d-flex justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <a class="pe-2" href="#">
                                            <img src="img/def.png" class="img-fluid avatar avatar-md-sm rounded-circle shadow" alt="img" width="50" height="50">
                                        </a>
                                        <div class="commentor-detail">
                                            <h6 class="mb-0"><a href="javascript:void(0)" class="text-dark media-heading">${f.user.fullname}</a></h6>
                                            <small class="text-muted">${f.feedbacks.date}</small>
                                        </div>
                                    </div>
                                    <ul class="list-unstyled text-warning h5 mb-0">
                                        <c:if test="${f.feedbacks.star == 1}">
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                        </c:if>
                                        <c:if test="${f.feedbacks.star == 2}">
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                        </c:if>
                                        <c:if test="${f.feedbacks.star == 3}">
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                        </c:if>
                                        <c:if test="${f.feedbacks.star == 4}">
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="far fa-star" style="color: orange;"></span>
                                        </c:if>
                                        <c:if test="${f.feedbacks.star == 5}">
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                            <span class="fas fa-star" style="color: orange;"></span>
                                        </c:if>
                                    </ul>
                                </div>
                                <div class="mt-3">
                                    <p class="text-muted font-italic p-3 bg-light rounded">${f.feedbacks.detail}</p>
                                </div>
                            </li>
                        </ul>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- Footer Start -->
        <jsp:include page="Template/FooterPublic.jsp"/>
        <!-- Footer End -->

    </body>
</html>
