<%@page import="Entity.User"%>
<%@page import="Entity.Feedbacks"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html charset="utf-8">
    <head>
        <meta>
        <title>Feedback details</title>
         <jsp:include page="Template/DesignPublic.jsp"/>
    </head>
    <body>
        <% Feedbacks f = (Feedbacks) request.getAttribute("feedbackdetails"); %>
        <% User u = (User) request.getAttribute("feedbackuser"); %>
        <!-- Navbar Start -->
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <!-- Navbar End -->
        <!-- Page Header End -->
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Feedback Details</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomePage.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Manager</a></li>
                        <li class="breadcrumb-item"><a href="feedbackslist">Feedbacks</a></li>
                        <li class="breadcrumb-item" >Details</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Page Header End -->
        <div class="row">
            <div class="leftcolumn">
                <div class="card">
                    <h2 style="border-bottom-style: ridge;">Feedback details</h2>
                    <div>
                    </div>
                </div>
                <div class="container-fluid py-4">
                    <div class="row">
                        <div class="col-12">
                            <div class="card mb-4">
                                <div class="card-header pb-0">
                                    <div class="card-body px-0 pt-0 pb-5">
                                        <div class="table-responsive p-0">
                                            <table class="table align-items-center justify-content-center mb-0">
                                                <thead>
                                                    <tr>
                                                        <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Full Name</th>
                                                        <td>
                                                            <input type="text" value="<%= u.getFullName()%>" class="form-control" name="FullName" readonly required>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2 ">Email</th>
                                                        <td>
                                                            <input type="text" value="<%= u.getEmail()%>" class="form-control" name="Email" readonly required>
                                                        </td>
                                                <span class="glyphicon glyphicon-eye-open"></span>                                            
                                                </tr>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Mobile</th>
                                                    <td>
                                                        <input type="text" value="<%= u.getPhone()%>" class="form-control" name="Mobile" readonly required>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Service</th>
                                                    <td class="align-middle text-sm mb-0">
                                                        <c:forEach items="${requestScope.test}" var="a">
                                                        <input type="text" value="${a.service.servicename}" class="form-control" name="Service" readonly required>
                                                        </c:forEach>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Rate star</th>
                                                    <td>
                                                        <c:if test="${requestScope.feedbackdetails.star == 1}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${requestScope.feedbackdetails.star == 2}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${requestScope.feedbackdetails.star == 3}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${requestScope.feedbackdetails.star == 4}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="far fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                        <c:if test="${requestScope.feedbackdetails.star == 5}">
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                            <span class="fas fa-star" style="color: orange;"></span>
                                                        </c:if>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Feedback</th>
                                                    <td>
                                                        <textarea class="form-control" name="details" readonly required>${requestScope.feedbackdetails.detail}</textarea>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Status</th>
                                                    <td>
                                                        <c:if test="${requestScope.feedbackdetails.status == 'view'}">
                                                        <a class="fas fa-eye" style="font-size: 30px; color: black;" href="feedbackstatus?status=view&feedback_id=${feedbackdetails.feedbackid}"></a>
                                                        </c:if>
                                                        <c:if test="${requestScope.feedbackdetails.status == 'hide'}">
                                                        <a class="fas fa-eye-slash" style="font-size: 30px; color: black;" href="feedbackstatus?status=hide&feedback_id=${feedbackdetails.feedbackid}"></a>
                                                        </c:if>
                                                        </td>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <a type="button" class="btn btn-secondary" href="feedbackslist" >Return</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </form>
        <!-- Footer Start -->
        <jsp:include page="Template/FooterPublic.jsp"/>
        <!-- Footer End -->
</body>
</html>
