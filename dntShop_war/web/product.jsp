<%@page import="entity.Products"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="client-layout.jsp"/>
        <title>DNTShop - Product</title>
        <style>
            /* CSS căn id pagination ra góc phải màn hình */
            #pagination {
                display: flex;
                display: -webkit-flex; /* Safari 8 */
                flex-wrap: wrap;
                -webkit-flex-wrap: wrap; /* Safari 8 */
                justify-content: center;
                -webkit-justify-content: flex-end;
            }
        </style>
    </head>
    <body>       
        <!-- HEADER -->
        <jsp:include  page="client-header.jsp"></jsp:include>
            <!-- /HEADER -->

            <!-- NAVIGATION -->    
        <jsp:include  page="client-navigation.jsp"></jsp:include>           
            <!-- /NAVIGATION -->
            <!-- BREADCRUMB -->
            <div id="breadcrumb" class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="breadcrumb-tree">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">All Categories</a></li>
                                <li><a href="#">Accessories</a></li>
                                <li class="active">Headphones (227,490 Results)</li>
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
                        <!-- ASIDE -->
                        <div id="aside" class="col-md-3">

                            <!-- aside Widget -->
                            <div class="aside">
                                <h3 class="aside-title">Brand</h3>
                                <div class="checkbox-filter">
                                <c:forEach items="${brandsList}" var="b">
                                    <a href="AllProductByBrand?brandid=${b.brandID}">
                                        <div class="input-checkbox">                                   
                                            <label for="brand-${b.brandID}">
                                                <span></span>
                                                ${b.brandName}
                                                <jsp:include page="TotalProductByBrand?brandid=${b.brandID}"/>
                                                <small>(${proBrandTotal})</small>
                                            </label>
                                        </div>
                                    </a>                                                          
                                </c:forEach>
                            </div>
                        </div>
                        <!-- /aside Widget -->

                        <!-- aside Widget -->
                        <div class="aside">
                            <h3 class="aside-title">Categories</h3>
                            <div class="checkbox-filter">
                                <c:forEach items="${categoriesList}" var="c">
                                    <a href="AllProductByCategory?cateid=${c.categoryID}">
                                        <div class="input-checkbox">                                       
                                            <label for="category-${c.categoryID}">
                                                <span></span>
                                                ${c.categoryName}
                                                <jsp:include page="TotalProductByCategory?cateid=${c.categoryID}"/>
                                                <small>(${proCateTotal})</small>
                                            </label>
                                        </div>
                                    </a>                                    
                                </c:forEach>
                            </div>
                        </div>
                        <!-- /aside Widget -->

                        <!-- aside Widget -->
                        <div class="aside">
                            <h3 class="aside-title">Price</h3>
                            <div class="price-filter">
                                <div id="price-slider"></div>
                                <div class="input-number price-min">
                                    <input id="price-min" type="number">
                                    <span class="qty-up">+</span>
                                    <span class="qty-down">-</span>
                                </div>
                                <span>-</span>
                                <div class="input-number price-max">
                                    <input id="price-max" type="number">
                                    <span class="qty-up">+</span>
                                    <span class="qty-down">-</span>
                                </div>
                            </div>
                        </div>
                        <!-- /aside Widget -->                        

                        <!-- aside Widget -->
                        <div class="aside">
                            <h3 class="aside-title">Top selling</h3>
                        <c:forEach var="n" items="${topSellingList}" begin="0" end="2">
                                <div class="product-widget">
                                    <div class="product-img">
                                        <img src="images/Products/${n.image1}" alt="">
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">${n.categoryName}</p>
                                        <h3 class="product-name"><a href="ProductDetail?proid=${n.productID}">${n.productName}</a></h3>
                                        <h4 class="product-price">$<fmt:formatNumber type="number" minFractionDigits="0" value="${n.price*(100-n.discountProduct)/100}"/>
                                            <c:if test="${n.discountProduct ne 0}">
                                            <del class="product-old-price">$${n.price}</del></h4>
                                            </c:if>
                                    </div>
                                </div>
                            </c:forEach>                          
                        </div>
                        <!-- /aside Widget -->
                    </div>
                    <!-- /ASIDE -->

                    <!-- STORE -->
                    <div id="store" class="col-md-9">
                        <!-- store top filter -->
                        <div class="store-filter clearfix">
                            <div class="store-sort">
                                <label>
                                    Sort By:
                                    <select class="input-select">
                                        <option value="0">Popular</option>
                                        <option value="1">Position</option>
                                    </select>
                                </label>

                                <label>
                                    Show:
                                    <select class="input-select" id="pageSize">
                                        <option value="6">6</option>
                                        <option value="9" selected="true">9</option>
                                        <option value="12">12</option>
                                        <option value="15">15</option>
                                    </select>
                                </label>
                            </div>
                            <ul class="store-grid">
                                <li class="active"><i class="fa fa-th"></i></li>
                                <li><a href="#"><i class="fa fa-th-list"></i></a></li>
                            </ul>
                        </div>
                        <!-- /store top filter -->

                        <!-- store products -->
                        <div class="row">
                            <c:forEach items="${productList}" var="p">
                                <!-- product -->
                                <div class="contentPage">
                                    <div class="col-md-4 col-xs-6">

                                        <div class="product">
                                            <div class="product-img">
                                                <img src="images/Products/${p.image1}" alt="">
                                                <div class="product-label">
                                                    <c:if test="${p.discountProduct ne 0}">
                                                        <span class="sale">-${p.discountProduct}%</span>
                                                    </c:if>
                                                    <c:if test="${p.feature ne '--'}">
                                                        <span class="new">${p.feature}</span>
                                                    </c:if>         
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">${p.categoryID.categoryName}</p>
                                                <h3 class="product-name"><a href="ProductDetail?proid=${p.productID}">${p.productName}</a></h3>
                                                <h4 class="product-price">$<fmt:formatNumber type="number" minFractionDigits="0" value="${p.price*(100-p.discountProduct)/100}"/>
                                                    <c:if test="${p.discountProduct ne 0}">
                                                        <del class="product-old-price">$${p.price}</del>
                                                    </c:if>                                         
                                                </h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-btns">
                                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                    <button class="add-to-compare" onclick='addProductToCompare("${p.productID}")'><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                    <button class="quick-view" onclick="location.href = 'ProductDetail?proid=${p.productID}'"><i class="fa fa-eye"></i><span class="tooltipp">view</span></button>
                                                </div>
                                            </div>
                                            <div class="add-to-cart">
                                                <button class="add-to-cart-btn" onclick='addProductToCart("${p.productID}")'><i class="fa fa-shopping-cart"></i> add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /product -->
                            </c:forEach>

                        </div>
                        <!-- /store products -->

                        <!-- store bottom filter -->
                        <div class="store-filter clearfix">
                            <span class="store-qty"></span>
                            <ul id="pagination" >                               
                            </ul>
                        </div>
                        <!-- /store bottom filter -->
                    </div>
                    <!-- /STORE -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION -->


        <!-- FOOTER -->
        <jsp:include page="client-footer.jsp"/>
        <!-- /FOOTER -->

        <!-- jQuery Plugins -->       
        <script type="text/javascript">
            function addProductToCart(productid)
            {
                $.ajax({
                    url: "AddProductToCart?command=plus&productID=" + productid,
                    type: "POST",
                    //data: {name: name1, price: price1, product_id: id, number: number, registerid: 75, waiter: waiterID},
                    success: function()
                    {

                        location.reload();
                    },
                    error: function(jqXHR, textStatus, errorThrown)
                    {
                        alert("error");
                    }
                });
            }
            function addProductToCompare(productid)
            {
                $.ajax({
                    url: "ProductCompareAddServlet?productID=" + productid,
                    type: "POST",
                    //data: {name: name1, price: price1, product_id: id, number: number, registerid: 75, waiter: waiterID},
                    success: function()
                    {

                        location.reload();
                    },
                    error: function(jqXHR, textStatus, errorThrown)
                    {
                        alert("error");
                    }
                });
            }
        </script>
        <script type="text/javascript">
            $(function() {
                var pageSize = 6; // Hiển thị 6 sản phẩm trên 1 trang
                showPage = function(page) {
                    $(".contentPage").hide();
                    $(".contentPage").each(function(n) {
                        if (n >= pageSize * (page - 1) && n < pageSize * page)
                            $(this).show();
                    });
                }
                showPage(1);
                ///** Cần truyền giá trị vào đây **///
                var totalRows = ${productListCount}; // Tổng số sản phẩm hiển thị
                var btnPage = 5; // Số nút bấm hiển thị di chuyển trang
                var iTotalPages = Math.ceil(totalRows / pageSize);

                var obj = $('#pagination').twbsPagination({
                    totalPages: iTotalPages,
                    visiblePages: btnPage,
                    onPageClick: function(event, page) {
                        /* console.info(page); */
                        showPage(page);
                    }
                });
                /*console.info(obj.data());*/
            });
        </script>
    </body>
</html>
