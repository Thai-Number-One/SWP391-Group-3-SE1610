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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>Add Prescription</title>
        <style>
            body {
                margin: 0;
                font-family: "Heebo",sans-serif;
                font-size: 1rem;
                font-weight: 400;
                line-height: 1.5;
                background-color: #FFF5F3;
                -webkit-text-size-adjust: 100%;
                -webkit-tap-highlight-color: rgba(0,0,0,0);
            }
            .all{
                padding: 30px;
                margin: auto;
                width: 50%;


            }
        </style>
    </head>

    <body>
        <div class="all"><center>
            <form method="post" action="checkprescription">
                <c:forEach items="${requestScope.add}" var="a">
                    <h3>Prescription ID: ${a.prescription.prescriptionid}</h3>
                    <h3>User ID: ${a.user.userid}</h3>
                    <h3>Service Name: ${a.service.servicename}</h3>
                    <h3>Medicine Name: ${a.medicine.medicinename}</h3>
                    <input class="form-control"type="text" name="pid" value="${a.prescription.prescriptionid}" style="display: none;">
                    <input class="form-control" type="text" name="uid" value="${a.user.userid}" style="display: none;" >
                </c:forEach>
                Medicine name<select name="mid" class="form-control">
                    <c:forEach items="${requestScope.me}" var="m">
                        <option value="${m.medicineid}">${m.medicinename}</option>
                    </c:forEach>
                </select><br>    
                Amount<input type="text" name="amount" class="form-control"><br> 
                Note<input type="text" name="note" class="form-control"><br> 
                <input type="submit" value="add prescription" class="btn btn-secondary">
                <button class="btn btn-secondary" type="button"><a style="text-decoration: none; color: white;" href="prescription">Back</a></button>
            </form>
        </center></div>
    </body>
</html>
