<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.admin.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="page__bd">
        <div class="weui-panel weui-panel_access">
            <div class="weui-panel__bd">
                <div class="weui-media-box weui-media-box_small-appmsg">
                    <div class="weui-cells">
                        <a class="weui-cell weui-cell_access" href="/mobile/center/profile">
                            <div class="weui-cell__bd weui-cell_primary">
                                <p>完善信息</p>
                            </div>
                            <span class="weui-cell__ft"></span>
                        </a>
                        <a class="weui-cell weui-cell_access" href="/mobile/center/password">
                            <div class="weui-cell__bd weui-cell_primary">
                                <p>修改密码</p>
                            </div>
                            <span class="weui-cell__ft"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="weui-panel weui-panel_access">
            <div class="weui-panel__bd">
                <div class="weui-media-box weui-media-box_small-appmsg">
                    <div class="weui-cells">
                        <a class="weui-cell weui-cell_access" href="/mobile/center/collect">
                            <div class="weui-cell__bd weui-cell_primary">
                                <p>我的收藏</p>
                            </div>
                            <span class="weui-cell__ft"></span>
                        </a>
                        <a class="weui-cell weui-cell_access" href="/mobile/center/download">
                            <div class="weui-cell__bd weui-cell_primary">
                                <p>我的下载</p>
                            </div>
                            <span class="weui-cell__ft"></span>
                        </a>
                        <a class="weui-cell weui-cell_access" href="/mobile/center/visit">
                            <div class="weui-cell__bd weui-cell_primary">
                                <p>我的访问</p>
                            </div>
                            <span class="weui-cell__ft"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn weui-btn_warn" href="/mobile/passport/logout">退出登录</a>
        </div>
    </div>
</layout:override>

<c:import url="../Mobile/GeneralLayout.jsp">
    <c:param name="nav" value="setting"/>
</c:import>
