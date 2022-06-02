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
        <style>
            .table_r {

                border-collapse: collapse;
                overflow: hidden;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
            }


            .table_r td {
                text-align: center;
                padding: 15px;
                background-color: rgba(255,255,255,0.2);
                color: #000;
            }

            .table_r th {
                text-align: center;
                padding: 15px;
                color: #fff;
                background-color: #5a5a5a;
            }

        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div class="all">
            <div>
          

                <table class="table_r">
                    <tr>
                        <th colspan="8">Basic reservation information</th>
                    </tr>
                    <tr>
                        <th>reservation id</th>
                        <th>customer full name</th>
                        <th>email</th>
                        <th>mobile</th>
                        <th>reservation date</th>
                        <th>total cost</th>
                        <th>sale name</th>
                        <th>status</th>
                    </tr>
                    <tr>
                        <c:set value="0" var="count" />
                        <c:forEach items="${requestScope.all}" var="a">
                            <c:if test="${count==0}">
                                <td>${a.reservationid}</td>                  
                                <td>${a.user.fullname}</td>
                                <td>${a.user.email}</td>
                                <td>${a.user.phone}</td>
                                <td>${a.ordertime}</td>
                                <td>${a.totalcost}</td>
                                <c:if test="${a.redetail.namesale ==null}">
                                    <td>no</td>
                                </c:if>
                                <c:if test="${a.redetail.namesale !=null}">
                                    <td>${a.redetail.namesale}</td>
                                </c:if>
                                    
                                <td>
                                    <form method="post" action="reservationdetails">


                                        <select name="status">

                                            <option value="${a.status}">${a.status}</option>
                                            <c:if test="${a.status == 'wait'}">
                                                <option value="being">being</option>
                                            </c:if>
                                            <c:if test="${a.status != 'wait'}">
                                                <option value="wait">wait</option>
                                            </c:if>    
                                                <input style="display: none;" name="id" value="${a.user.userid}">
                                                <input type="submit" value="change">
                                        </select></form>
                                </td>
                            </c:if>

                        <h3 style="display: none;">${count=count +1}</h3>
                    </c:forEach>
                    </tr>
                </table>

            </div>
            <div>
                <table class="table_r">
                    <tr>
                        <th colspan="5">The receiver information</th>
                    </tr>
                    <tr>
                        <th>full name</th>
                        <th>gendar</th>
                        <th>email</th>
                        <th>mobile</th>
                        <th>address</th>
                    </tr>
                    <tr>
                        <c:set value="0" var="count1" />
                        <c:forEach items="${requestScope.all}" var="a">
                            <c:if test="${count1==0}">
                                <td>${a.user.fullname}</td>
                                <c:if test="${a.user.gender==1}"><td>male</td></c:if>
                                <c:if test="${a.user.gender==0}"><td>female</td></c:if>
                                <td>${a.user.email}</td>
                                <td>${a.user.phone}</td>
                                <td>${a.user.address}</td>
                            </c:if>
                        <h3 style="display: none;">${count1=count1 +1}</h3>
                    </c:forEach>
                    </tr>
                </table>

            </div>
            <div>

                <table class="table_r">
                                        <tr>
                        <th colspan="5">This list of reserved services</th>
                    </tr>
                    <tr>
                        <th>thumbnail</th>
                        <th>name</th>
                        <th>category</th>
                        <th>unit price</th>
                        <th>total cost</th>
                    </tr>
                    <c:forEach items="${requestScope.all}" var="a">
                        <tr>
                            <td>${a.service.image}</td>
                            <td>${a.user.fullname}</td>
                            <td>${a.service.servicename}</td>
                            <td>${a.service.price}</td>
                            <td>${a.totalcost}</td>
                        </tr>
                    </c:forEach> 
                </table>
            </div>
        </div>
    </body>
</html>
