<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="layout" uri="http://www.sports.com/tags/tag"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <base href="<%= basePath %>">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">

    <title>${param.title == null || param.title eq "" ? "北体高科 gaokesport.com - 智慧场馆解决方案的引导者 - TO BE THE GIANT OF WISDOM VENUES SOLUTIONS" : param.title}</title>

    <meta name="keywords" content="${param.keyword == null || param.keyword eq "" ? "北体高科, 智能体育场馆, 物联网, 无线网, 体育场馆, 预订, 收银, gaokesport.com" : param.keyword}"/>
    <meta name="description" content="${param.desc == null || param.desc eq "" ? "北体高科 gaokesport.com - 智慧场馆解决方案的引导者。" : param.desc}"/>
    <meta name="author" content="北体高科（北京）科技有限公司" />

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <!-- favicon -->
    <link href="Content/images/favicon.ico?v=${static_resource_version}" rel="shortcut icon" type="image/x-icon">

    <!-- icons -->
    <link href="Content/bower_components/fontawesome/css/font-awesome.min.css?v=${static_resource_version}"
          rel="stylesheet">
    <link href="Content/bower_components/simple-line-icons/css/simple-line-icons.css?v=${static_resource_version}"
          rel="stylesheet">

    <!-- css -->
    <link href="Content/css/base.css?v=${static_resource_version}" rel="stylesheet">
    <layout:block name="<%=Blocks.BLOCK_HEADER_CSS%>"/>
</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

<!-- header -->
<%@ include file="Header.jsp" %>
<!-- body -->
<div class="app-body">
    <!-- menu -->
    <%@ include file="Left.jsp" %>
    <!-- main -->
    <main class="main">
        <!-- track -->
        <%@ include file="Track.jsp" %>
        <!-- content -->
        <layout:block name="<%=Blocks.BLOCK_BODY%>"/>
    </main>
    <!-- aside -->
    <%@ include file="Aside.jsp" %>
</div>

<div class="modal fade" id="warning_tips" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-danger modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <p class="tips-content">
                    <span class="fa fa-warning text-danger"></span>&nbsp;
                    <span class="text"></span>
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-danger">确认</button>
            </div>
        </div>
    </div>
</div>

<!-- footer -->
<%@ include file="Footer.jsp" %>

<layout:block name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>"/>
<layout:block name="<%=Blocks.BLOCK_TRACE_SCRIPTS%>"/>

</body>
</html>
