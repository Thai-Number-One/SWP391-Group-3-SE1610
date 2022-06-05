<%-- 
    Document   : CheckVerify
    Created on : Jun 5, 2022, 9:59:39 AM
    Author     : s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify Page</title>
    </head>
    <body>
         <span>We already send a verification  code to your email.</span>
        
        <form action="VerifyCo" method="post">
            <input type="text" name="authcode" >
            <input type="submit" value="verify">
        </form>
    </body>
</html>
