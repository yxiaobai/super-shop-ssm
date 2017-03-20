<%--
  Created by IntelliJ IDEA.
  User: zhangls
  Date: 2016/11/2 0002
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row product-list">
    <!-- PRODUCT ITEM START -->
    <c:forEach items="${page.list}" var="s">
    <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="product-item">
            <div class="pi-img-wrapper">
                <img src="${s.proPicUri}" class="img-responsive" alt="${s.proName}">

                <div>
                    <a href="${s.proPicUri}" class="btn btn-default fancybox-button">放大</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">查看</a>
                </div>
            </div>
            <h3><a href="${pageContext.request.contextPath}/proDet?pId=${s.id}">${s.proName}</a></h3>

            <div class="pi-price">${s.proNowPrice}</div>
            <a href="${pageContext.request.contextPath}/addCar?proId=${s.id}&proPrice=${s.proNowPrice}" class="btn btn-default add2cart">${s.proDesc}</a>
        </div>
    </div>
    </c:forEach>
    <!-- PRODUCT ITEM END -->
</div>
<!-- END PRODUCT LIST -->
<%@include file="page.jsp"%>
</div>
<!-- END CONTENT -->
