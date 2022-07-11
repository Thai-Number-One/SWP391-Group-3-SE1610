<%-- 
    Document   : ReservationDetails
    Created on : Jun 26, 2022, 11:40:31 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservation Details</title>
        <jsp:include page="Template/DesignPublic.jsp"/>
    </head>
    <body>
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
            <h1 style="padding: 10px">Reservation Details</h1>
            <hr/>
            <table class="table">
                <th scope="col" style="color: orange">Service Name</th>
                <th scope="col" style="color: orange">Quantity</th>
                <th scope="col" style="color: orange">Price</th>
                <th scope="col" style="color: orange">Discount</th>
                <th scope="col"></th>

                <c:forEach items="${rd}" var="r">
                    <tr>
                        <td scope="row">${r.service_Name}</td>
                        <td>${r.quantity}</td>
                        <td>${r.price}</td>
                        <td>${r.discount}</td>
                        <td><a href="revervationremove?id=${r.id}"><i class="far fa-trash-alt me-2"></i></a></td>
                    </c:forEach>
            </table>
            <table class="table">
                <td scope="row"></td>
                <td scope="row"></td>
                <td scope="row"></td>
                <td scope="row"></td>
                <c:if test="${total != null}">
                <td scope="row"><span>Total: ${total}</span></td>
                </c:if>
                <c:if test="${total == null}">
                <td scope="row"><span>Total: 0</span></td>
                </c:if>
            </table>
        <div class="col-md-5 mt-4">
            <a href="listserviceservlet" class="btn btn-secondary">Choose More Service</a>
            <a href="ReservationContact.jsp" class="btn btn-secondary">Check out</a>
        </div>
        <jsp:include page="Template/FooterPublic.jsp"/>
    </body>
</html>
