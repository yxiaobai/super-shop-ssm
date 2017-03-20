<%--
  Created by IntelliJ IDEA.
  User: zhangls
  Date: 2016/11/1 0001
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- BEGIN SIDEBAR -->
<div class="sidebar col-md-3 col-sm-5">
    <ul class="list-group margin-bottom-25 sidebar-menu">
        <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Ladies</a>
        </li>
        <li class="list-group-item clearfix dropdown active">
            <a href="javascript:void(0);" class="collapsed">
                <i class="fa fa-angle-right"></i>
                Mens
                <i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu" style="display:block;">
                <li class="list-group-item dropdown clearfix active">
                    <a href="javascript:void(0);" class="collapsed"><i class="fa fa-circle"></i> Shoes <i
                            class="fa fa-angle-down"></i></a>
                    <ul class="dropdown-menu" style="display:block;">
                        <li class="list-group-item dropdown clearfix">
                            <a href="javascript:void(0);"><i class="fa fa-circle"></i> Classic <i
                                    class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="product-list.html"><i class="fa fa-circle"></i> Classic 1</a></li>
                                <li><a href="product-list.html"><i class="fa fa-circle"></i> Classic 2</a></li>
                            </ul>
                        </li>
                        <li class="list-group-item dropdown clearfix active">
                            <a href="javascript:void(0);" class="collapsed"><i class="fa fa-circle"></i> Sport <i
                                    class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu" style="display:block;">
                                <li class="active"><a href="product-list.html"><i class="fa fa-circle"></i> Sport 1</a>
                                </li>
                                <li><a href="product-list.html"><i class="fa fa-circle"></i> Sport 2</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="product-list.html"><i class="fa fa-circle"></i> Trainers</a></li>
                <li><a href="product-list.html"><i class="fa fa-circle"></i> Jeans</a></li>
                <li><a href="product-list.html"><i class="fa fa-circle"></i> Chinos</a></li>
                <li><a href="product-list.html"><i class="fa fa-circle"></i> T-Shirts</a></li>
            </ul>
        </li>
        <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Kids</a></li>
        <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i>
            Accessories</a></li>
        <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Sports</a>
        </li>
        <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Brands</a>
        </li>
        <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i>
            Electronics</a></li>
        <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Home & Garden</a>
        </li>
        <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Custom
            Link</a></li>
    </ul>

    <div class="sidebar-filter margin-bottom-25">
        <h2>Filter</h2>

        <h3>Availability</h3>

        <div class="checkbox-list">
            <label><input type="checkbox"> Not Available (3)</label>
            <label><input type="checkbox"> In Stock (26)</label>
        </div>

        <h3>Price</h3>

        <p>
            <label for="amount">Range:</label>
            <input type="text" id="amount" style="border:0; color:#f6931f; font-weight:bold;">
        </p>

        <div id="slider-range"></div>
    </div>

    <div class="sidebar-products clearfix">
        <h2>Bestsellers</h2>

        <div class="item">
            <a href="item.html"><img src="assets/temp/products/k1.jpg" alt="Some Shoes in Animal with Cut Out"></a>

            <h3><a href="item.html">Some Shoes in Animal with Cut Out</a></h3>

            <div class="price">$31.00</div>
        </div>
        <div class="item">
            <a href="item.html"><img src="assets/temp/products/k4.jpg" alt="Some Shoes in Animal with Cut Out"></a>

            <h3><a href="item.html">Some Shoes in Animal with Cut Out</a></h3>

            <div class="price">$23.00</div>
        </div>
        <div class="item">
            <a href="item.html"><img src="assets/temp/products/k3.jpg" alt="Some Shoes in Animal with Cut Out"></a>

            <h3><a href="item.html">Some Shoes in Animal with Cut Out</a></h3>

            <div class="price">$86.00</div>
        </div>
    </div>
</div>
<!-- END SIDEBAR -->
