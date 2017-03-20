<%--
  Created by IntelliJ IDEA.
  User: zhangls
  Date: 2016/11/6 0006
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<h1>您的购物车</h1>
<div class="shopping-cart-page">
    <div class="shopping-cart-data clearfix">
        <c:if test="${carLs!=null && fn:length(carLs) > 0}">
        <div class="table-wrapper-responsive">
            <table summary="Shopping cart">
                <tr>
                    <th class="shopping-cart-image">产品图</th>
                    <th class="shopping-cart-description">描述</th>
                    <th class="shopping-cart-ref-no">加入时间</th>
                    <th class="shopping-cart-quantity">数量</th>
                    <th class="shopping-cart-price">单价</th>
                    <th class="shopping-cart-total" colspan="2">小计</th>
                </tr>
                <c:forEach items="${carLs}" var="s" varStatus="st">
                    <tr>
                        <td class="shopping-cart-image">
                            <a href="${pageContext.request.contextPath}/shop/proDet?pId=${s.pro.id}"><img src="${s.pro.proPicUri}" alt="${s.pro.proName}"></a>
                        </td>
                        <td class="shopping-cart-description">
                            <h3><a href="${pageContext.request.contextPath}/shop/proDet?pId=${s.pro.id}">${s.pro.proName}</a></h3>

                            <p><strong>颜色</strong> : ${s.proColor}</p>

                            <p><strong>规格</strong> : ${s.proSize}</p>
                                <%--<em>More info is here</em>--%>
                        </td>
                        <td class="shopping-cart-ref-no">
                                ${s.updateDate}
                        </td>
                        <td class="shopping-cart-quantity">
                            <div class="product-quantity">
                                <input id="product-quantity_${s.id}" type="text" value="${s.proNum}" readonly
                                       class="form-control input-sm" onchange="updCarItem('${s.id}')">

                            </div>
                        </td>
                        <td class="shopping-cart-price">
                            <strong><span>￥</span>${s.proPrice}</strong>
                        </td>
                        <td class="shopping-cart-total">
                            <strong><span>￥</span>${s.talPrice}</strong>
                        </td>
                        <td class="del-goods-col">
                            <a href="#" ><i class="fa fa-times" onclick="delCarItem('${s.id}')">删除</i></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <div class="shopping-total">
            <ul>
                <li>
                    <em>总计</em>
                    <strong class="price"><span>￥</span>${tempPrice}</strong>
                </li>
                <li>
                    <em>优惠</em>
                    <strong class="price"><span>￥</span>${luckPrice}</strong>
                </li>
                <li class="shopping-total-price">
                    <em>实际支付</em>
                    <strong class="price"><span>￥</span>${orderPrice}</strong>
                </li>
            </ul>
        </div>
        </c:if>
        <c:if test="${fn:length(carLs) == 0}">
            <p style="font-size: 24px">您的购物车的空荡荡的，赶紧去添加商品吧！！！</p>
        </c:if>

    </div>
    <button class="btn btn-default" type="submit" id="conShopping">继续购物<i class="fa fa-shopping-cart"></i></button>
    <c:if test="${fn:length(carLs) > 0}">
    <button class="btn btn-primary" type="submit" id="confirmOrder">生成订单<i class="fa fa-check"></i></button>
    </c:if>
</div>
