<%-- 
    Document   : SendFeedback.jsp
    Created on : Jul 19, 2022, 9:21:34 PM
    Author     : HP
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <jsp:include page="Template/DesignPublic.jsp"/>
    </head>
    <body>
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <div class="container" style="margin-top: 10px">
            <div class="row bg-white rounded shadow overflow-hidden">
                <h1>Send Feedback</h1>
                <form action="feedbackservice" method="post">
                    <table class="table">
                        <c:forEach items="${reservation}" var="r">
                            <tr>
                                <th class="col" style="color: orange" >Reservation ID</th>
                                <td><input  style="width: 600px;" type="text" class="form-control" name="reservationid"  value="${r.reservations.reservationID}" readonly/></td>
                            </tr>
                            <tr>
                                <th class="col" style="color: orange" >Service Name</th>
                                <td><input style="width: 600px;" type="text" name="service" class="form-control" value="${r.service.servicename}" disabled=""/></td>
                            </tr>
                            <tr>
                                <th class="col" style="color: orange" >Vote Star</th>
                                <td><select style="width: 200px;" class="form-select" name="star">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <th class="col" style="color: orange" >Details</th>
                                <td><textarea class="form-control" name="details" style="width: 600px;height: 200px;"></textarea></td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <th></th>
                            <td><input type="submit" value="Send" class="btn btn-primary"/><p style="color: greenyellow;">${mess}</p></td>
                        </tr>
                    </table>
                </form>
            </div>
            <jsp:include page="Template/FooterPublic.jsp"/>
    </body>
</html>
