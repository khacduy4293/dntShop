<%@page import="entity.Customers"%>
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
            Customers cus = (Customers) session.getAttribute("login_account");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>

        <!-- /HEADER -->

        <!-- NAVIGATION -->
        <jsp:include  page="client-navigation.jsp"></jsp:include>
        <!-- /NAVIGATION -->

        <!-- SECTION -->

        <!-- /SECTION -->
        <!--================End Categories Banner Area =================-->

        <!--================Shopping Cart Area =================-->
        <div id="breadcrumb" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="breadcrumb-header">Checkout</h3>
                        <ul class="breadcrumb-tree">
                            <li><a href="#">Home</a></li>
                            <li class="active">Checkout</li>
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
                    <form action="PlaceOrderServlet" method="post">
                        <div class="col-md-7">
                            <!-- Billing Details -->
                            <div class="billing-details">

                                <div class="section-title">
                                    <h3 class="title">Billing address</h3>
                                </div>
                                <div class="form-group">
                                    <input class="input" type="text" name="first-name" placeholder="First Name" value="<%= cus.getFirstName()%>">
                                </div>
                                <div class="form-group">
                                    <input class="input" type="text" name="last-name" placeholder="Last Name" value="<%= cus.getLastName()%>">
                                </div>
                                <div class="form-group">
                                    <input class="input" type="email" name="email" placeholder="Email" value="<%= cus.getEmail()%>" disabled="true">
                                </div>
                                <div class="form-group">
                                    <input class="input" type="text" name="address" placeholder="Address" value="<%= cus.getAddress()%>">
                                </div>
                                <div class="form-group">
                                    <input class="input" type="tel" name="tel" placeholder="Telephone" value="<%= cus.getPhone()%>">
                                </div>
                            </div>
                            <!-- /Billing Details -->


                            <!-- Order notes -->
                            <div class="order-notes">
                                <textarea class="input" name="shipnote" placeholder="Order Notes"></textarea>
                            </div>
                            <!-- /Order notes -->
                        </div>

                        <!-- Order Details -->
                        <div class="col-md-5 order-details">
                            <div class="section-title text-center">
                                <h3 class="title">Your Order</h3>
                            </div>
                            <div class="order-summary">
                                <div class="order-col">
                                    <div><strong>PRODUCT</strong></div>
                                    <div><strong>TOTAL</strong></div>
                                </div>
                                <div class="order-products">
                                    <% for (Map.Entry<String, Items> list : cart.getCartItems().entrySet()) {%>
                                    <div class="order-col">
                                        <div><%=list.getValue().getQuantity()%>x <%=list.getValue().getProduct().getProductName()%></div>
                                        <div>$<%=list.getValue().getProduct().getPrice()*(100-list.getValue().getProduct().getDiscountProduct())/100 * list.getValue().getQuantity()%></div>
                                    </div>
                                    <%
                                        }
                                    %>
                                </div>
                                <div class="order-col">
                                    <div>Shiping</div>
                                    <div><strong>FREE</strong></div>
                                </div>
                                <div class="order-col">
                                    <div><strong>TOTAL</strong></div>
                                    <div><strong class="order-total">$<%=cart.totalCart()%></strong></div>
                                </div>
                            </div>
                            <div class="payment-method">
                                <div class="input-radio">
                                    <input type="radio" name="payment"  id="payment-1">
                                    <label for="payment-1">
                                        <span></span>
                                        Bank Transfer
                                    </label>
                                    <div class="caption">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <div class="input-radio">
                                    <input type="radio" name="payment" id="payment-2">
                                    <label for="payment-2">
                                        <span></span>
                                        Credit Card
                                    </label>
                                    <div class="caption">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <div class="input-radio">
                                    <input type="radio" name="payment" value="Cash" id="payment-3" checked="true">
                                    <label for="payment-3">
                                        <span></span>
                                        Cash
                                    </label>
                                    <div class="caption">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                            </div>
                                <input type="submit" class="primary-btn order-submit" value="Place order">
                        </div>
                        <!-- /Order Details -->
                    </form>
                </div>

                <!-- /row -->
            </div>
            <!-- /container -->
        </div>

        <!-- /SECTION -->


        <!-- FOOTER -->

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
