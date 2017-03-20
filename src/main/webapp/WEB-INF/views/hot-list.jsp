<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-11-19
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<h2>热销榜</h2>

<div class="bxslider-wrapper">
    <ul class="bxslider" data-slides-phone="1" data-slides-tablet="2" data-slides-desktop="5" data-slide-margin="15">
        <c:if test="${proLs!=null && fn:length(proLs) > 0}">
        <c:forEach items="${proLs}" var="s">
        <li>
            <div class="product-item">
                <div class="pi-img-wrapper">
                    <img src="${s.proPicUri}" class="img-responsive" alt="${s.proName}">
                    <div>
                        <a href="${s.proPicUri}"
                           class="btn btn-default fancybox-button">Zoom</a>
                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                </div>
                <h3><a href="item.html">${s.proName}</a></h3>

                <div class="pi-price">${s.proNowPrice}</div>
                <a href="#" class="btn btn-default add2cart">加入购物车</a>
            </div>
        </li>
        </c:forEach>
        </c:if>
        <c:if test="${fn:length(proLs) == 0}">
            <li>
                <div class="product-item">
                    热销榜暂时为空！！！！
                </div>
            </li>
        </c:if>
    </ul>
</div>