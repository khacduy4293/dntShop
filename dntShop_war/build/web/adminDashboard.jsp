<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <jsp:include page="admin-main-layout.jsp"></jsp:include>
            <title>Admin | Dashboard</title>

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
        <%
            session.setAttribute("currentAdminPage", "dashboard");
        %>
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
                            Dashboard
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </section>

                    <!-- Main content -->
                    <section class="content">
                        <!-- Small boxes (Stat box) -->
                        <div class="row">
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-aqua">
                                    <div class="inner">
                                        <h3>${totalProducts}</h3>
                                    <p>Product (in ${totalCategories} Categories)</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>                                  
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-yellow">
                                <div class="inner">
                                    <h3>${totalUserRegis}</h3>
                                    <p>User Registrations</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-person-add"></i>
                                </div>                                    
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-green">
                                <div class="inner">
                                    <h3>${totalOrders}</h3>
                                    <p>Total Orders</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-shopping-cart"></i>
                                </div>

                            </div>
                        </div><!-- ./col -->                           
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-red">
                                <div class="inner">
                                    <h3>$<fmt:formatNumber type="number" minFractionDigits="0" value="${totalProfit}"/></h3>
                                    <p>Total Profit (this month's)</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-pie-graph"></i>
                                </div>                                   
                            </div>
                        </div><!-- ./col -->
                    </div><!-- /.row -->

                    <!-- Main row -->
                    <div class="row">
                        <!-- Left col -->
                        <div class="col-md-8">                           
                            <!-- TABLE: LATEST ORDERS -->
                            <div class="box box-info">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Latest Orders</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <div class="table-responsive">
                                        <table class="table no-margin">
                                            <thead>
                                                <tr>
                                                    <th>Order ID</th>
                                                    <th>Customer</th>
                                                    <th>Status</th>
                                                    <th>Total Order</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="o" items="${orderList}" begin="0" end="6">
                                                    <tr>
                                                        <td><a href="adminViewOrderDetails?orderid=${o.orderID}">${o.orderID}</a></td>
                                                        <td>${o.customerID.firstName} ${o.customerID.lastName}</td>
                                                        <c:if test="${o.processStatus eq 'Completed'}">
                                                            <td><span class="label label-success">${o.processStatus}</span></td>
                                                            </c:if>
                                                            <c:if test="${o.processStatus eq 'Shipping'}">
                                                            <td><span class="label label-info">${o.processStatus}</span></td>
                                                            </c:if>
                                                            <c:if test="${o.processStatus eq 'Pending'}">
                                                            <td><span class="label label-warning">${o.processStatus}</span></td>
                                                            </c:if>
                                                            <c:if test="${o.processStatus eq 'Canceled'}">
                                                            <td><span class="label label-danger">${o.processStatus}</span></td>
                                                            </c:if>
                                                            <td>$<fmt:formatNumber type="number" minFractionDigits="0" value="${o.total}"/></td>
                                                </tr>   
                                            </c:forEach>                                                                                        
                                            </tbody>
                                        </table>
                                    </div><!-- /.table-responsive -->
                                </div><!-- /.box-body -->
                                <div class="box-footer clearfix">
                                    <a href="adminViewSale" class="btn btn-sm btn-default btn-flat pull-right">View All Orders</a>
                                </div><!-- /.box-footer -->
                            </div><!-- /.box -->
                        </div><!-- /.col -->

                        <div class="col-md-4">
                            <div class="info-box bg-red">
                                <span class="info-box-icon"><i class="fa fa-trash-o"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Canceled Orders</span>
                                    <span class="info-box-number">114,381</span>
                                    <div class="progress">
                                        <div class="progress-bar" ></div>
                                    </div>
                                    <span class="progress-description">
                                        70% Increase in 30 Days
                                    </span>
                                </div><!-- /.info-box-content -->
                            </div><!-- /.info-box -->
                            <!-- Info Boxes Style 2 -->
                            <div class="info-box bg-yellow">
                                <span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Inventory</span>
                                    <span class="info-box-number">5,200</span>
                                    <div class="progress">
                                        <div class="progress-bar" style="width: 50%"></div>
                                    </div>
                                    <span class="progress-description">
                                        50% Increase in 30 Days
                                    </span>
                                </div><!-- /.info-box-content -->
                            </div><!-- /.info-box -->
                            <div class="info-box bg-green">
                                <span class="info-box-icon"><i class="ion ion-ios-heart-outline"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Mentions</span>
                                    <span class="info-box-number">92,050</span>
                                    <div class="progress">
                                        <div class="progress-bar" style="width: 20%"></div>
                                    </div>
                                    <span class="progress-description">
                                        20% Increase in 30 Days
                                    </span>
                                </div><!-- /.info-box-content -->
                            </div><!-- /.info-box -->
                            
                            <div class="info-box bg-aqua">
                                <span class="info-box-icon"><i class="ion-ios-chatbubble-outline"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Direct Messages</span>
                                    <span class="info-box-number">163,921</span>
                                    <div class="progress">
                                        <div class="progress-bar" style="width: 40%"></div>
                                    </div>
                                    <span class="progress-description">
                                        40% Increase in 30 Days
                                    </span>
                                </div><!-- /.info-box-content -->
                            </div><!-- /.info-box -->                                                   
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->

            <!-- Main Footer -->
            <jsp:include page="admin-main-footer.jsp"></jsp:include>

        </div><!-- ./wrapper -->

        <!-- REQUIRED JS SCRIPTS -->

    </body>
</html>
