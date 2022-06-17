<%@page import="Entity.Service"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Small Business - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/styles_1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%Service s = (Service) request.getAttribute("servicedetail");%>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="#!">Service Detail</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Services</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Content-->
        <div class="container px-4 px-lg-5">
            <!-- Heading Row-->
            <div class="row gx-4 gx-lg-5 align-items-center my-5">
                <div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="<%= s.getImage()%>" alt="..." /></div>
                <div class="col-lg-5">
                    <h1 class="font-weight-light">Service Informations</h1>
                    <form action="service_detail" method="post">
                    <div class="table-responsive p-0">
                        <table class="table align-items-center justify-content-center mb-0">
                            <thead>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Service Name</th>
                                    <td>
                                        <input type="text" value="<%= s.getService_name()%>" class="form-control" name="ServiceName" >
                                    </td>
                                </tr>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2 ">Type</th>
                                    <td>
                                        <input type="text" value="<%=s.getType()%>" class="form-control" name="Type" >
                                    </td>
                            <span class="glyphicon glyphicon-eye-open"></span>                                            
                            </tr>
                            <tr>
                                <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Title</th>
                                <td>
                                    <input type="text" value="<%=s.getTitle()%>" class="form-control" name="Title" >
                                </td>
                            </tr>
                            <tr>
                                <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Price</th>
                                <td class="align-middle text-sm mb-0">
                                    <input type="text" value="<%=s.getPrice()%>" class="form-control" name="Price" placeholder="VND">
                                </td>
                            </tr>
                            <tr>
                                <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Discount</th>
                                <td class="align-middle text-sm mb-0">
                                    <input type="text" value="<%=s.getDiscount()%>" class="form-control" name="Discount" placeholder="%">
                                </td>
                            </tr>
                            <tr>
                                <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Description</th>
                                <td>
                                    <textarea  class="form-control" name="Description" > <%=s.getDetail()%> </textarea>
                                </td>
                            </tr>
                            <tr>
                                <th class="text-uppercase text-secondary text-xx font-weight-bolder opacity-50 ps-2">Status</th>
                                <td>
                                    <select class="form-control m-b-10" name="Status" >
                                        <% if (s.getStatus()== 1) { %>
                                        <option selected value="Active">Active</option>
                                        <option value="Non-active">Non-active</option>
                                        <%} else {%>
                                        <option  value="Active">Active</option>
                                        <option selected value="Non-active">Non-active</option>
                                        <%}%>
                                    </select>
                                </td>
                            </tr>
                            </thead>
                        </table>
                    </div>  
                                    <p class="text-danger">${mess1}</p>
                                    <p class="text-success">${mess2}</p>
                                    <input class="btn btn-primary" value="Save" type="submit">
                                   
                    </form>                   
                    
                </div>
            </div>


        </div>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container px-4 px-lg-5"><p class="m-0 text-center text-white">Copyright &copy; Children Care 2022</p></div>
        </footer>


    </body>
</html>
