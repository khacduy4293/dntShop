<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <jsp:include page="admin-main-layout.jsp"></jsp:include>
        <title>Edit Product</title>
        <style>
                label.error{
                    color: red;
                    font-weight: normal;
                }
            </style>
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
                            <form id="updateProForm" action="adminUpdateProduct" method="post" enctype="multipart/form-data">
                                <div class="box-header with-border">
                                    <h3 class="box-title">EDIT PRODUCT</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputProductName">Product Name<span style="color:red">*</span></label>
                                                <span id="email-result"></span>
                                                <input type="text" class="form-control" id="exampleInputProName" name="productName" value="${pro.productName}" placeholder="Enter product name" required="true">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPrice">Price($)<span style="color:red">*</span></label>
                                            <input type="number" class="form-control" id="exampleInputPrice" name="price" value="${pro.price}" placeholder="Enter price" required="true">
                                        </div>
                                        <div class="form-group">
                                                <label for="exampleInputDiscount">Discount(%)<span style="color:red">*</span></label>
                                                <input type="number" class="form-control" id="exampleInputDiscount" name="discount" value="${pro.discountProduct}" placeholder="Enter discount" required="true">
                                            </div>
                                    </div><!-- /.col -->
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Brand<span style="color:red">*</span></label>
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
                                            <label>Category<span style="color:red">*</span></label>
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
                                            <label>Feature<span style="color:red">*</span></label>
                                            <select class="form-control" name="feature">
                                                <c:choose>
                                                    <c:when test="${pro.feature eq '--'}">
                                                        <option value="--" selected="true">--</option> 
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="--">--</option>
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
                            </div><!-- /.box-body -->
                            <div class="box-header with-border">
                                <h3 class="box-title">PRODUCT IMAGE</h3>                              
                            </div><!-- /.box-header -->
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Image 1<span style="color:red">*</span></label>
                                            <input type="file" id="exampleInputFile1" name="inputImage1" onchange="readURL(this);" style="display: none;" accept="image/*">
                                            <input type="button" value="Choose image" onclick="document.getElementById('exampleInputFile1').click();"/>
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
                                            <input type="file" id="exampleInputFile2" name="inputImage2" onchange="readURL2(this);" style="display: none;" accept="image/*">
                                            <input type="button" value="Choose image" onclick="document.getElementById('exampleInputFile2').click();"/>
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
                                            <input type="file" id="exampleInputFile3" name="inputImage3" onchange="readURL3(this);" style="display: none;" accept="image/*">
                                            <input type="button" value="Choose image" onclick="document.getElementById('exampleInputFile3').click();"/>
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
                                            <input type="file" id="exampleInputFile4" name="inputImage4" onchange="readURL4(this);" style="display: none;" accept="image/*">
                                            <input type="button" value="Choose image" onclick="document.getElementById('exampleInputFile4').click();"/>
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
                            </div>
                            <div class="box-header with-border">
                                <h3 class="box-title">DETAILS</h3>                              
                            </div><!-- /.box-header -->
                            <div class="box-body">
                                <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputCPU">CPU</label>
                                                <input type="text" class="form-control" id="exampleInputCPU" name="CPU" value="${prodetails.cpu}" placeholder="Core i3-8130U 2.20Ghz....">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputMemory">Memory</label>
                                                <input type="text" class="form-control" id="exampleInputMemory" name="Memory" value="${prodetails.memory}" placeholder="4GB DDR4 Bus 2400Mhz...">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputVGA">VGA</label>
                                                <input type="text" class="form-control" id="exampleInputVGA" name="VGA" value="${prodetails.vga}" placeholder="Intel UHD 620M....">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputHDD">HDD</label>
                                                <input type="text" class="form-control" id="exampleInputHDD" name="HDD" value="${prodetails.hdd}" placeholder="1 TB SATA3 + SSD M.2 PCIe....">
                                            </div>
                                        </div><!-- /.col -->
                                        <div class="col-md-6">
                                          <div class="form-group">
                                                <label for="exampleInputCamera">Camera</label>
                                                <input type="text" class="form-control" id="exampleInputCamera" name="Camera" value="${prodetails.camera}" placeholder="16 MP & 2MP (2 camera) ...">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputDisplay">Display</label>
                                                <input type="text" class="form-control" id="exampleInputDisplay" name="Display" value="${prodetails.display}" placeholder="15.6 inch backlit FHD(1920x1080) IPS...">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputBattery">Battery</label>
                                                <input type="text" class="form-control" id="exampleInputBattery" name="Battery" value="${prodetails.battery}" placeholder="3500 mAh, 3 Cells 42Whrs, ...">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputWeight">Weight</label>
                                                <input type="text" class="form-control" id="exampleInputWeight" name="Weight" value="${prodetails.weights}" placeholder="1.6 Kg ....">
                                            </div>
                                    </div><!-- /.col -->       
                                </div><!-- /.row -->
                            </div>
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
            function readURL(input) {
                /*************** check image **********/
                    var fileInput = document.getElementById('exampleInputFile1');
                    var filePath = fileInput.value;
                    var allowedExtensions = /(\.jpg|\.png|\.jpeg|\.gif)$/i;
                    if (!allowedExtensions.exec(filePath)) {
                        alert('Please upload file having extensions .jpg/.png/.jpeg/.gif only.');
                        fileInput.value = '';
                        if(${not empty pro.image1}){
                        $('#blah').attr('src', 'images/Products/${pro.image1}');
                        }else{
                        $('#blah').attr('src', '#');    
                        }
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
            function readURL2(input) {
                /*************** check image **********/
                    var fileInput = document.getElementById('exampleInputFile2');
                    var filePath = fileInput.value;
                    var allowedExtensions = /(\.jpg|\.png|\.jpeg|\.gif)$/i;
                    if (!allowedExtensions.exec(filePath)) {
                        alert('Please upload file having extensions .jpg/.png/.jpeg/.gif only.');
                        fileInput.value = '';
                        if(${not empty pro.image2}){
                        $('#blah2').attr('src', 'images/Products/${pro.image2}');
                        }else{
                        $('#blah2').attr('src', '#');    
                        }
                        return false;
                    } else {
                        //Image preview
                        if (fileInput.files && fileInput.files[0]) {
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
            }
            function readURL3(input) {
                /*************** check image **********/
                    var fileInput = document.getElementById('exampleInputFile3');
                    var filePath = fileInput.value;
                    var allowedExtensions = /(\.jpg|\.png|\.jpeg|\.gif)$/i;
                    if (!allowedExtensions.exec(filePath)) {
                        alert('Please upload file having extensions .jpg/.png/.jpeg/.gif only.');
                        fileInput.value = '';
                        if(${not empty pro.image3}){
                        $('#blah3').attr('src', 'images/Products/${pro.image3}');
                        }else{
                        $('#blah3').attr('src', '#');    
                        }
                        return false;
                    } else {
                        //Image preview
                        if (fileInput.files && fileInput.files[0]) {
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
            }
            function readURL4(input) {
                /*************** check image **********/
                    var fileInput = document.getElementById('exampleInputFile4');
                    var filePath = fileInput.value;
                    var allowedExtensions = /(\.jpg|\.png|\.jpeg|\.gif)$/i;
                    if (!allowedExtensions.exec(filePath)) {
                        alert('Please upload file having extensions .jpg/.png/.jpeg/.gif only.');
                        fileInput.value = '';
                        if(${not empty pro.image4}){
                        $('#blah4').attr('src', 'images/Products/${pro.image4}');
                        }else{
                        $('#blah4').attr('src', '#');    
                        }
                        return false;
                    } else {
                        //Image preview
                        if (fileInput.files && fileInput.files[0]) {
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
            }
            /*************** check Email unique **********/
            $(document).ready(function() {
                var x_timer;
                $("#exampleInputProName").keyup(function(e) {
                    clearTimeout(x_timer);
                    var name = $(this).val();
                    var id = '${pro.productID}';
                    x_timer = setTimeout(function() {
                        check_name_ajax(id,name);
                    }, 1000);
                });

                function check_name_ajax(id,name) {
                    $("#email-result").html('<label id="email-resultError" class="control-label pull-right" value="false" style="color: orange"><i class="fa fa-bell-o"></i> Waiting ...</label>');
                    $.post('adminCheckUpdateProductName', {'id': id,'name': name}, function(data) {
                        $("#email-result").html(data);
                    });
                }
            });
            /*************** focus Email error  **********/
            $('#updateProForm').submit(function(event) {
                var errors = $('#email-resultError').attr('value');
                if (errors === 'false' || errors === null) {
                    $('#exampleInputProName').focus();
                    event.preventDefault();
                }
            });
        </script>
        <script type="text/javascript">
            $().ready(function() {
                $("#updateProForm").validate({
                    onfocusout: false,
                    onkeyup: false,
                    onclick: false,
                    rules: {
                        "productName": {
                            required: true,
                            maxlength: 100
                        },
                        "price": {
                            required: true,
                            min: 1,
                            max: 3000
                        },
                        "discount": {
                            required: true,
                            min: 0,
                            max: 75
                        },
                        "brandID": {
                            required: true
                        },
                        "cateID": {
                            required: true
                        },
                        "feature": {
                            required: true
                        }
                    },
                    messages: {
                        "productName": {
                            required: "Please enter a product name",
                            maxlength: "Product name must be maximum 100 characters"
                        },
                        "price": {
                            required: "Please enter a price",
                            min: "Price values from 1 to 3000",
                            max: "Price values from 1 to 3000"
                        },
                        "discount": {
                            required: "Please enter a discount",
                            min: "Discount values from 0 to 75",
                            max: "Discount values from 0 to 75"
                        },
                        "brandID": {
                            required: "Please enter a brand"
                        },
                        "cateID": {
                            required: "Please enter a category"
                        },
                        "feature": {
                            required: "Please enter a feature"
                        }
                    }
                });
            });
        </script>
    </body>
</html>
