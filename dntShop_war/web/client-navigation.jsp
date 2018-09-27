<!-- NAVIGATION -->
            <nav id="navigation">
                <!-- container -->
                <div class="container">
                    <!-- responsive-nav -->
                    <div id="responsive-nav">
                        <!-- NAV -->
                        <ul class="main-nav nav navbar-nav">
                            <li><a href="index.jsp">Home </a></li>
                            <li class="active"><a href="#">All Products</a></li>
                            <li><a href="#">Hot Deals</a></li>
                            <c:forEach items="${categoriesList}" var="c">
                            <li><a href="#">${c.categoryName}</a></li>
                            </c:forEach>
                    </ul>
                    <!-- /NAV -->
                </div>
                <!-- /responsive-nav -->
            </div>
            <!-- /container -->
        </nav>
        <!-- /NAVIGATION -->