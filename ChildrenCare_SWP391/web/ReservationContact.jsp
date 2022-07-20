<%-- 
    Document   : ReservationContact
    Created on : Jun 26, 2022, 11:40:47 PM
    Author     : HP
--%>

<%@page import="Entity.User"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UserDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservation Contact</title>
        <jsp:include page="Template/DesignPublic.jsp"/>
    </head>
    <body>
        <% UserDAO dao = new UserDAO();%>
        <%List<User> lst = (List<User>) dao.GetStaffActive();%>
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <h1 style="padding: 10px">Reservation Contact</h1>
            <hr/>
        <form method="Post" action="reservationcontact">
            <table class="table">
                <th scope="col" ">Service Name</th>
                <th scope="col" style="color: orange">Children Name</th>
                <th scope="col" style="color: orange">Age</th>
                <th scope="col" style="color: orange"></th>
                <th scope="col" style="color: orange">Date</th>
                <th scope="col" style="color: orange"></th>
                <th scope="col" style="color: orange">Time</th>
                <th scope="col" style="color: orange">Doctor</th>
                <th scope="col" style="color: orange">Price</th>
                <th scope="col"></th>
                    <c:forEach items="${rd}" var="o">
                    <tr>
                        <td scope="row">${o.service_Name}</td>
                        <td scope="row"><h4><input type="text" class="form-control" name="children${o.id}" required=""></h4></td>
                        <td scope="row"><input type="number" class="form-control" name="Age${o.id}" min="1" required=""><td>
                        <td scope="row"><input type="date" class="form-control" name="Date${o.id}" required=""><td>
                        <td scope="row"><select class="nav-link dropdown-toggle" data-bs-toggle="dropdown" name="Time${o.id}">
                                    <option value="7:30">7:30</option>
                                    <option value="9:00">9:00</option>
                                    <option value="10:40">10:40</option>
                                    <option value="12:50">12:50</option>
                                    <option value="14:30">14:30</option>
                                    <option value="14:30">16:00</option>
                            </select></td>
                       <td scope="row"><select class="nav-link dropdown-toggle" data-bs-toggle="dropdown" name="Doctor${o.id}">
                                   <%for(int i = 0; i < lst.size();i++){%>
                                   <option value="<%= lst.get(i).getUser_ID()%>"><%= lst.get(i).getFullName()%></option>   
                               <%}%>
                            </select></td>
                        <td scope="row">${o.price}</td>
                        <td></td>
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
            <p class="text-danger" style="text-align: center;">${mess1}</p>
            <p class="text-danger" style="text-align: center;">${mess2}</p>
            <a href="ReservationDetails.jsp" class="btn btn-secondary">Change</a>
            <input type="submit" value="Submit" class="btn btn-secondary">
        </form>
        <jsp:include page="Template/FooterPublic.jsp"/>
    </body>
</html>
