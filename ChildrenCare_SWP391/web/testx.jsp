<%-- 
    Document   : testx
    Created on : Jun 3, 2022, 1:44:53 AM
    Author     : thaic
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
        <select name="role">
            <c:forEach items="${list}" var="o">
                <option value="${o.user_ID}">${o.fullName} abc</option>
            </c:forEach>
        </select>
    </body>
</html>
