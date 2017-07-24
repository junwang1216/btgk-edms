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
                                <label class="weui-label">账户</label>
                            </div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="text" placeholder="请输入账户">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd">
                                <label class="weui-label">姓名</label>
                            </div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="text" placeholder="请输入姓名">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd">
                                <label class="weui-label">手机号</label>
                            </div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="tel" placeholder="请输入手机号">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd">
                                <label class="weui-label">身份证号</label>
                            </div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="tel" placeholder="请输入身份证号">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__bd">
                                <textarea class="weui-textarea" placeholder="请输入自我介绍" rows="3"></textarea>
                                <div class="weui-textarea-counter"><span>0</span>/200</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn weui-btn_primary" href="javascript:;">保 存</a>
        </div>
    </div>
</layout:override>

<c:import url="../Mobile/GeneralLayout.jsp">
    <c:param name="nav" value="setting"/>
</c:import>
