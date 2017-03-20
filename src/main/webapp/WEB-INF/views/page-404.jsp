<%--
  Created by IntelliJ IDEA.
  User: zhangls
  Date: 2016/11/4 0004
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<%@include file="header.jsp" %>
<body>
<%@include file="top-bar.jsp" %>

<%@include file="menu.jsp" %>

<div class="main">
    <div class="container">
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <!-- BEGIN CONTENT -->
            <div class="col-md-12 col-sm-12">
                <div class="content-page page-404">
                    <div class="number">
                        404
                    </div>
                    <div class="details">
                        <h3>哇！ 您访问的资源不存在！</h3>
                        <p>
                            你访问的页面，我们无法提供服务！<br>
                            <a href="${path}/index.jsp" class="link">回到主页</a> 或者尝试在搜索栏试试！！！
                        </p>
                    </div>
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
    </div>
</div>

<%@include file="footer.jsp" %>
</body>
</html>
