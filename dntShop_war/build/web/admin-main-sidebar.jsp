<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<%= session.getAttribute("admin_login_avatar") %>" class="img-circle"/>               
            </div>
            <div class="pull-left info">
                <p><%= session.getAttribute("admin_login_name") %></p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="${sessionScope.currentAdminPage.equals("report")?"active":""}"><a href="adminDashboard.jsp"><i class="fa fa-bar-chart"></i> <span>Report</span></a></li>
            <li class="${sessionScope.currentAdminPage.equals("customer")?"active":""}"><a href="adminViewCustomer"><i class="fa fa-users"></i> <span>Customer Account</span></a></li>
            <li class="treeview ${sessionScope.currentAdminPage.equals("admin")?"active":""}">
                <a href="#"><i class="fa fa-user-secret"></i> <span>Admin Account</span> <i class="fa fa-angle-left pull-right"></i></a>
                <ul class="treeview-menu">
                    <li class="${sessionScope.currentAdminPageChild.equals("viewAccount")?"active":""}"><a href="adminViewAccount"><i class="fa fa-circle-o"></i>View</a></li>
                    <li class="${sessionScope.currentAdminPageChild.equals("addAccount")?"active":""}"><a href="adminAddAccount.jsp"><i class="fa fa-circle-o"></i>Create</a></li>
                </ul>
            </li>
            <li class="treeview ${sessionScope.currentAdminPage.equals("product")?"active":""}">
                <a href="#"><i class="fa fa-archive"></i> <span>Products</span> <i class="fa fa-angle-left pull-right"></i></a>
                <ul class="treeview-menu">
                    <li class="${sessionScope.currentAdminPageChild.equals("viewProduct")?"active":""}"><a href="adminViewProduct"><i class="fa fa-circle-o"></i>View</a></li>
                    <li class="${sessionScope.currentAdminPageChild.equals("addProduct")?"active":""}"><a href="adminAddProduct"><i class="fa fa-circle-o"></i>Create</a></li>
                </ul>
            </li>
            <li class="treeview ${sessionScope.currentAdminPage.equals("category")?"active":""}">
                <a href="#"><i class="fa fa-list"></i> <span>Categories</span> <i class="fa fa-angle-left pull-right"></i></a>
                <ul class="treeview-menu">
                    <li class="${sessionScope.currentAdminPageChild.equals("viewCategory")?"active":""}"><a href="adminViewCategories"><i class="fa fa-circle-o"></i>View</a></li>
                    <li class="${sessionScope.currentAdminPageChild.equals("addCategory")?"active":""}"><a href="adminAddCategory.jsp"><i class="fa fa-circle-o"></i>Create</a></li>
                </ul>
            </li>
            <li class="treeview ${sessionScope.currentAdminPage.equals("brand")?"active":""}">
                <a href="#"><i class="fa fa-diamond"></i> <span>Brands</span> <i class="fa fa-angle-left pull-right"></i></a>
                <ul class="treeview-menu">
                    <li class="${sessionScope.currentAdminPageChild.equals("viewBrand")?"active":""}"><a href="adminViewBrand"><i class="fa fa-circle-o"></i>View</a></li>
                    <li class="${sessionScope.currentAdminPageChild.equals("addBrand")?"active":""}"><a href="adminAddBrand.jsp"><i class="fa fa-circle-o"></i>Create</a></li>
                </ul>
            </li>
            <li class="header">RETURN</li>
            <li><a href="index.jsp"><i class="fa fa-circle-o text-red"></i> <span>DNTShop</span></a></li>
        </ul><!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>