<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Map"%>
<%@page import="entity.Items"%>
<%@page import="entity.Cart"%>
<header>
    <%
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
    %>
    <!-- TOP HEADER -->
    <div id="top-header">
        <div class="container">
            <ul class="header-links pull-left">
                <li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
                <li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
                <li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
            </ul>
            <ul class="header-links pull-right">
                <li><a href="#"><i class="fa fa-dollar"></i> USD</a></li>
                <c:choose>
                    <c:when test="${empty sessionScope.login_account}">
                        <li><i class="fa fa-user-o"></i><a href="login.jsp">Login</a><a href="register.jsp">/Register</a></li>
                    </c:when>
                    <c:otherwise>
                    <li class="nav-item dropdown submenu">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-user-o"></i>${sessionScope.login_account.email} <i class="fa fa-angle-down" aria-hidden="true"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" style="color: black" href="#"><i class="fa fa-user"></i> My Account</a></li>
                                    <li class="nav-item"><a class="nav-link" style="color: black" href="#"><i class="fa fa-shopping-cart"></i>My Orders</a></li>
                                    <li class="nav-item"><a class="nav-link" style="color: black" href="Logout"><i class="fa fa-sign-out"></i>Logout</a></li>                              
                                </ul>
                            </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
    <!-- /TOP HEADER -->

    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="index.jsp" class="logo">
                            <img src="./img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form>
                            <select class="input-select">
                                <option value="0">All Categories</option>
                                <option value="1">Category 01</option>
                                <option value="1">Category 02</option>
                            </select>
                            <input class="input" placeholder="Search here">
                            <button class="search-btn">Search</button>
                        </form>
                    </div>
                </div>
                <!-- /SEARCH BAR -->

                <!-- ACCOUNT -->
                <div class="col-md-3 clearfix">
                    <div class="header-ctn">
                        <!-- Wishlist -->
                        <div>
                            <a href="#">
                                <i class="fa fa-heart-o"></i>
                                <span>Your Wishlist</span>
                                <div class="qty">2</div>
                            </a>
                        </div>
                        <!-- /Wishlist -->

                        <!-- Cart -->
                        <div class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Your Cart</span>
                                <div class="qty"><%=cart.countQty()%></div>
                            </a>
                            <div class="cart-dropdown">
                                <div class="cart-list">
                                    <% for (Map.Entry<String, Items> list : cart.getCartItems().entrySet()) {%>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="images/Products/<%=list.getValue().getProduct().getImage1()%>" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-name"><a href="#"><%=list.getValue().getProduct().getProductName()%></a></h3>
                                            <h4 class="product-price"><span class="qty"><%=list.getValue().getQuantity()%>x</span>$<%=list.getValue().getProduct().getPrice() * list.getValue().getQuantity()%></h4>
                                        </div>
                                        <button class="delete" onclick='RemoveCart("<%=list.getValue().getProduct().getProductID()%>")'><i class="fa fa-close"></i></button>
                                    </div>
                                    <%
                                        }
                                    %>
                                </div>
                                <div class="cart-summary">
                                    <small><%=cart.countQty()%> Item(s) selected</small>
                                    <h5>SUBTOTAL: $<%=cart.totalCart()%></h5>
                                </div>
                                <div class="cart-btns">
                                    <a href="cart.jsp">View Cart</a>
                                    <a href="checkout.jsp">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- /Cart -->

                        <!-- Menu Toogle -->
                        <div class="menu-toggle">
                            <a href="#">
                                <i class="fa fa-bars"></i>
                                <span>Menu</span>
                            </a>
                        </div>
                        <!-- /Menu Toogle -->
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- /MAIN HEADER -->
    <script type="text/javascript">
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
</header>