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
                        <td><a href="revervationremove?id=${r.id}">X</a></td>
                    </c:forEach>
            </table>
            <table class="table">
                <th scope="col"></th>
                <td scope="row"><span class="button">Total: </span></td>
            </table>
            <button><a href="listService.jsp">Choose More Service</a></button>
            <button><a href="ReservationContact.jsp" class="button">Check out</a></button>
        
        <jsp:include page="Template/FooterPublic.jsp"/>
    </body>
</html>
