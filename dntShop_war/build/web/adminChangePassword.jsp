<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Change Password</title>
        <jsp:include page="admin-main-layout.jsp"></jsp:include>
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
                            Page Header
                            <small>Optional description</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                            <li class="active">Here</li>
                        </ol>
                    </section>

                    <!-- Main content -->
                    <section class="content">
                        <div class="example-modal">
                            <div class="modal">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="adminChangePassword" method="post" onsubmit="return checkForm();">
                                            <div class="modal-header">                                           
                                                <h4 class="modal-title">Modal Default</h4>
                                            </div>
                                            <div class="modal-body">                                              
                                                <div class="form-group">                                              
                                                    <label for="exampleOldPassword">Old Password<span style="color:red">*</span></label>
                                                    <input type="hidden" class="form-control" id="adminID" name="adminID" value="<%= session.getAttribute("admin_login_id")%>">
                                                    <input type="password" class="form-control" id="oldpassword" name="oldpassword" placeholder="Password">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleNewPassword">New Password<span style="color:red">*</span></label>
                                                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required="true">
                                                </div>   
                                                <div class="form-group">
                                                    <label for="exampleConfirmPassword">Confirm Password<span style="color:red">*</span></label>
                                                    <input type="password" class="form-control" id="repassword" name="repassword" placeholder="Password" required="true">
                                                </div>   
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Save changes</button>
                                            </div>
                                        </form>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->
                        </div><!-- /.example-modal -->
                    </section><!-- /.content -->
                </div><!-- /.content-wrapper -->

                <!-- Main Footer -->
            <jsp:include page="admin-main-footer.jsp"></jsp:include>
                <!-- /.control-sidebar -->
                <!-- Add the sidebar's background. This div must be placed
                     immediately after the control sidebar -->
                <div class="control-sidebar-bg"></div>
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
        </script>
    </body>
</html>
