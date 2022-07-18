<%-- 
    Document   : HeadMenuPublic
    Created on : Jun 19, 2022, 12:56:03 AM
    Author     : HP
--%>

<%@page import="DAO.SettingDAO"%>
<%@page import="Entity.Setting"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <% SettingDAO dao = new SettingDAO(); %>
        <% List<Setting> lst = dao.GetSettingByStatus(1); %>
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0">
            <a href="HomeP.jsp" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class="fa fa-book-reader me-3"></i>ChildrenCare</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    <a href="homeservlet" class="nav-item nav-link">Home</a>
                    <div class="nav-item dropdown">
                        <a href="blogs"  class="nav-item nav-link" >Blog</a>
                        
                    </div>
                    <a href="listserviceservlet" class="nav-item nav-link">Service</a>
                     <c:if test="${sessionScope.loginsuccess.getRole_ID() == 1}">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Admin</a>
                        <div class="dropdown-menu rounded-0 rounded-bottom border-0 shadow-sm m-0">
                             <% for (int i = 0; i < lst.size(); i++) {%>
                            <% if(lst.get(i).getType_ID() == 4){ %>
                            <a href="<%=lst.get(i).getHref()%>" class="dropdown-item"><%= lst.get(i).getValue()%></a>
                            <%}%>
                            <%}%>  
                        </div>
                    </div>
                     </c:if>
                     <c:if test="${sessionScope.loginsuccess.getRole_ID() == 2}">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Staff</a>
                        <div class="dropdown-menu rounded-0 rounded-bottom border-0 shadow-sm m-0">
                            <% for (int i = 0; i < lst.size(); i++) {%>
                            <% if(lst.get(i).getType_ID() == 1){ %>
                            <a href="<%=lst.get(i).getHref()%>" class="dropdown-item"><%= lst.get(i).getValue()%></a>
                            <%}%>
                            <%}%>                          
                        </div>
                    </div>
                     </c:if>
                     <c:if test="${sessionScope.loginsuccess.getRole_ID() == 3}">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Manager</a>
                        <div class="dropdown-menu rounded-0 rounded-bottom border-0 shadow-sm m-0">
                            <% for (int i = 0; i < lst.size(); i++) {%>
                            <% if(lst.get(i).getType_ID() == 3){ %>
                            <a href="<%=lst.get(i).getHref()%>" class="dropdown-item"><%= lst.get(i).getValue()%></a>
                            <%}%>
                            <%}%>  
                        </div>
                    </div>
                     </c:if>
                    <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                </div>
                <h4><a href="ReservationDetails.jsp" style="padding-right: 15px;"><i class="bi bi-cart"></i></a></h4>

                <c:if test="${sessionScope.loginsuccess == null}">
                    <a href="login.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">Login<i class="fa fa-arrow-right ms-3"></i></a>
                    </c:if>
                    <c:if test="${sessionScope.loginsuccess != null}">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-item nav-link" data-bs-toggle="dropdown">Hello ${sessionScope.loginsuccess.getFullName()}</a>
                        <div class="dropdown-menu rounded-0 rounded-bottom border-0 shadow-sm m-0">
                            <% for (int i = 0; i < lst.size(); i++) {%>
                            <% if(lst.get(i).getType_ID() == 2){ %>
                            <a href="<%= lst.get(i).getHref() %>" class="dropdown-item"><%= lst.get(i).getValue()%></a>
                            <%}%>
                            <%}%> 
                            <a href="logout" class="dropdown-item">Logout</a>
                        </div>
                    </div>
                </c:if>
            </div>
        </nav>
    </body>
</html>
