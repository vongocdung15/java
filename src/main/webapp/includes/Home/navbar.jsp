<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
   
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-5">
                        <div class="header__top__right">
                            <div class="header__top__links">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="HomePage.jsp"><img src="public/frontend/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="HomePage.jsp">Home</a></li>
                            <li><a href="Shop.jsp">Shop</a></li>
                            <li><a href="Blog.jsp">Blog</a></li>
                            
                            <%
                            if(auth != null){
                            %>
                            	<li><a href="LogoutUser">Logout</a></li>
                            <%}else{%>
                            	<li><a href="Contact.jsp">Contact</a></li>
                            <%
                            }	
                            %>
                            
                            <li><a href="login.jsp">Admin</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="public/frontend/img/icon/search.png" alt=""></a>
                        <%
                            if(auth != null){
                            %>
                            	<a href="cart.jsp"><img src="public/frontend/img/icon/cart.png" alt=""> <span>0</span></a>
                            <%}
                        %>
        
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->