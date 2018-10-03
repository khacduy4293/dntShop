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
                            <h3 class="breadcrumb-header">Regular Page</h3>
                            <ul class="breadcrumb-tree">
                                <li><a href="#">Home</a></li>
                                <li class="active">Blank</li>
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
                        <div class="col-md-5 order-details">                      
                            <!-- Login Account -->
                            <form id="formLogin" action="Login" method="post">
                                <div class="billing-details">
                                    <div class="section-title text-center">
                                        <h3 class="title">Login Your Account</h3>
                                    </div>                            
                                    <div class="form-group">
                                        <h5>EMAIL</h5>
                                        <input class="input" type="email" name="email" placeholder="Enter your Email" required="true">
                                    </div>
                                    <div class="form-group">
                                        <h5>PASSWORD</h5>
                                        <input class="input" type="password" name="password" placeholder="Enter your Password" required="true">
                                    </div>
                                    <input type="submit" class="input order-submit" style="font-weight: bold;" value="LOGIN">                      
                                </div>
                            </form>

                            <!-- /Login Account -->
                        </div>

                        <div class="col-md-1">                        
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
                                    <input type="submit" class="input order-submit" style="font-weight: bold;" value="REGISTER">                               
                                </div>
                            </form>                       
                            <!-- /Register Account -->
                        </div>
                        <!-- /Register-->

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
