<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<!-- Breadcrumb -->
<ol class="breadcrumb">
    <li class="breadcrumb-item">当前系统</li>

    <c:choose>
        <c:when test="${param.menu == 'dashboard'}">
            <li class="breadcrumb-item active">工作台</li>
        </c:when>
        <c:when test="${param.menu == 'document'}">
            <li class="breadcrumb-item">资料管理</li>
        </c:when>
        <c:when test="${param.menu == 'user'}">
            <li class="breadcrumb-item">用户管理</li>
        </c:when>
        <c:when test="${param.menu == 'setting'}">
            <li class="breadcrumb-item">系统设置</li>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${param.subMenu == 'search'}">
            <li class="breadcrumb-item active">资料检索</li>
        </c:when>
        <c:when test="${param.subMenu == 'detail'}">
            <li class="breadcrumb-item"><a href="/admin/document/search">资料检索</a></li>
            <li class="breadcrumb-item active">资料详情</li>
        </c:when>
        <c:when test="${param.subMenu == 'edit'}">
            <li class="breadcrumb-item"><a href="/admin/document/search">资料检索</a></li>
            <li class="breadcrumb-item active">资料编辑</li>
        </c:when>
        <c:when test="${param.subMenu == 'class'}">
            <li class="breadcrumb-item active">资料分类</li>
        </c:when>
        <c:when test="${param.subMenu == 'upload'}">
            <li class="breadcrumb-item active">资料上传</li>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${param.subMenu == 'search'}">
            <li class="breadcrumb-item active">用户检索</li>
        </c:when>
        <c:when test="${param.subMenu == 'edit'}">
            <li class="breadcrumb-item"><a href="/admin/user/list">用户检索</a></li>
            <li class="breadcrumb-item active">用户编辑</li>
        </c:when>
        <c:when test="${param.subMenu == 'add'}">
            <li class="breadcrumb-item active">用户添加</li>
        </c:when>
        <c:when test="${param.subMenu == 'balance'}">
            <li class="breadcrumb-item active">用户余额</li>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${param.subMenu == 'info'}">
            <li class="breadcrumb-item active">基础设置</li>
        </c:when>
        <c:when test="${param.subMenu == 'admin'}">
            <li class="breadcrumb-item active">管理员设置</li>
        </c:when>
        <c:when test="${param.subMenu == 'log'}">
            <li class="breadcrumb-item active">系统日志</li>
        </c:when>
    </c:choose>

    <!-- Breadcrumb Menu-->
    <li class="breadcrumb-menu d-md-down-none">
        <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
            <a class="btn btn-secondary" href="#">
                <i class="icon-speech"></i> &nbsp;在线帮助
            </a>
            <a class="btn btn-secondary" href="/admin/dashboard/index">
                <i class="icon-graph"></i> &nbsp;工作面板
            </a>
            <a class="btn btn-secondary" href="#">
                <i class="icon-settings"></i> &nbsp;系统设置
            </a>
        </div>
    </li>
</ol>
