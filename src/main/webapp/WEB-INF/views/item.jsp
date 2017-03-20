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
        <ul class="breadcrumb">
            <li><a href="${path2}/index">主页</a></li>
            <li><a href="${path2}/index">专区</a></li>
            <li class="active">女士专区</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <%@include file="sidebar.jsp" %>
            <!-- BEGIN CONTENT -->
            <div class="col-md-9 col-sm-7">
                <div class="product-page">
                    <div class="row">
                        <div class="col-md-6 col-sm-6">

                            <div class="product-main-image">
                                <img src="${pro.proPicUri}" id="imgMain" alt="${pro.proName}" class="img-responsive"
                                     data-BigImgSrc="${pro.proPicUri}">
                            </div>

                            <div class="product-other-images">
                                <c:forEach items="${pro.picLs}" var="s" varStatus="status">
                                    <a href="#" <c:if test="${status.index==0}">class="active"</c:if>><img
                                            onclick="updImg('${s.picUri}')" alt="${pro.proName}" src="${s.picUri}"></a>
                                </c:forEach>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6">
                            <h1>${pro.proName}</h1>

                            <div class="price-availability-block clearfix">
                                <div class="price">
                                    <strong><span>$</span>${pro.proNowPrice}</strong>
                                    <em>$<span>${pro.proRealPrice}</span></em>
                                </div>
                                <div class="availability">
                                    库存: <strong>${pro.isStock}</strong>
                                </div>
                            </div>
                            <div class="description">
                                <p>${pro.proDesc}</p>
                            </div>
                            <div class="product-page-options">
                                <div class="pull-left">
                                    <label class="control-label">规格:</label>
                                    <c:set var="proSize" value="${pro.proSize}"></c:set>
                                    <select class="form-control input-sm" id="proSize">
                                        <c:forEach items="${fn:split(proSize, ',')}" var="st" varStatus="s">
                                            <option>${st}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="pull-left">
                                    <label class="control-label">颜色:</label>
                                    <c:set var="proColor" value="${pro.proColor}"></c:set>
                                    <select class="form-control input-sm" id="proColor">
                                        <c:forEach items="${fn:split(proColor, ',')}" var="sts" varStatus="st">
                                            <option>${sts}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="product-page-cart">
                                <div class="product-quantity">
                                    <input id="product-quantity" type="text" value="1" readonly class="form-control input-sm">
                                </div>
                                <button class="btn btn-primary" type="submit" id="addCar">加入购物车</button>
                            </div>
                            <div class="review">
                                <input type="range" value="4" step="0.25" id="backing4">

                                <div class="rateit" data-rateit-backingfld="#backing4" data-rateit-resetable="false"
                                     data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">
                                </div>
                                <a href="#">${fn:length(pro.commentLs)} 评论</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                                <c:if test="${sessionScope.user!=null}">
                                    <a href="#">写评论</a>
                                </c:if>
                            </div>
                            <ul class="social-icons">
                                <li><a class="facebook" data-original-title="facebook" href="#"></a></li>
                                <li><a class="twitter" data-original-title="twitter" href="#"></a></li>
                                <li><a class="googleplus" data-original-title="googleplus" href="#"></a></li>
                                <li><a class="evernote" data-original-title="evernote" href="#"></a></li>
                                <li><a class="tumblr" data-original-title="tumblr" href="#"></a></li>
                            </ul>
                        </div>

                        <div class="product-page-content">
                            <ul id="myTab" class="nav nav-tabs">
                                <li class="active"><a href="#Description" data-toggle="tab">产品详情</a></li>
                                <li><a href="#Information" data-toggle="tab">产品属性</a></li>
                                <li><a href="#Reviews" data-toggle="tab">评论(${fn:length(pro.commentLs)})</a></li>
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active" id="Description">
                                    <p>${pro.proDetailDo.detDesc}</p>
                                </div>
                                <div class="tab-pane fade" id="Information">
                                    <table class="datasheet">
                                        <tr>
                                            <th colspan="2">产品详情</th>
                                        </tr>
                                        <tr>
                                            <td class="datasheet-features-type">长</td>
                                            <td>${pro.proDetailDo.detLength}</td>
                                        </tr>
                                        <tr>
                                            <td class="datasheet-features-type">宽</td>
                                            <td>${pro.proDetailDo.detWidth}</td>
                                        </tr>
                                        <tr>
                                            <td class="datasheet-features-type">高</td>
                                            <td>${pro.proDetailDo.detHeight}</td>
                                        </tr>
                                        <tr>
                                            <td class="datasheet-features-type">质地</td>
                                            <td>${pro.proDetailDo.detMate}</td>
                                        </tr>
                                        <tr>
                                            <td class="datasheet-features-type">产地</td>
                                            <td>${pro.proDetailDo.detAddr}</td>
                                        </tr>
                                        <tr>
                                            <td class="datasheet-features-type">生产日期</td>
                                            <td>${pro.proDetailDo.detDate}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="Reviews">
                                    <!--<p>There are no reviews for this product.</p>-->
                                    <c:forEach items="${pro.commentLs}" varStatus="st" var="s">
                                        <div class="review-item clearfix">
                                            <div class="review-item-submitted">
                                                <strong>${s.userName}</strong>
                                                <em>${s.createDate}</em>

                                                <div class="rateit" data-rateit-value="${s.proScore}"
                                                     data-rateit-ispreset="true"
                                                     data-rateit-readonly="true"></div>
                                            </div>
                                            <div class="review-item-content">
                                                <p>${s.comDesc}</p>
                                            </div>
                                        </div>
                                    </c:forEach>

                                    <!-- BEGIN FORM-->
                                    <form action="#" class="reviews-form" role="form">
                                        <h2>给宝贝写评价</h2>

                                        <%--<div class="form-group">--%>
                                        <%--<label for="name">Name <span class="require">*</span></label>--%>
                                        <%--<input type="text" class="form-control" id="name">--%>
                                        <%--</div>--%>
                                        <div class="form-group">
                                            <label for="email">评价标题</label>
                                            <input type="text" class="form-control" id="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="review">给宝贝评价<span class="require">*</span></label>
                                            <textarea class="form-control" rows="8" id="review"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="email">给宝贝评分</label>
                                            <input type="range" value="4" step="0.25" id="backing5">

                                            <div class="rateit" data-rateit-backingfld="#backing5"
                                                 data-rateit-resetable="false" data-rateit-ispreset="true"
                                                 data-rateit-min="0" data-rateit-max="5">
                                            </div>
                                        </div>
                                        <div class="padding-top-20">
                                            <button type="submit" class="btn btn-primary">提 交</button>
                                        </div>
                                    </form>
                                    <!-- END FORM-->
                                </div>
                            </div>
                        </div>

                        <div class="sticker sticker-sale"></div>

                    </div>
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN SIMILAR PRODUCTS -->
        <div class="row margin-bottom-40">
            <div class="col-md-12 col-sm-12 bxslider-wrapper bxslider-wrapper-similar-products">
                <h2>Most popular products</h2>
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
<script src="/super-shop/shop/assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
<script type="text/javascript">
    updImg = function (imgUri) {
        $("#imgMain").attr("src", imgUri);
        $("#imgMain").attr("data-BigImgSrc", imgUri);
        App.initImageZoom();
    }

    $("#addCar").click(function () {
        var proColor = $("#proColor").val();
        var proSize = $("#proSize").val();
        var proId = ${pro.id};
        var proNum = $("#product-quantity").val();
        var proPrice = ${pro.proNowPrice};
        window.location.href = "/super-shop/shop/addCar?proId="+proId+"&proSize="+proSize+"&proColor="+proColor+"&proNum="+proNum+"&proPrice="+proPrice;
    });
</script>

</body>
</html>
