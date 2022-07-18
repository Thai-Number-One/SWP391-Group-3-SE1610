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
        
        <!-- Footer Start -->
        <jsp:include page="Template/FooterPublic.jsp"/>
        <!-- Footer End -->

    </body>
</html>
