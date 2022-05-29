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
           

            .table_r {

                border-collapse: collapse;
                overflow: hidden;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
            }


            .table_r td {
                padding: 15px;
                background-color: rgba(255,255,255,0.2);
                color: #000;
            }

            .table_r th {
                text-align: left;  
                padding: 15px;
                color: #fff;
                background-color: #5a5a5a;
            }
            .alltable{
                position: absolute;
                top: 30%;
                left: 50%;
                transform: translate(-50%, -50%);
            }



        </style>
    </head>
    <body>
        <h1>chao Lfar</h1>

        <div class="alltable">
            <div>
                <form method="post" action="reservation">
                    <table>
                        <tr>
                            <th><input type="date" name="datefrom" placeholder="From"></th>
                            <th><input type="date" name="dateto" placeholder="To"></th>
                            <th><select name="status">
                                    <option value="all">all</option>
                                    <option value="wait">wait</option>
                                    <option value="being">being</option>
                                </select></th>
                            <th>
                                <select name="staff">
                                    <option value="0">all</option>
                                    <c:forEach items="${requestScope.staff}" var="s">
                                        <option value="${s.userid}">${s.fullname}</option>
                                    </c:forEach>
                                </select>
                            </th>
                            <th><input type="submit" value="filter"></th>
                        </tr>
                    </table>
                </form>

            </div>

            <div class="container">
                <table class="table_r">
                    <tr>
                        <th></th>
                        <th>Reservation date</th>
                        <th>Customer name</th>
                        <th>Total cost</th>
                        <th>Status</th>
                    </tr>
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
                </table>
            </div>

        </div>

    </body>
</html>
