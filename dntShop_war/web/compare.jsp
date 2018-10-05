<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>DNTShop - Shopping Cart</title>
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
        <jsp:include  page="client-navigation.jsp"></jsp:include>
            <!-- /NAVIGATION -->

            <!-- BREADCRUMB -->
            <div id="breadcrumb" class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="breadcrumb-header">Shopping cart</h3>                       
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /BREADCRUMB -->

            <!-- SECTION -->
            <section class="product_compare_area">
            <div class="container">
                <div class="compare_table">
                    <div class="table-responsive-md">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col"></th>
                                    <th scope="col">Samsunga galaxy l7</th>
                                    <th scope="col">xiaomi redmi note 4</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row"><span>Summary</span></th>
                                    <td>
                                        <img src="img/product/compare/compare-1.png" alt="">
                                        <h3><span>Price</span> $250.00</h3>
                                        <ul>
                                            <li class="p_icon"><a href="#"><i class="icon_piechart"></i></a></li>
                                            <li><a class="add_cart_btn" href="#">Add To Cart</a></li>
                                            <li class="p_icon"><a href="#"><i class="icon_heart_alt"></i></a></li>
                                        </ul>
                                    </td>
                                    <td>
                                        <img src="img/product/compare/compare-2.png" alt="">
                                        <h3><span>Price</span> $200.00</h3>
                                        <ul>
                                            <li class="p_icon"><a href="#"><i class="icon_piechart"></i></a></li>
                                            <li><a class="add_cart_btn" href="#">Add To Cart</a></li>
                                            <li class="p_icon"><a href="#"><i class="icon_heart_alt"></i></a></li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>Network</span></th>
                                    <td>
                                        <h6>GSM / HSPA / LTE</h6>
                                    </td>
                                    <td><h6>GSM / HSPA / LTE</h6></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>Launch</span></th>
                                    <td><h6>2016, August</h6></td>
                                    <td><h6>2016, August</h6></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>Body</span></th>
                                    <td><h6>151.7 x 75 x 8 mm</h6></td>
                                    <td><h6>151.7 x 75 x 8 mm</h6></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>Display</span></th>
                                    <td><h6>PLS TFT Capacitive Touchscreen</h6></td>
                                    <td><h6>PLS TFT Capacitive Touchscreen</h6></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>Platform</span></th>
                                    <td><h6>Android OS</h6></td>
                                    <td><h6>Android OS</h6></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>Memory</span></th>
                                    <td><h6>MicroSD,Up to 256 GB</h6></td>
                                    <td><h6>MicroSD,Up to 256 GB</h6></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>Camera</span></th>
                                    <td><h6>13 MP, f/1.9 28, Autofocus</h6></td>
                                    <td><h6>13 MP, f/1.9 28, Autofocus</h6></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <a class="add_cart_btn continue" href="#">continue shopping</a>
                </div>
            </div>
        </section>
        <!-- /SECTION -->


        <!-- Login Modal -->
        <jsp:include page="loginForm.jsp"/>
        <!-- /Login Modal -->

        <!-- FOOTER -->
        <jsp:include  page="client-footer.jsp"></jsp:include>
        <!-- /FOOTER -->

        
    </body>
</html>
