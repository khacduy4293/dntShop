<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="client-layout.jsp"/>
        <title>DNTShop - Home</title>
    </head>
    <body>
        <jsp:include page="initPage"></jsp:include>
            <!-- HEADER -->
        <jsp:include  page="client-header.jsp"></jsp:include>
            <!-- /HEADER -->

            <!-- NAVIGATION -->
        <jsp:include  page="client-navigation.jsp"></jsp:include>  
            <!-- /NAVIGATION -->           

            <!-- SECTION -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <!-- shop -->
                        <div class="col-md-4 col-xs-6">
                            <div class="shop">
                                <div class="shop-img">
                                    <img src="./img/shop01.png" alt="">
                                </div>
                                <div class="shop-body">
                                    <h3>Laptop<br>Collection</h3>
                                    <a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- /shop -->

                        <!-- shop -->
                        <div class="col-md-4 col-xs-6">
                            <div class="shop">
                                <div class="shop-img">
                                    <img src="./img/shop03.png" alt="">
                                </div>
                                <div class="shop-body">
                                    <h3>Accessories<br>Collection</h3>
                                    <a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- /shop -->

                        <!-- shop -->
                        <div class="col-md-4 col-xs-6">
                            <div class="shop">
                                <div class="shop-img">
                                    <img src="./img/shop02.png" alt="">
                                </div>
                                <div class="shop-body">
                                    <h3>Cameras<br>Collection</h3>
                                    <a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- /shop -->
                        
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /SECTION -->

            <!-- HOT DEAL SECTION -->
            <div id="hot-deal" class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="hot-deal">                         
                                <h2 class="text-uppercase">hot deal this week</h2>                              
                                <p>New Collection Up to 30% OFF</p>
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

            <!-- FOOTER -->        
        <jsp:include page="client-footer.jsp"/>
        <!-- /FOOTER -->   


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
