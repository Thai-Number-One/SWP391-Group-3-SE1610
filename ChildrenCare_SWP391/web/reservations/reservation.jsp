<%-- 
    Document   : reservation
    Created on : May 27, 2022, 3:06:03 PM
    Author     : dathp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>chao Lfar</h1>
        <c:forEach items="${requestScope.all}" var="a">
            <h1>${a.Begin_Time}</h1>
            <h1>${a.user.FullName}</h1>
            <h1>${a.Total_cost}</h1>
            <h1>${a.Status}</h1>
        </c:forEach>
    </body>
</html>
