<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <jsp:include page="admin-main-layout.jsp"></jsp:include>
        <title>Add New Product</title>
        
        </head>
        <!--
        BODY TAG OPTIONS:
        =================
        Apply one or more of the following classes to get the
        desired effect
        |---------------------------------------------------------|
        | SKINS         | skin-blue                               |
        |               | skin-black                              |
        |               | skin-purple                             |
        |               | skin-yellow                             |
        |               | skin-red                                |
        |               | skin-green                              |
        |---------------------------------------------------------|
        |LAYOUT OPTIONS | fixed                                   |
        |               | layout-boxed                            |
        |               | layout-top-nav                          |
        |               | sidebar-collapse                        |
        |               | sidebar-mini                            |
        |---------------------------------------------------------|
        -->
        <body class="skin-blue sidebar-mini">
            <%
            session.setAttribute("currentAdminPage", "customer");
            session.setAttribute("currentAdminPageChild", "addCustomer");
        %>
            <div class="wrapper">

                <!-- Main Header -->
            <jsp:include page="admin-main-header.jsp"></jsp:include>
                <!-- Left side column. contains the logo and sidebar -->
            <jsp:include page="admin-main-sidebar.jsp"></jsp:include>

                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <h1>
                            Customer Manager                            
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="#"><i class="fa fa-users"></i> Customer</a></li>
                            <li class="active">Create</li>
                        </ol>
                    </section>

                    <!-- Main content -->
                    <section class="content">
                        <div class="box box-default">
                            <form action="adminAddCusAccount" method="post" enctype="multipart/form-data" onsubmit="return checkForm();">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Create new Customer Account</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputFName">First Name<span style="color:red">*</span></label>
                                                <input type="text" class="form-control" id="exampleInputFName" name="fName" placeholder="Enter first name" required="true">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputLName">Last Name<span style="color:red">*</span></label>
                                                <input type="text" class="form-control" id="exampleInputLName" name="lName" placeholder="Enter last name" required="true">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail">Email<span style="color:red">*</span></label>
                                                <input type="email" class="form-control" id="exampleInputEmail" name="email" placeholder="Enter email" required="true">
                                            </div>                                           
                                        </div><!-- /.col -->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Gender<span style="color:red">*</span></label>
                                                <select class="form-control" name="gender" required="true">
                                                    <option value="">--</option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                                <label for="exampleInputPhone">Phone<span style="color:red">*</span></label>
                                                <input type="tel" class="form-control" id="exampleInputPhone" name="phone" placeholder="Enter phone" required="true">
                                            </div>  
                                        <div class="form-group">
                                                <label for="exampleInputAddress">Address</label>
                                                <input type="text" class="form-control" id="exampleInputAddress" name="address" placeholder="Enter address">
                                            </div>       
                                    </div><!-- /.col -->       
                                </div><!-- /.row -->
                                <div class="row">                                   
                                    <div class="col-md-6">
                                        <div class="form-group">
                                                <label for="exampleInputPass">Password<span style="color:red">*</span></label>
                                                <input type="password" class="form-control" id="exampleInputPassword" name="password" placeholder="Enter password" required="true">
                                            </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                                <label for="exampleInputRepass">Re-password<span style="color:red">*</span></label>
                                                <input type="password" class="form-control" id="exampleInputRepass" name="repassword" placeholder="Enter re-password" required="true">
                                            </div>
                                    </div>
                                </div>             
                                <div class="row">                                   
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Avatar</label>
                                            <input type="file" id="exampleInputFile1" name="inputImage1" onchange="readURL(this);">
                                            <p class="help-block"><img id="blah" src="#" alt="" class="img-circle" width="80px" height="80px"/></p>
                                        </div>
                                    </div>                  
                                </div>
                            </div><!-- /.box-body -->
                            <div class="box-footer">
                                <div class="box-tools pull-right">
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>                           
                            </div>
                        </form>
                    </div><!-- /.box -->                    
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->

            <!-- Main Footer -->
            <jsp:include page="admin-main-footer.jsp"></jsp:include>
           
        </div><!-- ./wrapper -->

        <!-- REQUIRED JS SCRIPTS -->
        <script type="text/javascript">
            function checkForm() {
                    var newPass = $('#exampleInputPassword').val();
                    var rePass = $('#exampleInputRepass').val();
                    if (newPass !== rePass) {
                        alert("Password don't Match");
                        event.preventDefault();
                        $('#password').focus();
                    }
                }
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#blah')
                                .attr('src', e.target.result)
                                .width(80)
                                .height(80);
                    };

                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
    </body>
</html>
