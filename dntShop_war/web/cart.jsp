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
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
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
                                        <div class="productname">
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
                                            <img class="product-img" src="images/Products/<%=list.getValue().getProduct().getImage1()%>">
                                            </img>
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
                                                <input type="text" id="quantity" name="quantity" class="form-control input-number text-center" value="<%=list.getValue().getQuantity()%>" min="1" max="100">
                                            </div>
                                        </div>
                                        <div class="one-eight text-center">
                                            <div class="display-tc">
                                                <span class="price">$<%=list.getValue().getProduct().getPrice() * list.getValue().getQuantity()%></span>
                                            </div>
                                        </div>
                                        <div class="one-eight text-center">
                                            <div class="display-tc">
                                                <a href="#" class="closed" onclick='RemoveCart("$<%=list.getValue().getProduct().getProductID()%>")'></a>
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
                                                        <p><span>Subtotal:</span> <span>$<%=cart.totalCart()%></span></p>
                                                        <p><span>Delivery:</span> <span>$0.00</span></p>
                                                        <p><span>Discount:</span> <span>$0.00</span></p>
                                                    </div>
                                                    <div class="grand-total">
                                                        <p><span><strong>Total:</strong></span> <span>$<%=cart.totalCart()%></span></p>
                                                    </div>
                                                    <div class="col-md-12" style="padding: 40px 0px;">
                                                        <input type="submit" onclick="document.getElementById('id01').style.display = 'block'" value="Check out" class="btn btn-primary">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION -->


        <!-- Login Modal -->
        <jsp:include page="loginForm.jsp"/>
        <!-- /Login Modal -->

        <!-- FOOTER -->
        <jsp:include  page="client-footer.jsp"></jsp:include>
        <!-- /FOOTER -->

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
            function RemoveCart(productid)
            {
                $.ajax({
                    url: "AddProductToCart?command=remove&productID=" + productid,
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
    </body>
</html>
