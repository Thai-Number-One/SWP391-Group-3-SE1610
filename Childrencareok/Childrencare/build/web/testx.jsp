<%-- 
    Document   : testx
    Created on : Jun 3, 2022, 1:44:53 AM
    Author     : thaic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <select name="role">
            <c:forEach items="${detail}" var="o">
                <option value="${o.id}">${o.name}</option>
            </c:forEach>
        </select>
    </body>
</html>
