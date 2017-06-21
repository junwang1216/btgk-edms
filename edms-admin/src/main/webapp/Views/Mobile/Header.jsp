<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<div class="page__hd">
    <div class="page__menu">
        <h1 class="page__title">
            <img src="Content/images/logo.png?v=${static_resource_version}">
        </h1>
        <a class="page__center" href="/mobile/center/settings">
            <img src="Content/images/mobile/settings.png?v=${static_resource_version}">
        </a>
    </div>
    <div class="weui-search-bar" id="searchBar">
        <form class="weui-search-bar__form">
            <div class="weui-search-bar__box">
                <i class="weui-icon-search"></i>
                <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索" required="">
                <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
            </div>
            <label class="weui-search-bar__label" id="searchText">
                <i class="weui-icon-search"></i>
                <span>搜索</span>
            </label>
        </form>
        <a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">取消</a>
    </div>
</div>
