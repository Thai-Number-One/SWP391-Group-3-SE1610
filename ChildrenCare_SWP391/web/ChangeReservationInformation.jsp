<%-- 
    Document   : ChangeReservationInformation
    Created on : Jul 11, 2022, 3:34:19 PM
    Author     : s
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
        <title>Change Reservation Information</title>
        <jsp:include page="Template/DesignPublic.jsp"/>
        
        <script >
             function Submit() {
                alert("Change Reservation Successful!");
            }
        </script>
        
    </head>
    <body>
        <% UserDAO dao = new UserDAO();%>
        <%List<User> lst = (List<User>) dao.GetStaffActive();%>
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <h1 style="padding: 10px">Change Reservation Information</h1>
            <hr/>
        <form method="Post" action="ChangeReservation">
            <table class="table">
                <th scope="col" >Service Name</th>
                <th scope="col" style="color: orange">Children Name</th>
                <th scope="col" style="color: orange">Age</th>
                <th scope="col" style="color: orange"></th>
                <th scope="col" style="color: orange">Date</th>
                <th scope="col" style="color: orange"></th>
                <th scope="col" style="color: orange">Time</th>
                <th scope="col" style="color: orange">Doctor</th>
                <th scope="col"></th>
                    
                    <tr>
                        
                        <td scope="row">${SerDe.service_name}<input style="display: none" name="id=${ReDetail.reservation_ID}"></td>
                        <td scope="row"><h4><input type="text" class="form-control" name="children" required="" value="${ReDetail.children_name}"></h4></td>
                        <td scope="row"><input type="number" class="form-control" name="Age" required="" value="${ReDetail.age}"><td>
                        <td scope="row"><input type="date" class="form-control" name="Date" required="" value="${detailreser.date}"><td>
                        <td scope="row"><select class="nav-link dropdown-toggle" data-bs-toggle="dropdown" name="Time">
                                    <option value="7:30">7:30</option>
                                    <option value="9:00">9:00</option>
                                    <option value="10:40">10:40</option>
                                    <option value="12:50">12:50</option>
                                    <option value="14:30">14:30</option>
                                    <option value="14:30">16:00</option>
                            </select></td>
                       <td scope="row"><select class="nav-link dropdown-toggle" data-bs-toggle="dropdown" name="Doctor">
                                   <%for(int i = 0; i < lst.size();i++){%>
                                   <option value="<%= lst.get(i).getUser_ID()%>"><%= lst.get(i).getFullName()%></option>   
                               <%}%>
                            </select></td>
                        <td></td>
                   
            </table>
             
            
            <input type="submit" value="Submit" onclick="Submit()" class="btn btn-secondary">
        </form>
        <jsp:include page="Template/FooterPublic.jsp"/>
    </body>
</html>

