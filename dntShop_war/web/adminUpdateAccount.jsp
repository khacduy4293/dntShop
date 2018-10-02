<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <jsp:include page="admin-main-layout.jsp"></jsp:include>
        <title>Edit Account</title>
        
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
                            Account Manager
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="#"><i class="fa fa-user"></i> Account</a></li>
                            <li class="active">Edit</li>
                        </ol>
                    </section>

                    <!-- Main content -->
                    <section class="content">
                        <div class="row">
                        <!-- right column -->
                        <div class="col-md-6">
                            <!-- Horizontal Form -->
                            <div class="box box-info">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Edit Account</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                <form class="form-horizontal" action="adminUpdateAccount" method="post" enctype="multipart/form-data">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                            <div class="col-sm-10">
                                                <input type="email" class="form-control" id="inputEmail3" name="email" placeholder="Email" value="${ad.email}" disabled="true">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputFullName" class="col-sm-2 control-label">Name<span style="color:red">*</span></label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputFullName" name="fullName" value="${ad.fullName}" placeholder="FullName" required="true">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputFullName" class="col-sm-2 control-label">Avatar</label>
                                            <div class="col-sm-10">
                                                <img id="blah" src="${ad.avatar}" class="img-circle" width="80px" height="80px" alt="User Image"/>
                                                <input type="file" id="exampleInputFile" name="inputImage" onchange="readURL(this);">
                                            </div>
                                        </div>
                                    </div><!-- /.box-body -->
                                    <div class="box-footer">                                        
                                        <button type="submit" class="btn btn-primary pull-right">Change</button>
                                    </div><!-- /.box-footer -->
                                </form>
                            </div><!-- /.box -->
                        </div><!--/.col (right) -->
                    </div>                 
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->

            <!-- Main Footer -->
            <jsp:include page="admin-main-footer.jsp"></jsp:include>
                
            </div><!-- ./wrapper -->

            <!-- REQUIRED JS SCRIPTS -->
            <script type="text/javascript">
                function checkForm() {
                    var oldPass = $('#oldpassword').val();
                    var newPass = $('#password').val();
                    var rePass = $('#repassword').val();
                    if (oldPass !== "<%= session.getAttribute("admin_login_pass")%>") {
                        alert("Old password don't Match");
                        event.preventDefault();
                        $('#oldpassword').focus();
                    } else if (newPass !== rePass) {
                        alert("Password don't Match");
                        event.preventDefault();
                        $('#password').focus();
                    } else {
                        alert("Change Password successfully!!!");
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