<%@page import="entity.Customers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="entity.Items"%>
<%@page import="entity.Cart"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="client-layout.jsp"/> 
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="Client/css/elegant-icon/style.css">
        <link rel="stylesheet" href="Client/css/line-icon/css/simple-line-icons.css">
        <link type="text/css" rel="stylesheet" href="Client/css/responsive.css"/>
        <title>DNTShop - Shopping Cart</title>
    </head>
    <body>
        <!-- HEADER -->
        <jsp:include  page="client-header.jsp"></jsp:include>

            <!-- /HEADER -->

            <!-- NAVIGATION -->
        <jsp:include  page="client-navigation.jsp"></jsp:include>
            <!-- /NAVIGATION -->

            <!-- BREADCRUMB -->
            <!-- /BREADCRUMB -->

            <!-- SECTION -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="breadcrumb-header" style="text-align: center;">Your Wishlist</h3>                       
                        </div>
                    </div>
                    <div class="row">
                        <div class="colorlib-shop p_100">
                            <div class="container">
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
                                                <span>Remove</span>
                                            </div>
                                        </div>
                                    <c:forEach items="${wishlist}" var="w">
                                        <div class="product-cart">
                                            <div class="one-forth">
                                                <img class="product-img" src="images/Products/${w.productID.getImage1()}">
                                                </img>
                                                <div class="display-tc">
                                                    <h3>${w.productID.getProductName()}</h3>
                                                </div>
                                            </div>
                                            <div class="one-eight text-center">
                                                <div class="display-tc">
                                                    <span class="price">$${w.productID.getPrice()}</span>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="one-eight text-center">
                                            <div class="display-tc">
                                                <a href="#" class="closed"></a>
                                            </div>
                                        </div>

                                    </c:forEach>
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
        function edit_posale(productid)
        {
            var qt1 = $('#qt' + productid).val();
            if (qt1 > 9) {
                swal("Quantity isn't more than 9");
            } else
            {
                $.ajax({
                    url: "EditCartServlet?productID=" + productid + "&quantity=" + qt1,
                    type: "POST",
                    success: function()
                    {
                        location.reload();
                    },
                    error: function(jqXHR, textStatus, errorThrown)
                    {
                        alert(orderid + "\n" + qt1 + "\n" + productid);
                    }
                });

            }

        }

    </script>
</body>
</html>
