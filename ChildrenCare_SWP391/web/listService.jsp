<%-- 
    Document   : listService
    Created on : Jun 26, 2022, 11:53:46 PM
    Author     : HP
--%>

<%@page import="model.Service"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ServiceDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="Template/DesignPublic.jsp"/>
    </head>
    <body>
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <% ServiceDAO dao = new ServiceDAO(); %>
        <% List<Service> lst = dao.getAllServices();%>
        <table>
            <th>Service Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Book</th>
            <% for(int i = 0; i < lst.size();i++){ %>
            <tr>
                <td><%= lst.get(i).getServicename()%></td>
                <td>1</td>
                <td><%= lst.get(i).getPrice()%></td>
                <td><a href="reservationdetail?serviceid=<%= lst.get(i).getServiceid()%>">Book</a></td>
            <%}%>
        </table>
        <jsp:include page="Template/FooterPublic.jsp"/>
    </body>
</html>
