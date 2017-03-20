<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Head BEGIN -->
<head>
    <meta charset="utf-8">
    <title>super商城</title>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/resources";
        request.setAttribute("path", basePath);
    %>
    <%
        String path2 = request.getContextPath();
        String basePath2 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path ;
        request.setAttribute("path2", basePath2);
    %>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta content="super Shop UI description" name="description">
    <meta content="super Shop UI keywords" name="keywords">
    <meta content="zhangls" name="author">

    <meta property="og:site_name" content="-CUSTOMER VALUE-">
    <meta property="og:title" content="-CUSTOMER VALUE-">
    <meta property="og:description" content="-CUSTOMER VALUE-">
    <meta property="og:type" content="website">
    <meta property="og:image" content="-CUSTOMER VALUE-">
    <!-- link to image for socio -->
    <meta property="og:url" content="-CUSTOMER VALUE-">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/favicon.ico" rel="SHORTCUT ICON" type="image/ico">

    <!-- Fonts START -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&subset=all" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow&subset=all" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&subset=all" rel="stylesheet" type="text/css">
    <!--- fonts for slider on the index page -->
    <!-- Fonts END -->

    <!-- Global styles START -->
    <link href="${path}/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${path}/assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <!-- Global styles END -->

    <!-- Page level plugin styles START -->
    <link href="${path}/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <link href="${path}/assets/plugins/bxslider/jquery.bxslider.css" rel="stylesheet">
    <link rel="stylesheet" href="${path}/assets/plugins/layerslider/css/layerslider.css" type="text/css">
    <link href="${path}/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin styles END -->

    <!-- Theme styles START -->
    <link href="${path}/assets/css/style-metronic.css" rel="stylesheet" type="text/css">
    <link href="${path}/assets/css/style.css" rel="stylesheet" type="text/css">
    <link href="${path}/assets/css/style-responsive.css" rel="stylesheet" type="text/css">
    <link href="${path}/assets/css/custom.css" rel="stylesheet" type="text/css">
    <!-- Theme styles END -->

</head>
<!-- Head END -->
