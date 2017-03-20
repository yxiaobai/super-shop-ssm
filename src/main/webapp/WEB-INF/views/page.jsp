<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-11-19
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- BEGIN PAGINATOR -->
<div class="row">
  <div class="col-md-4 col-sm-4 items-info">共 ${page.totalRecord} 项</div>
  <div class="col-md-8 col-sm-8">
    <ul class="pagination pull-right">
      <c:if test="${page.currentPage != 1}">
        <li><a href="#" onclick="page('${typeId}','${page.currentPage-1}')">&laquo;</a></li>
        <li><a href="#" onclick="page('${typeId}','1')">1</a></li>
        <c:if test="${page.currentPage-1 != 1}">
          <li><a href="#" onclick="page('${typeId}','${page.currentPage-1}')">${page.currentPage-1}</a></li>
        </c:if>
      </c:if>
      <li><span>${page.currentPage}</span></li>
      <c:if test="${page.currentPage != page.totalPage}">
        <c:if test="${page.currentPage+1 != page.totalPage}">
          <li><a href='#' onclick="page('${typeId}','${page.currentPage+1}')">${page.currentPage+1}</a></li>
        </c:if>
        <li><a href="#" onclick="page('${typeId}','${page.totalPage}')">${page.totalPage}</a></li>
        <li><a href="#" onclick="page('${typeId}','${page.currentPage+1}')">&raquo;</a></li>
      </c:if>
    </ul>
  </div>
</div>
<!-- END PAGINATOR -->
