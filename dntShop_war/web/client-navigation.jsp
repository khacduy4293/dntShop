<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.Categories"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            List<Categories> cateList = (List<Categories>) session.getAttribute("categoriesList");
            
        %>
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
                        <c:forEach items="<%= (List<Categories>) session.getAttribute("categoriesList") %>" var="c">
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
    </body>
</html>
