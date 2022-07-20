<%@page import="Entity.User"%>
<!doctype html>
<html>
    <% User u = (User) request.getAttribute("userprofile");%>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>User Profile</title>
        <jsp:include page="Template/DesignPublic.jsp"/>
    </head>
    <body className='snippet-body'>
        <jsp:include page="Template/HeadMenuPublic.jsp"/>
        <form acction="userprofile" method="post">
            <div class="container rounded bg-white mt-5 mb-5">

                <div class="row">
                    <div class="col-md-5 border-right">
                        <a href="homeservlet" class="btn btn-default" style="text-align: left">Back to Home Page</a>
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="200px" src="<%=u.getAvatar()%>"><span class="font-weight-bold"><%=u.getFullName()%></span><span class="text-black-50"><%=u.getEmail()%></span><span> </span></div>
                    </div>
                    <div class="col-md-7 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Profile Settings</h4>
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-12"><label class="labels">Full Name</label><input type="text" class="form-control" placeholder="enter your full name" value="<%= u.getFullName()%>" name="fullname" required=""></div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12"><label class="labels">Address</label><input type="text" class="form-control" placeholder="enter address" value="<%= u.getAddress()%>" name="address" required=""></div>
                                <div class="col-md-12"><label class="labels">Phone</label><input type="text" class="form-control" placeholder="enter phone" value="<%=u.getPhone()%>" name="phone" required=""></div>
                                <p class="text-danger">${mess1}</p>
                                <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control" value="<%= u.getEmail()%>" disabled="" name="email" required=""></div>
                                <div class="col-md-12"><label class="labels">Birth Day</label><input type="date" class="form-control" placeholder="" value="<%= u.getDate()%>" name="date" required=""></div>
                                <div class="row mt-2">

                                    <% if (u.getGender() == 1) {%>
                                    <div class="col-md-2">
                                        <input class="form-check-input" name="gender" value="1" type="radio" id="flexRadioDefault1" checked="">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Male
                                        </label>
                                    </div>
                                    <div class="col-md-6">
                                        <input class="form-check-input" name="gender" value="0" type="radio" id="flexRadioDefault2" >
                                        <label class="form-check-label" for="flexRadioDefault2">
                                            Female
                                        </label>
                                    </div>
                                    <%} else {%>
                                    <div class="col-md-2">
                                        <input class="form-check-input" name="gender" value="1" type="radio" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Male
                                        </label>
                                    </div>
                                    <div class="col-md-6">
                                        <input class="form-check-input" name="gender" value="0" type="radio" id="flexRadioDefault2" checked="">
                                        <label class="form-check-label" for="flexRadioDefault2">
                                            Female
                                        </label>
                                    </div>
                                    <%}%>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-12"><label class="labels">Change your avatar</label><input type="file" class="form-control" placeholder="" value="<%=u.getAvatar()%>" name="avatar"></div>
                                </div>
                            </div>
                            <p class="text-success" style="text-align: center">${messSuccess}</p>
                            <div class="mt-5 text-center"><input class="btn btn-primary profile-button" type="submit"value="Save Profile"> </div>
                        </div>
                    </div>

                </div>

            </div>
        </form>
        <jsp:include page="Template/FooterPublic.jsp"/>
    </body>
</html>

