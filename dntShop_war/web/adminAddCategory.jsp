<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <jsp:include page="admin-main-layout.jsp"></jsp:include>
        <title>Add Account</title>
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
            session.setAttribute("currentAdminPage", "category");
            session.setAttribute("currentAdminPageChild", "addCategory");
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
                            Category Manager
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="#"><i class="fa fa-list"></i> Categories</a></li>
                            <li class="active">Create</li>
                        </ol>
                    </section>

                    <!-- Main content -->
                    <section class="content">
                        <div class="example-modal">
                            <div class="modal">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="adminAddCategory" method="post" enctype="multipart/form-data" onsubmit="return checkForm();">
                                            <div class="modal-header">                                             
                                                <h4 class="modal-title">Create new Category</h4>
                                            </div>                                        
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="exampleInputCateName">Category Name<span style="color:red">*</span></label>
                                                    <input type="text" class="form-control" id="exampleInputCateName" name="cateName" placeholder="Enter fullname" required="true">
                                                </div>                                                                                 
                                                <div class="form-group">
                                                    <label for="exampleInputFile">Image input<span style="color:red">*</span></label>
                                                    <input type="file" id="exampleInputFile" name="inputImage" onchange="readURL(this);" style="display: none;" accept="image/*">
                                                    <input type="button" value="Choose image" onclick="document.getElementById('exampleInputFile').click();"/>
                                                    <p class="help-block"><img id="blah" src="#" alt="" class="user-image" width="80px" height="80px"/></p>
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
            
        </div><!-- ./wrapper -->

        <!-- REQUIRED JS SCRIPTS -->
        <script type="text/javascript">
            function readURL(input) {
                /*************** check image **********/
                    var fileInput = document.getElementById('exampleInputFile');
                    var filePath = fileInput.value;
                    var allowedExtensions = /(\.jpg|\.png|\.jpeg|\.gif)$/i;
                    if (!allowedExtensions.exec(filePath)) {
                        alert('Please upload file having extensions .jpg/.png/.jpeg/.gif only.');
                        fileInput.value = '';
                        $('#blah').attr('src', '#');
                        return false;
                    } else {
                        //Image preview
                        if (fileInput.files && fileInput.files[0]) {
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
            }
            function checkForm() {
                var fileInput = $('#exampleInputFile').val()
                if (fileInput=='') {
                    alert("Please chooes image to continue");
                    event.preventDefault();
                }
            }
        </script>
    </body>
</html>
