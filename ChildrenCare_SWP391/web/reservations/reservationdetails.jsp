<%-- 
    Document   : reservationdetails
    Created on : May 29, 2022, 9:22:08 PM
    Author     : dathp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RESERVATION DETAILS</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div>
            <div>
                <h1>Basic reservation information: </h1>
                <c:forEach items="${requestScope.all}" var="a">
                    <h3>${a.reservationid}</h3>                  
                    <h3>${a.user.fullname}</h3>
                    <h3>${a.user.email}</h3>
                    <h3>${a.user.phone}</h3>
                    <h3>${a.ordertime}</h3>
                    <h3>${a.totalcost}</h3>
                    <h3>${a.redetail.namesale}</h3>
                    <h3>${a.status}</h3>
                </c:forEach>

            </div>
            <div>

            </div>
            <div>

            </div>
        </div>
    </body>
</html>
