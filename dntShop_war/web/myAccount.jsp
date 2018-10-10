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
                                <li class="active">My Account</li>
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
                        <!-- Register -->
                        <div class="col-md-6 order-details">
                            <!-- Register Account -->
                            <form id="formRegis" action="EditMyProfile" method="post">
                                <div class="billing-details">
                                    <div class="section-title text-center">
                                        <h3 class="title">Personal Profile</h3>
                                    </div>                            
                                    <div class="form-group">
                                        <h5>FIRST NAME</h5>
                                        <input class="input" type="hidden" name="customerID" value="${sessionScope.login_account.customerID}" required="true">
                                    <input class="input" type="text" name="first-name" value="${sessionScope.login_account.firstName}" placeholder="First Name" required="true">
                                </div>
                                <div class="form-group">
                                    <h5>LAST NAME</h5>
                                    <input class="input" type="text" name="last-name" value="${sessionScope.login_account.lastName}" placeholder="Last Name" required="true">
                                </div>                           
                                <div class="form-group">
                                    <h5>PHONE</h5>
                                    <input class="input" type="tel" name="tel" value="${sessionScope.login_account.phone}" placeholder="Telephone">
                                </div>
                                <div class="form-group">
                                    <h5>ADDRESS</h5>
                                    <input class="input" type="text" name="address" value="${sessionScope.login_account.address}" placeholder="Address">
                                </div>
                                <div class="form-group">
                                    <h5>GENDER</h5>
                                    <select class="input" name="gender" required="true">
                                        <c:choose>
                                            <c:when test="${sessionScope.login_account.gender eq true}">
                                                <option value="Male" selected="true">Male</option>
                                                <option value="Female">Female</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="Male">Male</option>
                                                <option value="Female" selected="true">Female</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </select>
                                </div>
                                <input type="submit" class="input order-submit" style="font-weight: bold; color: red;" value="SAVE">
                            </div>
                        </form>
                        <!-- /Register Account -->
                    </div>
                    <!-- /Register-->

                    <div class="col-md-1">                        
                    </div>

                    <div class="col-md-3 order-details">
                        <form id="formAvatar" action="EditMyAvatar" method="post" enctype="multipart/form-data">
                            <div class="billing-details">
                                <div class="section-title text-center">
                                    <h3 class="title">AVATAR</h3>
                                </div>                            
                                <div class="form-group">
                                    <input class="input" type="hidden" name="cusID" value="${sessionScope.login_account.customerID}" required="true">
                                    <img class="img-rounded" id="blah" src="${sessionScope.login_account.avatar}" style="margin:auto; width:150px;display:block;" onclick="document.getElementById('exampleInputFile').click();">
                                    <input type="file" id="exampleInputFile" name="inputImage" accept="image/*" onchange="readURL(this);" style="display: none;">
                                    <input type="submit" class="input order-submit" style="font-weight: bold; color: red;" value="SAVE">
                                </div>                    
                            </div>
                        </form>
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
            function readURL(input) {
                /*************** check image **********/
                var fileInput = document.getElementById('exampleInputFile');
                var filePath = fileInput.value;
                var allowedExtensions = /(\.jpg|\.png|\.jpeg|\.gif)$/i;
                if (!allowedExtensions.exec(filePath)) {
                    alert('Please upload file having extensions .jpg/.png/.jpeg/.gif only.');
                    fileInput.value = '';
                    $('#blah').attr('src', '${sessionScope.login_account.avatar}');
                    return false;
                } else {
                    //Image preview
                    if (fileInput.files && fileInput.files[0]) {
                        var reader = new FileReader();
                        reader.onload = function(e) {
                            $('#blah')
                                    .attr('src', e.target.result)
                                    .width(150)
                                    .height(150);
                        };
                        reader.readAsDataURL(input.files[0]);
                    }
                }
            }
        </script>
    </body>
</html>