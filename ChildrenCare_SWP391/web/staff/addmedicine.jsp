<%-- 
    Document   : addmedicine
    Created on : Jun 2, 2022, 11:49:29 AM
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
        <form method="post" action="checkprescription">
            <c:forEach items="${requestScope.add}" var="a">
                <h3>Prescription ID: ${a.prescription.prescriptionid}</h3>
                <h3>User ID: ${a.user.userid}</h3>
                <h3>Service Name: ${a.service.servicename}</h3>
                <h3>Medicine Name: ${a.medicine.medicinename}</h3>
                <input type="text" name="pid" value="${a.prescription.prescriptionid}" style="display: none;">
                <input type="text" name="uid" value="${a.user.userid}" style="display: none;" >
            </c:forEach>
            Medicine name:<select name="mid">
                <c:forEach items="${requestScope.me}" var="m">
                    <option value="${m.medicineid}">${m.medicinename}</option>
                </c:forEach>
            </select><br>    
                Amount:<input type="text" name="amount"><br> 
                Note:<input type="text" name="note"><br> 
                <input type="submit" value="add prescription">
        </form>
    </body>
</html>
