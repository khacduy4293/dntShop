<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Edit Product</title>
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
                            Product Manager
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="#"><i class="fa fa-archive"></i> Products</a></li>
                            <li class="active">Edit</li>
                        </ol>
                    </section>

                    <!-- Main content -->
                    <section class="content">
                        <div class="box box-default">
                            <form action="adminUpdateProduct" method="post" enctype="multipart/form-data">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Edit Product</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputProductName">Product Name<span style="color:red">*</span></label>
                                                <input type="text" class="form-control" id="exampleInputProName" name="productName" value="${pro.productName}" placeholder="Enter product name" required="true">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPrice">Price<span style="color:red">*</span></label>
                                            <input type="number" class="form-control" id="exampleInputPrice" name="price" value="${pro.price}" placeholder="Enter price" required="true">
                                        </div>
                                        <div class="form-group">
                                                <label for="exampleInputDiscount">Discount<span style="color:red">*</span></label>
                                                <input type="number" class="form-control" id="exampleInputDiscount" name="discount" value="${pro.discountProduct}" placeholder="Enter price" required="true">
                                            </div>
                                    </div><!-- /.col -->
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Brand</label>
                                            <select class="form-control" name="brandID" required="true">
                                                <c:forEach var="b" items="${listBrand}">
                                                    <c:choose>
                                                        <c:when test="${pro.brandID.brandID eq b.brandID}">
                                                            <option selected="true" value="${b.brandID}">${b.brandName}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="${b.brandID}">${b.brandName}</option>
                                                        </c:otherwise>
                                                    </c:choose>                   
                                                </c:forEach>                                                                                    
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Category</label>
                                            <select class="form-control" name="cateID" required="true">
                                                <c:forEach var="c" items="${listCate}">
                                                    <c:choose>
                                                        <c:when test="${pro.categoryID.categoryID eq c.categoryID}">
                                                            <option value="${c.categoryID}" selected="true">${c.categoryName}</option> 
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="${c.categoryID}">${c.categoryName}</option> 
                                                        </c:otherwise>
                                                    </c:choose>                                                         
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Feature</label>
                                            <select class="form-control" name="feature">
                                                <c:choose>
                                                    <c:when test="${pro.feature eq '--'}">
                                                        <option selected="true">--</option> 
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option>--</option>
                                                    </c:otherwise>
                                                </c:choose>
                                                <c:choose>
                                                    <c:when test="${pro.feature eq 'New'}">
                                                        <option value="New" selected="true">New</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="New">New</option>
                                                    </c:otherwise>
                                                </c:choose>
                                                <c:choose>
                                                    <c:when test="${pro.feature eq 'Hot'}">
                                                        <option value="Hot" selected="true">Hot</option> 
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="Hot">Hot</option> 
                                                    </c:otherwise>
                                                </c:choose>                                                                                        
                                            </select>
                                        </div>   
                                    </div><!-- /.col -->       
                                </div><!-- /.row -->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea class="form-control" rows="3" name="descrip" placeholder="Enter ...">${pro.descriptions}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Product Image <span style="color:red">*</span></label>
                                            <input type="file" id="exampleInputFile1" name="inputImage1" onchange="readURL(this);">
                                            <p class="help-block">
                                                <c:choose>
                                                    <c:when test="${empty pro.image1}">
                                                        <img id="blah" src="#" alt="" class="user-image" width="80px" height="80px"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img id="blah" src="images/Products/${pro.image1}" alt="" class="user-image" width="80px" height="80px"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Image 2</label>
                                            <input type="file" id="exampleInputFile2" name="inputImage2" onchange="readURL2(this);" >
                                            <p class="help-block">
                                                <c:choose>
                                                    <c:when test="${empty pro.image2}">
                                                        <img id="blah2" src="#" alt="" class="user-image" width="80px" height="80px"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img id="blah2" src="images/Products/${pro.image2}" alt="" class="user-image" width="80px" height="80px"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Image 3</label>
                                            <input type="file" id="exampleInputFile3" name="inputImage3" onchange="readURL3(this);">
                                            <p class="help-block">
                                                <c:choose>
                                                    <c:when test="${empty pro.image3}">
                                                        <img id="blah3" src="#" alt="" class="user-image" width="80px" height="80px"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img id="blah3" src="images/Products/${pro.image3}" alt="" class="user-image" width="80px" height="80px"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Image 4</label>
                                            <input type="file" id="exampleInputFile4" name="inputImage4" onchange="readURL4(this);">
                                            <p class="help-block">
                                                <c:choose>
                                                    <c:when test="${empty pro.image4}">
                                                        <img id="blah4" src="#" alt="" class="user-image" width="80px" height="80px"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img id="blah4" src="images/Products/${pro.image4}" alt="" class="user-image" width="80px" height="80px"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </p>
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
