<%--
  Created by IntelliJ IDEA.
  User: zhangls
  Date: 2016/10/31 0031
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<%@include file="header.jsp" %>
<body>
<%@include file="top-bar.jsp" %>

<%@include file="menu.jsp" %>

<div class="title-wrapper">
    <div class="container">
        <div class="container-inner">
            <h1><span>女士</span>专区</h1>
            <em>超过4000款商品，等待您的选购</em>
        </div>
    </div>
</div>

<div class="main">

    <div class="container">
        <ul class="breadcrumb">
            <li><a href="${path}/index.jsp">主页</a></li>
            <li><a href="${path}/index.jsp">专区</a></li>
            <li class="active">女士专区</li>
        </ul>
        <input type="hidden" value="${param.typeId}" id="typeId"/>
        <input type="hidden" value="${param.pageNo}" id="pageNo"/>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <%@include file="sidebar.jsp"%>
            <!-- BEGIN CONTENT -->
            <div class="col-md-9 col-sm-7" id="pro-list">
                <div class="row list-view-sorting clearfix">
                    <div class="col-md-2 col-sm-2 list-view">
                        <a href="#"><i class="fa fa-th-large"></i></a>
                        <a href="#"><i class="fa fa-th-list"></i></a>
                    </div>
                    <div class="col-md-10 col-sm-10">
                        <div class="pull-right">
                            <label class="control-label">Show:</label>
                            <select class="form-control input-sm">
                                <option value="#?limit=24" selected="selected">24</option>
                                <option value="#?limit=25">25</option>
                                <option value="#?limit=50">50</option>
                                <option value="#?limit=75">75</option>
                                <option value="#?limit=100">100</option>
                            </select>
                        </div>
                        <div class="pull-right">
                            <label class="control-label">Sort&nbsp;By:</label>
                            <select class="form-control input-sm">
                                <option value="#?sort=p.sort_order&amp;order=ASC" selected="selected">Default</option>
                                <option value="#?sort=pd.name&amp;order=ASC">Name (A - Z)</option>
                                <option value="#?sort=pd.name&amp;order=DESC">Name (Z - A)</option>
                                <option value="#?sort=p.price&amp;order=ASC">Price (Low &gt; High)</option>
                                <option value="#?sort=p.price&amp;order=DESC">Price (High &gt; Low)</option>
                                <option value="#?sort=rating&amp;order=DESC">Rating (Highest)</option>
                                <option value="#?sort=rating&amp;order=ASC">Rating (Lowest)</option>
                                <option value="#?sort=p.model&amp;order=ASC">Model (A - Z)</option>
                                <option value="#?sort=p.model&amp;order=DESC">Model (Z - A)</option>
                            </select>
                        </div>
                    </div>
                </div>
                <!-- BEGIN PRODUCT LIST -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
    </div>
</div>

<%@include file="footer.jsp" %>
<script type="text/javascript" src="${path}/assets/scripts/custom/proList.js" charset="utf-8"></script>
</body>
</html>
