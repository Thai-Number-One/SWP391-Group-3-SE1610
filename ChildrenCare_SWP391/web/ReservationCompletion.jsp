<%-- 
    Document   : ReservationCompletion
    Created on : Jun 26, 2022, 11:41:23 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservation</title>
        <jsp:include page="Template/DesignPublic.jsp"/>
    </head>
    <body>
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <div class="container" style="margin-top: 10px">
            <div class="row bg-white rounded shadow overflow-hidden">
                <div class="col-sm-4 text-center">
                    <h2>Check your's Email</h2>
                    <a href="https://mail.google.com/"><img src="img\img_reservation\sendmail.gif" class="img-fluid" alt=""></a>
                </div>
                <div class="col-sm-8">
                    <h1>Reservation Information</h1>
                    <table class="table">
                        <th class="col" style="color: orange" >STT</th>
                        <th class="col" style="color: orange" >Service Name</th>
                        <th class="col" style="color: orange" >Children Name</th>
                        <th class="col" style="color: orange" >Age</th>
                        <th class="col" style="color: orange" >Doctor</th>
                        <th class="col" style="color: orange" >Date</th>
                        <th class="col" style="color: orange" >Time</th>
                        <th class="col" style="color: orange" >Price</th>
                            <c:forEach items="${completion}" var="c">
                            <tr>
                                <td>${c.getId()+1}</td>
                                <td>${c.getService_Name()}</td>
                                <td>${c.getChildren_Name()}</td>
                                <td>${c.getAge()}</td>
                                <td>${c.getDoctor_name()}</td>
                                <td>${c.getDate()}</td>
                                <td>${c.getTime()}</td>
                                <td>${c.getPrice()}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
        <jsp:include page="Template/FooterPublic.jsp"/>
    </body>
</html>
