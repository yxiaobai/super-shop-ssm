<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="header.jsp" %>
<body>
<%@include file="top-bar.jsp" %>

<%@include file="menu.jsp" %>

<%@include file="slider.jsp" %>

<div class="main">
    <div class="container">
        <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
        <div class="row margin-bottom-40">
            <!-- BEGIN SALE PRODUCT -->
            <div class="col-md-12 sale-product" id="hot-list">

            </div>
            <!-- END SALE PRODUCT -->
        </div>
        <!-- END SALE PRODUCT & NEW ARRIVALS -->

        <!-- BEGIN SIDEBAR & CONTENT -->
        <div id="sd" class="row margin-bottom-40">
            <!-- BEGIN SIDEBAR -->
            <div class="sidebar col-md-3 col-sm-4">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <li class="list-group-item clearfix">
                        <a href="product-list.html">
                            <i class="fa fa-angle-right"></i>
                        Ladies
                        </a>
                    </li>

                    <li class="list-group-item clearfix dropdown">
                        <a href="javascript:void(0);">
                            <i class="fa fa-angle-right"></i>
                            Mens
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="list-group-item dropdown clearfix">
                                <a href="javascript:void(0);">
                                    <i class="fa fa-circle"></i>
                                    Shoes <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="list-group-item dropdown clearfix">
                                        <a href="javascript:void(0);"><i class="fa fa-circle"></i> Classic <i
                                                class="fa fa-angle-down"></i></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="product-list.html"><i class="fa fa-circle"></i> Classic 1</a>
                                            </li>
                                            <li><a href="product-list.html"><i class="fa fa-circle"></i> Classic 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="list-group-item dropdown clearfix">
                                        <a href="javascript:void(0);">
                                            <i class="fa fa-circle"></i>
                                            Sport
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="${path2}/item?PRO_ID=1005">
                                                    <i class="fa fa-circle"></i>
                                                    Sport 1
                                                </a>
                                            </li>
                                            <li><a href="product-list.html"><i class="fa fa-circle"></i> Sport 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="product-list.html"><i class="fa fa-circle"></i> Trainers</a></li>
                            <li><a href="product-list.html"><i class="fa fa-circle"></i> Jeans</a></li>
                            <li><a href="product-list.html"><i class="fa fa-circle"></i> Chinos</a></li>
                            <li><a href="product-list.html"><i class="fa fa-circle"></i> T-Shirts</a></li>
                        </ul>
                    </li>
                    <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i>
                        Kids</a></li>
                    <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i>
                        Accessories</a></li>
                    <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i>
                        Sports</a></li>
                    <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i>
                        Brands</a></li>
                    <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i>
                        Electronics</a></li>
                    <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i>
                        Home & Garden</a></li>
                    <li class="list-group-item clearfix">
                        <a href="product-list.html">
                            <i class="fa fa-angle-right"></i>
                        Custom Link
                        </a>
                    </li>
                </ul>
            </div>
            <!-- END SIDEBAR -->

            <!-- BEGIN CONTENT -->
            <div class="col-md-9 col-sm-8">
                <h2>Three items</h2>

                <div class="bxslider-wrapper">
                    <ul class="bxslider" data-slides-phone="1" data-slides-tablet="2" data-slides-desktop="3"
                        data-slide-margin="15">
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k1.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k1.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>

                                <div class="sticker sticker-new"></div>
                            </div>
                        </li>
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k2.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k2.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress2</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </li>
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k3.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k3.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress3</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </li>
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k4.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k4.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress4</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>

                                <div class="sticker sticker-sale"></div>
                            </div>
                        </li>
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k1.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k1.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress5</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </li>
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k2.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k2.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress6</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN TWO PRODUCTS & PROMO -->
        <div class="row margin-bottom-35 ">
            <!-- BEGIN TWO PRODUCTS -->
            <div class="col-md-6 two-items-bottom-items">
                <h2>Two items</h2>

                <div class="bxslider-wrapper">
                    <ul class="bxslider" data-slides-phone="1" data-slides-tablet="2" data-slides-desktop="2"
                        data-slide-margin="15">
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k4.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k4.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </li>
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k2.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k2.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </li>
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k3.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/shop/assets/temp/products/k3.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </li>
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k1.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k1.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </li>
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k4.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k4.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </li>
                        <li>
                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${path}/assets/temp/products/k3.jpg" class="img-responsive"
                                         alt="Berry Lace Dress">

                                    <div>
                                        <a href="${path}/assets/temp/products/k3.jpg"
                                           class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="item.html">Berry Lace Dress</a></h3>

                                <div class="pi-price">$29.00</div>
                                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- END TWO PRODUCTS -->
            <!-- BEGIN PROMO -->
            <div class="col-md-6">
                <div class="content-slider">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="${path}/assets/temp/index-sliders/slide1.jpg" class="img-responsive"
                                     alt="Berry Lace Dress">
                            </div>
                            <div class="item">
                                <img src="${path}/assets/temp/index-sliders/slide2.jpg" class="img-responsive"
                                     alt="Berry Lace Dress">
                            </div>
                            <div class="item">
                                <img src="${path}/assets/temp/index-sliders/slide3.jpg" class="img-responsive"
                                     alt="Berry Lace Dress">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END PROMO -->
        </div>
        <!-- END TWO PRODUCTS & PROMO -->
    </div>
</div>

<%@include file="footer.jsp" %>
</body>
</html>
