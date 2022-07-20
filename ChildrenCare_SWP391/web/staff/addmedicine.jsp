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
           
            .all{
                background: white;
                box-shadow: 0 3px 5px 0;
                padding: 30px;
                margin: auto;
                width: 65%;


            }
        </style>
        <jsp:include page="/Template/DesignPublic.jsp" />
    </head>

    <body>
         <!-- Navbar Start -->
        <jsp:include page="/Template/HeadMenuPublic.jsp" />
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Add Prescriptions</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="HomeP.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Staff</a></li>
                        <li class="breadcrumb-item"><a href="prescription">Prescription</a></li>
                        <li class="breadcrumb-item">Add</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->
        <div class="all">
            
                <form method="post" action="checkprescription">
                    <c:forEach items="${requestScope.add}" var="a">
                        <h3>Prescription ID: ${a.redetail.prescription_ID}</h3>
                        <h3>User ID: ${a.user.userid}</h3>
                        <h3>User Name: ${a.user.fullname}</h3>
                        <h3>Children Name: ${a.redetail.childrenname}</h3>
                        <h3>Children Age ${a.redetail.age}</h3>
                        <h3>Service Name: ${a.service.servicename}</h3>
                        
                        <input class="form-control"type="text" name="pid" value="${a.redetail.prescription_ID}" style="display: none;">
                        <input class="form-control" type="text" name="uid" value="${a.user.userid}" style="display: none;" >
                    </c:forEach>
                    Medicine name<select name="mid" class="form-control">
                        <c:forEach items="${requestScope.me}" var="m">
                            <option value="${m.medicineid}">${m.medicinename}</option>
                        </c:forEach>
                    </select><br>    
                    Amount<input type="text" name="amount" class="form-control">
                    <c:if test="${requestScope.check==1}">
                        <h6 style="color: red;">(Please enter number 1 to 99 or don't leave it blank)</h6>
                    </c:if>
                          <br> 
                    Note<input type="text" name="note" class="form-control">
                     <c:if test="${requestScope.check==1}">
                        <h6 style="color: red;">(Please don't leave it blank)</h6>
                    </c:if><br> 
                    <input type="submit" value="Add" class="btn" style="background: #FE5D37; color: azure;">
                    <button class="btn" type="button"  style="background: #FE5D37;"><a style="text-decoration: none; color: white;" href="prescription">Back</a></button>
                </form>
           
        </div>
        <jsp:include page="/Template/FooterPublic.jsp"/>
    </body>
</html>
