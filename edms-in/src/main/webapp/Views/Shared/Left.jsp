<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<div class="sidebar">
    <nav class="sidebar-nav">
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link" href="/admin/dashboard/index">
                    <i class="icon-graph"></i> 工作面板
                </a>
            </li>
            <li class="nav-item nav-dropdown">
                <a class="nav-link nav-dropdown-toggle" href="javascript:;">
                    <i class="icon-people"></i> 用户管理
                </a>
                <ul class="nav-dropdown-items">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/users/add">
                            <i class="icon-arrow-right"></i> 添加用户
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/users/list">
                            <i class="icon-arrow-right"></i> 用户查询
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/users/balance">
                            <i class="icon-arrow-right"></i> 余额查询
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item nav-dropdown <c:if test="${param.menu == 'document'}">open</c:if>">
                <a class="nav-link nav-dropdown-toggle" href="javascript:;">
                    <i class="icon-docs"></i> 资料管理
                </a>
                <ul class="nav-dropdown-items">
                    <li class="nav-item <c:if test="${param.subMenu == 'class'}">open</c:if>">
                        <a class="nav-link <c:if test="${param.subMenu == 'class'}">active</c:if>"
                           href="/admin/document/class">
                            <i class="icon-arrow-right"></i> 资料分类
                        </a>
                    </li>
                    <li class="nav-item <c:if test="${param.subMenu == 'upload'}">open</c:if>">
                        <a class="nav-link <c:if test="${param.subMenu == 'upload'}">active</c:if>"
                           href="/admin/document/upload">
                            <i class="icon-arrow-right"></i> 资料上传
                        </a>
                    </li>
                    <li class="nav-item <c:if test="${param.subMenu == 'search' || param.subMenu == 'detail' || param.subMenu == 'edit'}">open</c:if>">
                        <a class="nav-link <c:if test="${param.subMenu == 'search' || param.subMenu == 'detail' || param.subMenu == 'edit'}">active</c:if>"
                           href="/admin/document/search">
                            <i class="icon-arrow-right"></i> 资料检索
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item nav-dropdown">
                <a class="nav-link nav-dropdown-toggle" href="javascript:;">
                    <i class="icon-settings"></i> 系统设置
                </a>
                <ul class="nav-dropdown-items">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/settings/info">
                            <i class="icon-arrow-right"></i> 基础设置
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/settings/account">
                            <i class="icon-arrow-right"></i> 管理员设置
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="icon-arrow-right"></i> 充值渠道管理
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="icon-arrow-right"></i> 建立文档索引
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/settings/database">
                            <i class="icon-arrow-right"></i> 数据库备份
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/settings/log">
                            <i class="icon-arrow-right"></i> 系统日志
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
</div>
