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
            <li class="header">HEADER</li>
            <!-- Optionally, you can add icons to the links -->
            <li><a href="adminDashboard.jsp"><i class="fa fa-link"></i> <span>Report</span></a></li>
            <li><a href="adminViewCustomer"><i class="fa fa-link"></i> <span>Customer Account</span></a></li>
            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Admin Account</span> <i class="fa fa-angle-left pull-right"></i></a>
                <ul class="treeview-menu">
                    <li><a href="adminViewEmployee">View</a></li>
                    <li><a href="adminAddAccount.jsp">Create</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Products</span> <i class="fa fa-angle-left pull-right"></i></a>
                <ul class="treeview-menu">
                    <li><a href="adminViewProduct">View</a></li>
                    <li><a href="adminAddProduct">Create</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Categories</span> <i class="fa fa-angle-left pull-right"></i></a>
                <ul class="treeview-menu">
                    <li><a href="adminViewCategories">View</a></li>
                    <li><a href="adminAddCategory.jsp">Create</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Brands</span> <i class="fa fa-angle-left pull-right"></i></a>
                <ul class="treeview-menu">
                    <li><a href="adminViewBrand">View</a></li>
                    <li><a href="adminAddBrand.jsp">Create</a></li>
                </ul>
            </li>
        </ul><!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>