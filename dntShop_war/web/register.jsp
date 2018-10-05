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
                            <h3 class="breadcrumb-header">Register Page</h3>
                            <ul class="breadcrumb-tree">
                                <li><a href="#">Home</a></li>
                                <li class="active">Register</li>
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

                        <!-- Register -->
                        <div class="col-md-6 order-details">
                            <!-- Register Account -->
                            <form id="formRegis" action="Register" method="post">
                                <div class="billing-details">
                                    <div class="section-title text-center">
                                        <h3 class="title">Register</h3>
                                    </div>                            
                                    <div class="form-group">
                                        <input class="input" type="text" name="first-name" placeholder="First Name" required="true">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="text" name="last-name" placeholder="Last Name" required="true">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="email" name="email" placeholder="Email" required="true">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="password" name="password" placeholder="Password">
                                    </div>  
                                    <div class="form-group">
                                        <input class="input" type="password" name="password" placeholder="Confirm Password" required="true">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="text" name="address" placeholder="Address">
                                    </div>                           
                                    <div class="form-group">
                                        <input class="input" type="tel" name="tel" placeholder="Telephone">
                                    </div>
                                    <div class="form-group">
                                        <select class="input" name="gender" required="true">
                                            <option value="">Choose a gender</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select>
                                    </div>
                                    <input type="submit" class="input order-submit" style="font-weight: bold; color: red;" value="REGISTER">
                                    <br/>
                                    <div class="form-group" style="float: right">
                                    <span>Already have an account?</span> 
                                    <a href="login.jsp"><span style="color: blue">Login</span></a>
                                </div>
                                </div>
                            </form>                       
                            <!-- /Register Account -->
                        </div>
                        <!-- /Register-->

                        <div class="col-md-3">                        
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

    </body>
</html>
