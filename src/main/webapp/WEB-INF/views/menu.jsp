<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- BEGIN HEADER -->
<div role="navigation" class="navbar header no-margin">
    <div class="container">
        <div class="navbar-header">
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <a href="${path2}/index" class="navbar-brand"><img
                    src="${path}/assets/img/logo_red.png" alt="author by zhanglingsi"></a><!-- LOGO -->
        </div>
        <!-- BEGIN CART -->
        <div class="cart-block">
            <div class="cart-info">
                <a href="${path2}/car-list" class="cart-info-count">${carNum!=null?carNum:0} 项</a>
                <a href="${path2}/car-list" class="cart-info-value">￥1260</a>
            </div>
            <i class="fa fa-shopping-cart"></i>
            <!-- BEGIN CART CONTENT -->
            <div class="cart-content-wrapper">
                <div class="cart-content">
                    <ul class="scroller" style="height: 250px;">
                        <li>
                            <a href="item.html"><img src="${path}/assets/temp/cart-img.jpg" alt="劳力士手表"
                                                     width="37" height="34"></a>
                            <span class="cart-content-count">x 1</span>
                            <strong><a href="item.html">劳力士手表</a></strong>
                            <em>$1230</em>
                            <a href="javascript:void(0);" class="del-goods"><i class="fa fa-times"></i></a>
                        </li>
                        <li>
                            <a href="item.html"><img src="${path}/assets/temp/cart-img.jpg" alt="劳力士手表"
                                                     width="37" height="34"></a>
                            <span class="cart-content-count">x 1</span>
                            <strong><a href="item.html">劳力士手表</a></strong>
                            <em>$1230</em>
                            <a href="javascript:void(0);" class="del-goods"><i class="fa fa-times"></i></a>
                        </li>
                    </ul>
                    <div class="text-right">
                        <a href="${path2}/car-list" class="btn btn-default">购物车</a>
                        <a href="${path2}/order" class="btn btn-primary">结算</a>
                    </div>
                </div>
            </div>
            <!-- END CART CONTENT -->
        </div>
        <!-- END CART -->
        <!-- BEGIN NAVIGATION -->
        <div class="collapse navbar-collapse mega-menu">
            <ul class="nav navbar-nav" id="menuItem">
                <%--<li class="dropdown">--%>
                    <%--<a class="dropdown-toggle" data-toggle="dropdown" data-delay="0" data-close-others="false"--%>
                       <%--data-target="#" href="#">--%>
                        <%--页面--%>
                        <%--<i class="fa fa-angle-down"></i>--%>
                    <%--</a>--%>
                    <%--<!-- BEGIN DROPDOWN MENU -->--%>
                    <%--<ul class="dropdown-menu">--%>
                        <%--<li><a href="index-light-footer.html">Light Footer</a></li>--%>
                        <%--<li><a href="product-list.html">Product List</a></li>--%>
                        <%--<li><a href="search-result.html">Search Result</a></li>--%>
                        <%--<li><a href="item.html">Product Page</a></li>--%>
                        <%--<li><a href="shopping-cart-null.html">Shopping Cart (Null Cart)</a></li>--%>
                        <%--<li><a href="shopping-cart.html">Shopping Cart</a></li>--%>
                        <%--<li><a href="checkout.html">Checkout</a></li>--%>
                        <%--<li><a href="reg-page.html">Registration Page</a></li>--%>
                        <%--<li><a href="login-page.html">Login Page</a></li>--%>
                        <%--<li><a href="forgotton-password.html">Forget Password</a></li>--%>
                        <%--<li><a href="about.html">About</a></li>--%>
                        <%--<li><a href="contacts.html">Contacts</a></li>--%>
                        <%--<li><a href="faq.html">FAQ</a></li>--%>
                        <%--<li><a href="privacy-policy.html">Privacy Policy</a></li>--%>
                        <%--<li><a href="terms-conditions-page.html">Terms & Conditions</a></li>--%>
                        <%--<li><a href="site-map.html">Site Map</a></li>--%>
                        <%--<li><a href="page-404.html">404</a></li>--%>
                        <%--<li><a href="page-500.html">500</a></li>--%>
                    <%--</ul>--%>
                    <%--<!-- END DROPDOWN MENU -->--%>
                <%--</li>--%>
                <%--<li class="dropdown">--%>
                    <%--<a class="dropdown-toggle" data-toggle="dropdown" data-delay="0" data-close-others="false"--%>
                       <%--data-target="#" href="#">--%>
                        <%--特色推荐--%>
                        <%--<i class="fa fa-angle-down"></i>--%>
                    <%--</a>--%>
                    <%--<!-- BEGIN DROPDOWN MENU -->--%>
                    <%--<ul class="dropdown-menu">--%>
                        <%--<li><a href="feature-typography.html">Typography</a></li>--%>
                        <%--<li><a href="feature-forms.html">Forms</a></li>--%>
                        <%--<li><a href="feature-buttons.html">Buttons</a></li>--%>
                        <%--<li><a href="feature-icons.html">Icons</a></li>--%>
                    <%--</ul>--%>
                    <%--<!-- END DROPDOWN MENU -->--%>
                <%--</li>--%>
                <%--<li><a href="">管理后台</a></li>--%>
                <!-- BEGIN TOP SEARCH -->
                <li class="menu-search">
                    <span class="sep"></span>
                    <i class="fa fa-search search-btn"></i>

                    <div class="search-box">
                        <form action="#">
                            <div class="input-group">
                                <input type="text" placeholder="搜索" class="form-control">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="submit">搜索</button>
                                    </span>
                            </div>
                        </form>
                    </div>
                </li>
                <!-- END TOP SEARCH -->
            </ul>
        </div>
        <!-- END NAVIGATION -->
    </div>
</div>
<!-- END HEADER -->
