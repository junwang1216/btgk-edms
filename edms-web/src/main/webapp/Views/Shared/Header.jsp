<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>

<div>
    <div class="search-area-wrapper">
        <header class="header-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 logo-container">
                        <a href="/web/document/search" title="资料库">
                            <img src="Content/images/logo.png?v=${static_resource_version}" alt="资料库">
                        </a>
                        <span class="tag-line">资料库</span>
                    </div>
                    <div class="col-sm-8">
                        <nav class="main-nav">
                            <div class="menu-top-menu-container">
                                <ul id="menu-top-menu" class="clearfix">
                                    <li data-type="search" class="current-menu-item"><a href="/web/document/search">资料检索</a></li>
                                    <c:if test="${!isLogin}">
                                        <li data-type="login">
                                            <a href="javascript:;" class="link-login">用户登录</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${isLogin}">
                                        <li data-type="center" class="menu-top-menu-item link-user-menu">
                                            <a href="javascript:;" class="link-user">欢迎您，李丽娜</a>
                                            <ul class="sub-menu">
                                                <li><a href="/web/center/balance">账户余额</a></li>
                                                <li><a href="/web/center/profile">完善信息</a></li>
                                                <li><a href="/web/center/password">修改密码</a></li>
                                            </ul>
                                        </li>
                                        <li data-type="favicon">
                                            <a href="javascript:;" class="link-favicon">我的收藏</a>
                                        </li>
                                        <li data-type="download">
                                            <a href="javascript:;" class="link-download">我的下载</a>
                                        </li>
                                        <li data-type="history">
                                            <a href="javascript:;" class="link-history">浏览历史</a>
                                        </li>
                                        <li data-type="logout">
                                            <a href="/web/passport/logout" class="link-logout">退出登录</a>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>

        <div class="search-area container">
            <h3 class="search-header">您想要检索资料文献吗？</h3>
            <p class="search-tag-line">请输入您想要检索的资料文献的关键字，多个关键字以逗号分隔。</p>

            <form class="search-form form-search clearfix" method="get" autocomplete="off" novalidate="novalidate" onsubmit="return false;">
                <input class="search-term loading txt-search" type="text" name="keywords" placeholder="请输入关键字..."
                       autocomplete="off" value="${keywords}">
                <a class="search-btn btn-search" href="javascript:;">检 索</a>
            </form>
        </div>
    </div>
</div>
