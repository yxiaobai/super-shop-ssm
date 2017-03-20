<%--
  Created by IntelliJ IDEA.
  User: zhangls
  Date: 2016/10/25 0025
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- BEGIN TOP BAR -->
<div class="pre-header">
    <div class="container">
        <div class="row">
            <!-- BEGIN TOP BAR LEFT PART -->
            <div class="col-md-6 col-sm-6 additional-shop-info">
                <ul class="list-unstyled list-inline">
                    <li><i class="fa fa-phone"></i><span>客服电话：0371-67899999</span></li>
                    <!-- BEGIN CURRENCIES -->
                    <li class="shop-currencies">
                        <a href="javascript:void(0);">€</a>
                        <a href="javascript:void(0);">£</a>
                        <a href="javascript:void(0);">￥</a>
                        <a href="javascript:void(0);" class="current">$</a>
                    </li>
                    <!-- END CURRENCIES -->
                    <!-- BEGIN LANGS -->
                    <li class="langs-block">
                        <a href="javascript:void(0);" class="current"> 中文 <i class="fa fa-angle-down"></i></a>

                        <div class="langs-block-others-wrapper">
                            <div class="langs-block-others">
                                <a href="javascript:void(0);">English</a>
                                <a href="javascript:void(0);">French</a>
                                <a href="javascript:void(0);">Germany</a>
                                <a href="javascript:void(0);">Turkish</a>
                            </div>
                        </div>
                    </li>
                    <!-- END LANGS -->
                </ul>
            </div>
            <!-- END TOP BAR LEFT PART -->
            <!-- BEGIN TOP BAR MENU -->
            <div class="col-md-6 col-sm-6 additional-nav">
                <ul class="list-unstyled list-inline pull-right">
                    <c:if test="${sessionScope.user!=null}">
                    <li><a href="#">${sessionScope.user.realName}-欢迎您</a></li>
                    <li><a href="#">我的账户</a></li>
                    <li><a href="#">我的订单</a></li>
                    <li><a href="#">我的收藏</a></li>
                    </c:if>
                    <li><a href="${pageContext.request.contextPath}/shop/car-list.jsp">购物车(${carNum!=null?carNum:0})</a></li>
                    <%--<%--%>
                        <%--pageContext.getSession().setAttribute("user","zhanglingsi");--%>
                    <%--%>--%>
                    <%--<%--%>
                        <%--pageContext.getSession().removeAttribute("user");--%>
                    <%--%>--%>
                    <c:if test="${sessionScope.user==null}">
                        <li><a href="${pageContext.request.contextPath}/login">登 录</a></li>
                    </c:if>
                    <c:if test="${sessionScope.user!=null}">
                        <li><a href="${pageContext.request.contextPath}/logout">注 销</a></li>
                    </c:if>
                </ul>
            </div>
            <!-- END TOP BAR MENU -->
        </div>
    </div>
</div>
<!-- END TOP BAR -->
