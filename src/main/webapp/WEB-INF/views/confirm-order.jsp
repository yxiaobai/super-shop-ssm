<%--
  Created by IntelliJ IDEA.
  User: zhangls
  Date: 2016/11/7 0007
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1>生成订单</h1>
<!-- BEGIN CHECKOUT PAGE -->
<div class="panel-group checkout-page accordion scrollable" id="checkout-page">

    <form id="orderForm" action="${pageContext.request.contextPath}/shop/addOrder" method="post">
    <!-- BEGIN PAYMENT ADDRESS -->
    <div id="payment-address" class="panel panel-default">
        <div class="panel-heading">
            <h2 class="panel-title">
                <a data-toggle="collapse" data-parent="#checkout-page" href="#payment-address-content" class="accordion-toggle">
                    第一步: 物流信息填写
                </a>
            </h2>
        </div>
        <div id="payment-address-content" class="panel-collapse in">
            <div class="panel-body row">
                    <div class="form-body">
                    <div class="alert alert-danger" style="display: none;">
                        <button class="close" data-close="alert"></button>
                        提交的表单还有验证错误，请检查！！！
                    </div>
                    <div class="alert alert-success" style="display: none;">
                        <button class="close" data-close="alert"></button>
                        表单验证成功！
                    </div>
                <div class="col-md-4 col-sm-4">
                    <h3>邮寄地址信息</h3>

                    <div class="form-group">
                        <label for="order_name">收货人：<span class="require">*</span></label>
                        <input type="text" id="order_name" name="orderName" class="form-control" placeholder="请输入收货人">
                    </div>

                    <div class="form-group">
                        <label for="order_addr">联系地址：<span class="require">*</span></label>
                        <input type="text" id="order_addr" name="orderAddr" class="form-control" placeholder="请输入联系地址">
                    </div>

                </div>
                <div class="col-md-4 col-sm-4">
                    <h3>联系信息</h3>

                    <div class="form-group">
                        <label for="order_phone">手机号码：<span class="require">*</span></label>
                        <input type="text" id="order_phone" name="orderPhone" class="form-control" placeholder="请输入手机号码">
                    </div>
                    <div class="form-group">
                        <label for="order_tel">固定电话：<span class="require">*</span></label>
                        <input type="text" id="order_tel" name="orderTel" class="form-control" placeholder="请输入固定电话">
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <h3>给商家留言</h3>

                    <div class="form-group">
                        <label for="order_desc">留言：</label>
                        <textarea type="text" name="orderDesc" id="order_desc" class="form-control" rows="6"></textarea>
                    </div>
                </div>
                <hr>
                </div>
                <%--<div class="col-md-12">--%>
                    <%--<button class="btn btn-primary  pull-right" type="submit" data-toggle="collapse"--%>
                            <%--data-parent="#checkout-page" data-target="#confirm-content"--%>
                            <%--id="button-payment-address">继续</button>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
    <!-- END PAYMENT ADDRESS -->

    <!-- BEGIN CONFIRM -->
    <div id="confirm" class="panel panel-default">
        <div class="panel-heading">
            <h2 class="panel-title">
                <a data-toggle="collapse" data-parent="#checkout-page" href="#confirm-content" class="accordion-toggle">
                    第二步: 确认订单
                </a>
            </h2>
        </div>
        <div id="confirm-content" class="panel-collapse in">
            <div class="panel-body row">
                <div class="col-md-12 clearfix">
                    <div class="table-wrapper-responsive">
                        <table>
                            <tr>
                                <th class="checkout-image">产品图</th>
                                <th class="checkout-description">描述</th>
                                <th class="checkout-model">更新时间</th>
                                <th class="checkout-quantity">数量</th>
                                <th class="checkout-price">单价</th>
                                <th class="checkout-total">小计</th>
                            </tr>
                            <c:forEach items="${carLs}" var="s" varStatus="st">
                            <tr>
                                <td class="checkout-image">
                                    <a href="${pageContext.request.contextPath}/shop/proDet?pId=${s.pro.id}"><img src="${s.pro.proPicUri}" alt="${s.pro.proName}"></a>
                                </td>
                                <td class="checkout-description">
                                    <h3><a href="${pageContext.request.contextPath}/shop/proDet?pId=${s.pro.id}">${s.pro.proName}</a></h3>

                                    <p><strong>颜色</strong> : ${s.proColor}</p>
                                    <p><strong>规格</strong> : ${s.proSize}</p>

                                </td>
                                <td class="checkout-model">${s.updateDate}</td>
                                <td class="checkout-quantity">${s.proNum}</td>
                                <td class="checkout-price"><strong><span>￥</span>${s.proPrice}</strong></td>
                                <td class="checkout-total"><strong><span>￥</span>${s.talPrice}</strong></td>
                            </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <div class="checkout-total-block">
                        <ul>
                            <li>
                                <em>总计</em>
                                <strong class="price"><span>￥</span>${tempPrice}</strong>
                            </li>
                            <li>
                                <em>优惠</em>
                                <strong class="price"><span>￥</span>${luckPrice}</strong>
                            </li>
                            <li class="checkout-total-price">
                                <em>实际支付</em>
                                <strong class="price"><span>￥</span>${orderPrice}</strong>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <input type="hidden" name="orderPrice" value="${orderPrice}"/>
                    <button class="btn btn-primary pull-right" type="submit" id="button-confirm">提交订单</button>
                    <button type="reset" class="btn btn-default pull-right margin-right-20">退 出</button>
                </div>
            </div>
        </div>
    </div>
    <!-- END CONFIRM -->
    </form>
</div>
<script type="text/javascript">
    jQuery(document).ready(function () {
        FormValidation.init();
    });
</script>
