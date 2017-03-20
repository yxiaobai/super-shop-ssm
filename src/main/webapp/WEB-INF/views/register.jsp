<%--
  Created by IntelliJ IDEA.
  User: zhangls
  Date: 2016/10/28 0028
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<%@include file="header.jsp" %>
<body>
<%@include file="top-bar.jsp" %>

<%@include file="menu.jsp" %>

<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="${path}/index.jsp">主页</a></li>
            <li><a href="${path}/index.jsp">商品列表</a></li>
            <li class="active">会员注册</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <!-- BEGIN SIDEBAR -->
            <div class="sidebar col-md-3 col-sm-3">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <li class="list-group-item clearfix"><a href="${path}/login.jsp"><i class="fa fa-angle-right"></i>
                        会员登陆</a></li>
                    <li class="list-group-item clearfix"><a href="${path}/modPass.jsp"><i class="fa fa-angle-right"></i> 修改密码</a>
                    </li>
                    <li class="list-group-item clearfix"><a href="${path}/myAccount.jsp"><i class="fa fa-angle-right"></i> 我的账户</a>
                    </li>
                    <li class="list-group-item clearfix"><a href="${path}/addreeList.jsp"><i class="fa fa-angle-right"></i> 地址薄</a>
                    </li>
                    <li class="list-group-item clearfix"><a href="${path}/wishList.jsp"><i class="fa fa-angle-right"></i>收藏夹</a>
                    </li>
                </ul>
            </div>
            <!-- END SIDEBAR -->

            <!-- BEGIN CONTENT -->
            <div class="col-md-9 col-sm-9">
                <h1>会员注册</h1>

                <div class="content-form-page">
                    <div class="row">
                        <div class="col-md-7 col-sm-7">
                            <form action="${path}/register" id="registerForm" class="form-horizontal form-without-legend" method="post">
                                <div class="form-body">
                                    <div class="alert alert-danger" style="display: none;">
                                        <button class="close" data-close="alert"></button>
                                        提交的表单还有验证错误，请检查！！！
                                    </div>
                                    <div class="alert alert-success" style="display: none;">
                                        <button class="close" data-close="alert"></button>
                                        表单验证成功！
                                    </div>
                                    <fieldset>
                                    <legend>个人信息</legend>
                                    <div class="form-group">
                                        <label for="userName" class="col-lg-4 control-label">登陆名<span class="require">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="text" id="userName" name="userName" placeholder="请输入登陆名" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="realName" class="col-lg-4 control-label">真实姓名<span class="require">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="text" id="realName" name="realName" placeholder="请输入真实姓名" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="col-lg-4 control-label">Email<span class="require">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="text" id="email" name="email" placeholder="请输入EMAIL" class="form-control"/>
                                        </div>
                                    </div>
                                    </fieldset>
                                    <fieldset>
                                        <legend>设置密码</legend>
                                        <div class="form-group">
                                            <label for="password" class="col-lg-4 control-label">登陆密码<span class="require">*</span></label>
                                            <div class="col-lg-8">
                                                <input name="password" id="password" type="password" placeholder="请输入登陆密码" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="confirm_password" class="col-lg-4 control-label">验证登陆密码<span class="require">*</span></label>
                                            <div class="col-lg-8">
                                                <input name="confirm_password" id="confirm_password" type="password" placeholder="请输入登陆密码" class="form-control"/>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <fieldset>
                                        <legend>通讯信息</legend>
                                        <div class="form-group">
                                            <label for="phone" class="col-lg-4 control-label">联系电话<span class="require">*</span></label>
                                            <div class="col-lg-8">
                                                <input name="cellphone" id="phone" type="text" placeholder="请输入联系电话" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="address" class="col-lg-4 control-label">联系地址<span class="require">*</span></label>
                                            <div class="col-lg-8">
                                                <input id="address" type="text" name="address" placeholder="请输入联系地址" class="form-control"/>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8 col-md-offset-4 padding-left-0">
                                        <font color="red">${requestScope.message}</font>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                                        <button type="submit" class="btn btn-success">登陆</button>
                                        <button type="reset" class="btn btn-info">重置</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-10 padding-right-30">
                                        <hr>
                                        <div class="login-socio">
                                            <p class="text-muted">或 登陆方式:</p>
                                            <ul class="social-icons">
                                                <li><a href="#" data-original-title="facebook" class="facebook"
                                                       title="facebook"></a></li>
                                                <li><a href="#" data-original-title="Twitter" class="twitter"
                                                       title="Twitter"></a></li>
                                                <li><a href="#" data-original-title="Google Plus" class="googleplus"
                                                       title="Google Plus"></a></li>
                                                <li><a href="#" data-original-title="Linkedin" class="linkedin"
                                                       title="LinkedIn"></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-4 col-sm-4 pull-right">
                            <div class="form-info">
                                <h2><em>会员注册</em> 注意事项</h2>

                                <p>1. 登陆名：8-20位 字母或数字，实名制请填写真实姓名，email请填写有效的电子邮件地址</p>

                                <p>2. 登陆密码：包含大写字母、小写字母、数字</p>

                                <p>3. 请填写真实的通讯信息</p>

                                <button type="button" class="btn btn-default">更多信息</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
    </div>
</div>

<%@include file="footer.jsp" %>
<script type="text/javascript" src="${path}/assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
<script type="text/javascript" src="${path}/assets/plugins/jquery-validation/localization/messages_zh.js"></script>
<script type="text/javascript" src="${path}/assets/scripts/custom/form-validation-register.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        FormValidation.init();
    });
</script>
</body>
</html>
