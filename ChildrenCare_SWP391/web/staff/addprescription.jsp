<%-- 
    Document   : staff_add_prescription
    Created on : Jun 1, 2022, 11:03:09 PM
    Author     : dathp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .table_m {

                border-collapse: collapse;
                overflow: hidden;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
                text-align: center;
            }


            .table_m td {
                padding: 15px;
                background-color: rgba(255,255,255,0.2);
                color: #000;
            }

            .table_m th {

                padding: 15px;
                color: #fff;
                background-color: #5a5a5a;
            }
        </style>
    </head>
    <body>
        <div>
            <div>
                <form action="checkprescription" method="get">
                    <input type="text" name="id" placeholder="enter prescription ID">
         
                    <input type="submit" value="Check">
                </form>
            </div>
            <div>
                <table class="table_m">

                    <tr>
                        <th colspan="11">medical prescription</th>
                    </tr>
                    <tr>
                        <th>Prescription_ID</th>
                        <th>User name</th>
                        <th>used services</th>
                        <th>Medicine_name</th>
                        <th>Amount</th>
                        <th>Price</th>
                        <th>country</th>
                        <th>Expiry date</th>
                        <th>Detail</th>
                        <th>Image</th>
                        <th>Note</th>
                    </tr>
                    <c:forEach items="${requestScope.all}" var="a">
                        <tr>
                            <td>${a.prescription.prescriptionid}</td>
                            <td>${a.user.fullname}</td>
                            <td>${a.service.servicename}</td>
                            <td>${a.medicine.medicinename}</td>
                            <td>${a.prescription.amount}</td>
                            <td>${a.medicine.price}</td>
                            <td>${a.medicine.country}</td>
                            <td>${a.medicine.expirydate}</td>
                            <td>${a.medicine.detail}</td>
                            <td>${a.medicine.image}</td>
                            <td>${a.prescription.note}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
