<%@ page import="com.fengze.shop.domain.CarDo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fengze.shop.domain.ProductDo" %>
<%--
  Created by IntelliJ IDEA.
  User: zhangls
  Date: 2016/11/10 0010
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<%
    //设置cookie
    String str=java.net.URLEncoder.encode("商城","UTF-8");
    Cookie cookie = new Cookie("XXX", str);
    //设置有效期，默认秒为单位
    cookie.setMaxAge(7 * 24 * 60 * 60);
    //添加cookie到客户端
    response.addCookie(cookie);
%>

<%
    //获取cookie
    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 0) {
        for (int i = 0; i < cookies.length; i++) {
            out.print(cookies[i].getName() + "===" + java.net.URLDecoder.decode(cookies[i].getValue(),"UTF-8") + "<br/>");
        }
    }
%>
</body>
</html>
