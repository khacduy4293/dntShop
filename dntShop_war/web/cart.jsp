<%@page import="java.util.Map"%>
<%@page import="entity.Items"%>
<%@page import="entity.Cart"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="client-layout.jsp"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="Client/css/elegant-icon/style.css">
        <link rel="stylesheet" href="Client/css/line-icon/css/simple-line-icons.css">
        <link type="text/css" rel="stylesheet" href="Client/css/responsive.css"/>
        <title>DTNShop</title>
    </head>
    <body>
        <!-- HEADER -->
        <jsp:include  page="client-header.jsp"></jsp:include>
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>

        <!-- /HEADER -->

        <!-- NAVIGATION -->
        <nav id="navigation">
            <!-- container -->
            <div class="container">
                <!-- responsive-nav -->
                <div id="responsive-nav">
                    <!-- NAV -->
                    <ul class="main-nav nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">Hot Deals</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Laptops</a></li>
                        <li><a href="#">Smartphones</a></li>
                        <li><a href="#">Cameras</a></li>
                        <li><a href="#">Accessories</a></li>
                    </ul>
                    <!-- /NAV -->
                </div>
                <!-- /responsive-nav -->
            </div>
            <!-- /container -->
        </nav>
        <!-- /NAVIGATION -->

        <!-- SECTION -->

        <!-- /SECTION -->
        <!--================End Categories Banner Area =================-->

        <!--================Shopping Cart Area =================-->
        <section class="solid_banner_area">
            <div class="container">
                <div class="solid_banner_inner">
                    <h3>shopping cart</h3>
                </div>
            </div>
        </section>
        <div class="colorlib-shop p_100">
            <div class="container">
                <div class="row row-pb-md">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="process-wrap">
                            <div class="process text-center active">
                                <p><span>01</span></p>
                                <h3>Shopping Cart</h3>
                            </div>
                            <div class="process text-center">
                                <p><span>02</span></p>
                                <h3>Checkout</h3>
                            </div>
                            <div class="process text-center">
                                <p><span>03</span></p>
                                <h3>Order Complete</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-pb-md">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="product-name">
                            <div class="one-forth text-center">
                                <span>Product Details</span>
                            </div>
                            <div class="one-eight text-center">
                                <span>Price</span>
                            </div>
                            <div class="one-eight text-center">
                                <span>Quantity</span>
                            </div>
                            <div class="one-eight text-center">
                                <span>Total</span>
                            </div>
                            <div class="one-eight text-center">
                                <span>Remove</span>
                            </div>
                        </div>
                        <% for (Map.Entry<String, Items> list : cart.getCartItems().entrySet()) {%>
                        <div class="product-cart">
                            <div class="one-forth">
                                <div class="product-img" style="background-image: url(images/Products/product01.png);">
								</div>
                                <div class="display-tc">
                                    <h3><%=list.getValue().getProduct().getProductName()%></h3>
                                </div>
                            </div>
                            <div class="one-eight text-center">
                                <div class="display-tc">
                                    <span class="price">$<%=list.getValue().getProduct().getPrice()%></span>
                                </div>
                            </div>
                            <div class="one-eight text-center">
                                <div class="display-tc">
                                    <input type="text" id="quantity" name="quantity" class="form-control input-number text-center" value="<%=list.getValue().getQuantity() %>" min="1" max="100">
                                </div>
                            </div>
                            <div class="one-eight text-center">
                                <div class="display-tc">
                                    <span class="price">$<%=list.getValue().getProduct().getPrice()*list.getValue().getQuantity() %></span>
                                </div>
                            </div>
                            <div class="one-eight text-center">
                                <div class="display-tc">
                                    <a href="#" class="closed"></a>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="total-wrap">
                            <div class="row">
                                <div class="col-md-8">
                                    <form action="#">
                                        <div class="row form-group">
                                            <div class="col-md-9">
                                                <input type="text" name="quantity" class="form-control input-number" placeholder="Your Coupon Number...">
                                            </div>
                                            <div class="col-md-3">
                                                <input type="submit" value="Apply Coupon" class="btn btn-primary">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-3 col-md-push-1 text-center">
                                    <div class="total">
                                        <div class="sub">
                                            <p><span>Subtotal:</span> <span>$<%=cart.totalCart() %></span></p>
                                            <p><span>Delivery:</span> <span>$0.00</span></p>
                                            <p><span>Discount:</span> <span>$0.00</span></p>
                                        </div>
                                        <div class="grand-total">
                                            <p><span><strong>Total:</strong></span> <span>$<%=cart.totalCart() %></span></p>
                                        </div>
                                        <div class="col-md-12" style="padding: 40px 0px;">
                                            <input type="submit" onclick="document.getElementById('id01').style.display='block'" value="Check out" class="btn btn-primary">
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--================End Shopping Cart Area =================-->
            <!-- /SECTION -->

            <!-- HOT DEAL SECTION -->
            <div id="hot-deal" class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="hot-deal">
                                <ul class="hot-deal-countdown">
                                    <li>
                                        <div>
                                            <h3>02</h3>
                                            <span>Days</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <h3>10</h3>
                                            <span>Hours</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <h3>34</h3>
                                            <span>Mins</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <h3>60</h3>
                                            <span>Secs</span>
                                        </div>
                                    </li>
                                </ul>
                                <h2 class="text-uppercase">hot deal this week</h2>
                                <p>New Collection Up to 50% OFF</p>
                                <a class="primary-btn cta-btn" href="#">Shop now</a>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /HOT DEAL SECTION -->

            <!-- SECTION -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">

                        <!-- section title -->
                        <div class="col-md-12">
                            <div class="section-title">
                                <h3 class="title">Top selling</h3>
                                <div class="section-nav">
                                    <ul class="section-tab-nav tab-nav">
                                        <li class="active"><a data-toggle="tab" href="#tab2">Laptops</a></li>
                                        <li><a data-toggle="tab" href="#tab2">Smartphones</a></li>
                                        <li><a data-toggle="tab" href="#tab2">Cameras</a></li>
                                        <li><a data-toggle="tab" href="#tab2">Accessories</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- /section title -->

                        <!-- Products tab & slick -->
                        <div class="col-md-12">
                            <div class="row">
                                <div class="products-tabs">
                                    <!-- tab -->
                                    <div id="tab2" class="tab-pane fade in active">
                                        <div class="products-slick" data-nav="#slick-nav-2">
                                            <!-- product -->
                                            <div class="product">
                                                <div class="product-img">
                                                    <img src="./img/product06.png" alt="">
                                                    <div class="product-label">
                                                        <span class="sale">-30%</span>
                                                        <span class="new">NEW</span>
                                                    </div>
                                                </div>
                                                <div class="product-body">
                                                    <p class="product-category">Category</p>
                                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                    <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                                    <div class="product-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-btns">
                                                        <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                        <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                        <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                    </div>
                                                </div>
                                                <div class="add-to-cart">
                                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                                </div>
                                            </div>
                                            <!-- /product -->

                                            <!-- product -->
                                            <div class="product">
                                                <div class="product-img">
                                                    <img src="./img/product07.png" alt="">
                                                    <div class="product-label">
                                                        <span class="new">NEW</span>
                                                    </div>
                                                </div>
                                                <div class="product-body">
                                                    <p class="product-category">Category</p>
                                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                    <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                                    <div class="product-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <div class="product-btns">
                                                        <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                        <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                        <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                    </div>
                                                </div>
                                                <div class="add-to-cart">
                                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                                </div>
                                            </div>
                                            <!-- /product -->

                                            <!-- product -->
                                            <div class="product">
                                                <div class="product-img">
                                                    <img src="./img/product08.png" alt="">
                                                    <div class="product-label">
                                                        <span class="sale">-30%</span>
                                                    </div>
                                                </div>
                                                <div class="product-body">
                                                    <p class="product-category">Category</p>
                                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                    <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                                    <div class="product-rating">
                                                    </div>
                                                    <div class="product-btns">
                                                        <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                        <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                        <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                    </div>
                                                </div>
                                                <div class="add-to-cart">
                                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                                </div>
                                            </div>
                                            <!-- /product -->

                                            <!-- product -->
                                            <div class="product">
                                                <div class="product-img">
                                                    <img src="./img/product09.png" alt="">
                                                </div>
                                                <div class="product-body">
                                                    <p class="product-category">Category</p>
                                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                    <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                                    <div class="product-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-btns">
                                                        <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                        <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                        <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                    </div>
                                                </div>
                                                <div class="add-to-cart">
                                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                                </div>
                                            </div>
                                            <!-- /product -->

                                            <!-- product -->
                                            <div class="product">
                                                <div class="product-img">
                                                    <img src="./img/product01.png" alt="">
                                                </div>
                                                <div class="product-body">
                                                    <p class="product-category">Category</p>
                                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                    <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                                    <div class="product-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-btns">
                                                        <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                        <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                        <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                    </div>
                                                </div>
                                                <div class="add-to-cart">
                                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                                </div>
                                            </div>
                                            <!-- /product -->
                                        </div>
                                        <div id="slick-nav-2" class="products-slick-nav"></div>
                                    </div>
                                    <!-- /tab -->
                                </div>
                            </div>
                        </div>
                        <!-- /Products tab & slick -->
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /SECTION -->

            <!-- SECTION -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-4 col-xs-6">
                            <div class="section-title">
                                <h4 class="title">Top selling</h4>
                                <div class="section-nav">
                                    <div id="slick-nav-3" class="products-slick-nav"></div>
                                </div>
                            </div>

                            <div class="products-widget-slick" data-nav="#slick-nav-3">
                                <div>
                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product07.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product08.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product09.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- product widget -->
                                </div>

                                <div>
                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product01.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product02.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product03.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- product widget -->
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-xs-6">
                            <div class="section-title">
                                <h4 class="title">Top selling</h4>
                                <div class="section-nav">
                                    <div id="slick-nav-4" class="products-slick-nav"></div>
                                </div>
                            </div>

                            <div class="products-widget-slick" data-nav="#slick-nav-4">
                                <div>
                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product04.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product05.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product06.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- product widget -->
                                </div>

                                <div>
                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product07.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product08.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product09.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- product widget -->
                                </div>
                            </div>
                        </div>

                        <div class="clearfix visible-sm visible-xs"></div>

                        <div class="col-md-4 col-xs-6">
                            <div class="section-title">
                                <h4 class="title">Top selling</h4>
                                <div class="section-nav">
                                    <div id="slick-nav-5" class="products-slick-nav"></div>
                                </div>
                            </div>

                            <div class="products-widget-slick" data-nav="#slick-nav-5">
                                <div>
                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product01.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product02.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product03.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- product widget -->
                                </div>

                                <div>
                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product04.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product05.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- /product widget -->

                                    <!-- product widget -->
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product06.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                        </div>
                                    </div>
                                    <!-- product widget -->
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /SECTION -->
            
            <!-- NEWSLETTER -->
            <div id="newsletter" class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="newsletter">
                                <p>Sign Up for the <strong>NEWSLETTER</strong></p>
                                <form>
                                    <input class="input" type="email" placeholder="Enter Your Email">
                                    <button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
                                </form>
                                <ul class="newsletter-follow">
                                    <li>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-pinterest"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /NEWSLETTER -->
             <!-- /Login Modal -->
            <jsp:include page="loginForm.jsp"/>
            <!-- FOOTER -->
            <footer id="footer">
                <!-- top footer -->
                <div class="section">
                    <!-- container -->
                    <div class="container">
                        <!-- row -->
                        <div class="row">
                            <div class="col-md-3 col-xs-6">
                                <div class="footer">
                                    <h3 class="footer-title">About Us</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>
                                    <ul class="footer-links">
                                        <li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>
                                        <li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
                                        <li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-xs-6">
                                <div class="footer">
                                    <h3 class="footer-title">Categories</h3>
                                    <ul class="footer-links">
                                        <li><a href="#">Hot deals</a></li>
                                        <li><a href="#">Laptops</a></li>
                                        <li><a href="#">Smartphones</a></li>
                                        <li><a href="#">Cameras</a></li>
                                        <li><a href="#">Accessories</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="clearfix visible-xs"></div>

                            <div class="col-md-3 col-xs-6">
                                <div class="footer">
                                    <h3 class="footer-title">Information</h3>
                                    <ul class="footer-links">
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Contact Us</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Orders and Returns</a></li>
                                        <li><a href="#">Terms & Conditions</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-xs-6">
                                <div class="footer">
                                    <h3 class="footer-title">Service</h3>
                                    <ul class="footer-links">
                                        <li><a href="#">My Account</a></li>
                                        <li><a href="#">View Cart</a></li>
                                        <li><a href="#">Wishlist</a></li>
                                        <li><a href="#">Track My Order</a></li>
                                        <li><a href="#">Help</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /top footer -->

                <!-- bottom footer -->
                <jsp:include page="client-footer.jsp"/>

                </body>
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

                </script>
                </html>
