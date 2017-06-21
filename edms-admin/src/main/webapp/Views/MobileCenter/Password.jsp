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
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__hd">
                                <label class="weui-label">旧密码</label>
                            </div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="password" placeholder="请输入旧密码">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd">
                                <label class="weui-label">新密码</label>
                            </div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="password" placeholder="请输入新密码">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd">
                                <label class="weui-label">确认密码</label>
                            </div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="password" placeholder="请输入确认密码">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn weui-btn_primary" href="javascript:;">确 定</a>
        </div>
    </div>
</layout:override>

<c:import url="../Mobile/GeneralLayout.jsp">
    <c:param name="nav" value="setting"/>
</c:import>
