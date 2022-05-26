<%-- 
    Document   : reservation
    Created on : May 26, 2022, 2:59:13 PM
    Author     : dathp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="All_reaservation" method="get">
            <div>

            </div>
            <div>
                <div>
                    <h1>as</h1>
                    <h1>${requestScope.a}</h1>
                    <table>
                        <c:forEach items="${requestScope.all}" var="ra">
                            <tr>
                                <td>${ra.Begin_Time}</td>
                                <td>${ra.user.FullName}</td>
                                <td>${ra.Total_cost}</td>
                                <td>${ra.Status}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <div>

            </div>
        </form>
    </body>
</html>
