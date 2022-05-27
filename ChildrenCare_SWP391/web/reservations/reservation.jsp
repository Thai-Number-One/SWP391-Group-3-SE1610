<%-- 
    Document   : reservation
    Created on : May 27, 2022, 3:06:03 PM
    Author     : dathp
--%>

<%@page import="model_staff.reservations_user"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                height: 100%;
            }

    

            .container {
                position: absolute;
                top: 30%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

            table {
                
                border-collapse: collapse;
                overflow: hidden;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
            }

            
            td {
                padding: 15px;
                background-color: rgba(255,255,255,0.2);
                color: #000;
            }

            th {
                text-align: left;  
                padding: 15px;
                color: #fff;
                background-color: #5a5a5a;
            }

            
            
            
            </style>
        </head>
        <body>
            <h1>chao Lfar</h1>


            <div class="container">
                <table>
                    <thead>                                          
                        <tr>
                            <th></th>
                            <th>Reservation date</th>
                            <th>Customer name</th>
                            <th>Total cost</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set value="1" var="count" />
                        <c:forEach items="${requestScope.all}" var="a">

                            <tr>                 
                                <td>${count}</td> 
                                <td>${a.ordertime}</td>
                                <td>${a.user.fullname}</td>
                                <td>${a.totalcost}</td>
                                <td>${a.status}</td>
                        <h1 hidden>${count=count +1}</h1>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>



        </body>
    </html>
