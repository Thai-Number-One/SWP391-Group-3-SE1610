<%-- 
    Document   : AdminDashboard
    Created on : Jun 19, 2022, 1:45:54 AM
    Author     : HP
--%>

<%@page import="Entity.Setting"%>
<%@page import="java.util.List"%>
<%@page import="DAO.SettingDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .m-0 text-primary{
                
            }
        </style>
    </head>
    <body>
        <% SettingDAO dao = new SettingDAO(); %>
        <% List<Setting> lst = dao.GetSettingByStatus(1); %>
       <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
            <div class="sidenav-header">
                <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
                <a href="homeservlet" class="navbar-brand">
                <h4 class="m-0 text-primary"><i class="fa fa-book-reader me-3"></i>ChildrenCare</h4>
            </a>
            </div>
            <hr class="horizontal dark mt-0">
            <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
                <ul class="navbar-nav">
                    <% for (int i = 0; i < lst.size(); i++) { %>
                    <%if(lst.get(i).getType_ID() == 3){%>
                    <li class="nav-item">
                        <a class="nav-link " href="<%=lst.get(i).getHref()%>">
                            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                            </div>
                            <span class="nav-link-text ms-1"><%= lst.get(i).getValue()%></span>
                        </a>
                    </li> 
                    <%}%>
                    <%}%>
                </ul>
            </div>
        </aside>
    </body>
</html>
