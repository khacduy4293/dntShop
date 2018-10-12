<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="client-layout.jsp"/>
        <title>DNTShop - Create New Account</title>

    </head>
    <body>
        <!-- HEADER -->
        <jsp:include  page="client-header.jsp"></jsp:include>
            <!-- /HEADER -->

            <!-- NAVIGATION -->
        <jsp:include page="client-navigation.jsp"></jsp:include>
            <!-- /NAVIGATION -->

            <!-- BREADCRUMB -->
            <div id="breadcrumb" class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="breadcrumb-header">My Account</h3>
                            <ul class="breadcrumb-tree">
                                <li><a href="#">Home</a></li>
                                <li class="active">Change Password</li>
                            </ul>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /BREADCRUMB -->

            <!-- SECTION -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">

                        <div class="col-md-3">                        
                        </div>

                        <div class="col-md-5 order-details">                      
                            <!-- Login Account -->
                            <form id="PasswordForm" action="changePassword" method="post" onsubmit="return checkForm();">
                                <div class="billing-details">
                                    <div class="section-title text-center">
                                        <h3 class="title">Change Password</h3>
                                    </div>
                                    <div class="form-group">
                                        <h5>CURRENT PASSWORD</h5>
                                        <input class="input" type="password" id="curpass" name="curpass" placeholder="Enter current Password" required="true">
                                    </div>
                                    <div class="form-group">
                                        <h5>NEW PASSWORD</h5>
                                        <input class="input" type="hidden" id="cusid" name="cusid" value="${sessionScope.login_account.customerID}">
                                    <input class="input" type="password" id="pass" name="pass" placeholder="Enter new Password" required="true">
                                </div>
                                <div class="form-group">
                                    <h5>CONFIRM PASSWORD</h5>
                                    <input class="input" type="password" id="confirmpass" name="confirmpass" placeholder="Confirm Password" required="true">
                                </div>
                                <div class="form-group">
                                    <span id="msg"></span>
                                </div>
                                <input type="submit" class="input order-submit" style="font-weight: bold; color: red;" value="CHANGE">
                            </div>
                        </form>

                        <!-- /Login Account -->
                    </div>

                    <div class="col-md-4">                        
                    </div>                

                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION -->

        <!-- FOOTER -->
        <jsp:include page="client-footer.jsp"/>
        <!-- /FOOTER -->
        <script type="text/javascript">
            function checkForm(){
                var curpass = $('#curpass').val();
                var pass = $('#pass').val();
                var confirmpass = $('#confirmpass').val();
                if (curpass !== "${sessionScope.login_account.password}" ) {
                    $("#msg").html('<p class="msg" style="color:red">current password incorrect</p>');
                    event.preventDefault();
                }else if(pass !== confirmpass){
                    $("#msg").html('<p class="msg" style="color:red">confirm password incorrect</p>');
                    event.preventDefault();
                }
            }
        </script>
    </body>
</html>
