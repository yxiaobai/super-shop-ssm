<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
  <title>无标题文档</title>
</head>
<%!
  public static class TTT{
    private String name;
    public TTT(String name){
      this.name = name;
    }
    public String getName(){
      return name;
    }
  }
%>
<%
  Map<String, List<TTT>> map = new LinkedHashMap<String, List<TTT>>();

  List<TTT> ss = new ArrayList<TTT>();
  List<TTT> ee = new ArrayList<TTT>();

  TTT tt = new TTT("111");
  TTT ww = new TTT("222");
  ss.add(tt);
  ss.add(ww);

  TTT tt1 = new TTT("333");
  TTT ww1 = new TTT("444");
  ee.add(tt1);
  ee.add(ww1);

  map.put("aaaa",ss);
  map.put("bbbb",ee);

  request.setAttribute("map",map);
%>
<body>
<c:forEach items="${map}" var="s">
  <c:forEach items="${s.value}" var="f">

    ${s.key}-${f.name}<br/>

  </c:forEach>

</c:forEach>
</body>
</html>