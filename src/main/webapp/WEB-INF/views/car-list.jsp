<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<%@include file="header.jsp" %>
<link href="assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
<body>
<%@include file="top-bar.jsp" %>

<%@include file="menu.jsp" %>
<div class="main">
    <div class="container">
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <!-- BEGIN CONTENT -->
            <div class="col-md-12 col-sm-12" id="car-list">

            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN SIMILAR PRODUCTS -->
        <div class="row margin-bottom-40">
            <div class="col-md-12 col-sm-12 bxslider-wrapper bxslider-wrapper-similar-products">
                <h2>更多的流行商品</h2>
                <ul class="bxslider bxslider-similar-products" data-slides-phone="1" data-slides-tablet="2"
                    data-slides-desktop="4" data-slide-margin="20">
                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="assets/temp/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">

                                <div>
                                    <a href="assets/temp/products/k4.jpg"
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
                                <img src="assets/temp/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">

                                <div>
                                    <a href="assets/temp/products/k1.jpg"
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
                                <img src="assets/temp/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">

                                <div>
                                    <a href="assets/temp/products/k2.jpg"
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
                                <img src="assets/temp/products/k3.jpg" class="img-responsive" alt="Berry Lace Dress">

                                <div>
                                    <a href="assets/temp/products/k3.jpg"
                                       class="btn btn-default fancybox-button">Zoom</a>
                                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                </div>
                            </div>
                            <h3><a href="item.html">Berry Lace Dress4</a></h3>

                            <div class="pi-price">$29.00</div>
                            <a href="#" class="btn btn-default add2cart">Add to cart</a>
                        </div>
                    </li>
                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="assets/temp/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">

                                <div>
                                    <a href="assets/temp/products/k4.jpg"
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
                                <img src="assets/temp/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">

                                <div>
                                    <a href="assets/temp/products/k1.jpg"
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
        <!-- END SIMILAR PRODUCTS -->
    </div>
</div>

<%@include file="footer.jsp" %>
<script type="text/javascript" src="${path}/assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
<script type="text/javascript" src="${path}/assets/plugins/jquery-validation/localization/messages_zh.js"></script>
<script type="text/javascript" src="${path}/assets/scripts/custom/form-validation-order.js"></script>
<script type="text/javascript" charset="utf-8">
    $(function(){

        if(${sessionScope.user!=null}){
            initLoginCarList();//已登录
        }else{
            initLogoutCarList();//游客
        }

    });

    initLogoutCarList = function(){
        $.post("${pageContext.request.contextPath}/shop/cookieCar",{},function(data,status){
            if(status=='success'){
                $("#car-list").html(data);
                App.initTouchspin();
            }
        });
    }


    initLoginCarList = function(){

        $.post("/super-shop/shop/carList",{},function(data,status){
            if(status=='success'){
                $("#car-list").html(data);
                App.initTouchspin();

                updCarItem = function(carId){
                    var proNum = $("#product-quantity_"+carId).val();

                    if(proNum != 0){
                        $.post("${pageContext.request.contextPath}/shop/updCarItem",{"carId":carId,"proNum":proNum},function(data,status){
                            if(status=='success'){
                                $("#car-list").html(data);
                                App.initTouchspin();
                                App.initConShopping();
                                App.initConfirmOrder();
                            }
                        });
                    }else{
                        delCarItem(carId);
                        App.initConShopping();
                        App.initConfirmOrder();
                    }

                };

                delCarItem = function(carId){
                    $.post("${pageContext.request.contextPath}/shop/delCarItem",{"carId":carId},function(data,status){
                        if(status=='success'){
                            $("#car-list").html(data);
                            App.initTouchspin();
                            App.initConShopping();
                            App.initConfirmOrder();
                        }
                    });
                };
                App.initConShopping();
                App.initConfirmOrder();
            }
        });
    }
</script>
</body>
</html>
