<%@page import="entity.ProductsDetails"%>
<%@page import="entity.Products"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="entity.Items"%>
<%@page import="entity.ComparedProduct"%>
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
            ComparedProduct compare = (ComparedProduct) session.getAttribute("compare");
            if (compare == null) {
                compare = new ComparedProduct();
                session.setAttribute("compare", compare);
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
                            <h3 class="breadcrumb-header">Compare Product</h3>                       
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
                                <% for(Products p : compare.getComparedProducts()){%>
                                    <th scope="col"><%= p.getProductName()%></th>
                                    <%}%>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row"><span>Summary</span></th>
                                    <% for(Products p : compare.getComparedProducts()){%>
                                    <td>
                                        
                                        <img class="product-img" src="images/Products/<%= p.getImage1()%>" alt="" >
                                        <h3><span>Price</span> $<%= p.getPrice()%></h3>
                                        <ul>
                                            <li class="p_icon"><a href="#"><i class="icon_piechart"></i></a></li>
                                            <li><a class="add_cart_btn" href="#">Add To Cart</a></li>
                                            <li class="p_icon"><a href="#"><i class="icon_heart_alt"></i></a></li>
                                        </ul>
                                    </td>
                                    <%}%>
                                </tr>
                                <tr>
                                    <th scope="row"><span>CPU</span></th>
                                    <% for(ProductsDetails pd : compare.getDetailsProducts()){%>
                                    <td>
                                        <h6><%= pd.getCpu()%></h6>
                                    </td>
                                     <%}%>
                                </tr>                              
                                <tr>
                                    <th scope="row"><span>Display</span></th>
                                    <% for(ProductsDetails pd : compare.getDetailsProducts()){%>
                                    <td><h6><%= pd.getDisplay()%></h6></td>
                                    <%}%>
                                </tr>
                                <tr>
                                    <th scope="row"><span>Camera</span></th>
                                    <% for(ProductsDetails pd : compare.getDetailsProducts()){%>
                                    <td><h6><%= pd.getCamera()%></h6></td>
                                    <%}%>
                                </tr>
                                <tr>
                                    <th scope="row"><span>Memory</span></th>
                                   <% for(ProductsDetails pd : compare.getDetailsProducts()){%>
                                    <td><h6><%= pd.getMemory() %></h6></td>
                                    <%}%>
                                </tr>
                                <tr>
                                    <th scope="row"><span>HDD</span></th>
                                   <% for(ProductsDetails pd : compare.getDetailsProducts()){%>
                                    <td><h6><%= pd.getHdd()%></h6></td>
                                    <%}%>
                                </tr>
                                <tr>
                                    <th scope="row"><span>VGA</span></th>
                                   <% for(ProductsDetails pd : compare.getDetailsProducts()){%>
                                    <td><h6><%= pd.getVga()%></h6></td>
                                    <%}%>
                                </tr>
                                <tr>
                                    <th scope="row"><span>Battery</span></th>
                                   <% for(ProductsDetails pd : compare.getDetailsProducts()){%>
                                    <td><h6><%= pd.getBattery()%></h6></td>
                                    <%}%>
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
