<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add New Product</title>
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
                        <div class="box box-default">
                            <form action="adminAddProduct" method="post" enctype="multipart/form-data">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Select2</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputProductName">Product Name<span style="color:red">*</span></label>
                                                <input type="text" class="form-control" id="exampleInputProName" name="productName" placeholder="Enter product name" required="true">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPrice">Price<span style="color:red">*</span></label>
                                                <input type="number" class="form-control" id="exampleInputPrice" name="price" placeholder="Enter price" required="true">
                                            </div>                          
                                            <div class="form-group">
                                                <label>Description</label>
                                                <textarea class="form-control" rows="3" name="descrip" placeholder="Enter ..."></textarea>
                                            </div> 
                                        </div><!-- /.col -->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Brand</label>
                                                <select class="form-control" name="brandID" required="true">
                                                <c:forEach var="b" items="${listBrand}">
                                                    <option value="${b.brandID}">${b.brandName}</option>
                                                </c:forEach>                                                                                    
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Category</label>
                                            <select class="form-control" name="cateID" required="true">
                                                <c:forEach var="c" items="${listCate}">
                                                    <option value="${c.categoryID}">${c.categoryName}</option>     
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Feature</label>
                                            <select class="form-control" name="feature">
                                                <option>--</option>
                                                <option value="New" selected="true">New</option>
                                                <option value="Hot">Hot</option>                                             
                                            </select>
                                        </div>     
                                    </div><!-- /.col -->       
                                </div><!-- /.row -->
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Product Image <span style="color:red">*</span></label>
                                            <input type="file" id="exampleInputFile1" name="inputImage1" onchange="readURL(this);" required="true">
                                            <p class="help-block"><img id="blah" src="#" alt="" class="user-image" width="80px" height="80px"/></p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Image 2</label>
                                            <input type="file" id="exampleInputFile2" name="inputImage2" onchange="readURL2(this);" >
                                            <p class="help-block"><img id="blah2" src="#" alt="" class="user-image" width="80px" height="80px"/></p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Image 3</label>
                                            <input type="file" id="exampleInputFile3" name="inputImage3" onchange="readURL3(this);">
                                            <p class="help-block"><img id="blah3" src="#" alt="" class="user-image" width="80px" height="80px"/></p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Image 4</label>
                                            <input type="file" id="exampleInputFile4" name="inputImage4" onchange="readURL4(this);">
                                            <p class="help-block"><img id="blah4" src="#" alt="" class="user-image" width="80px" height="80px"/></p>
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
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div><!-- ./wrapper -->

        <!-- REQUIRED JS SCRIPTS -->
        <script type="text/javascript">
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
            function readURL2(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#blah2')
                                .attr('src', e.target.result)
                                .width(80)
                                .height(80);
                    };

                    reader.readAsDataURL(input.files[0]);
                }
            }
            function readURL3(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#blah3')
                                .attr('src', e.target.result)
                                .width(80)
                                .height(80);
                    };

                    reader.readAsDataURL(input.files[0]);
                }
            }
            function readURL4(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#blah4')
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
