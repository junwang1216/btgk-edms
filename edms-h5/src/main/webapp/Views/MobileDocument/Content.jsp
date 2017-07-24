<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.admin.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="page__bd">
        <div class="weui-panel page__article">
            <div class="weui-panel__bd">
                <div class="weui-msg">
                    <div class="weui-msg__text-area">
                        <h2 class="weui-msg__title">计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献</h2>

                        <div class="button-sp-area">
                            <a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_warn">收藏(1203)</a>
                            <a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_primary">下载(389)</a>
                        </div>

                        <p class="weui-msg__desc">
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献，
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献，
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献，
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献，
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献，
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献。
                        </p>
                        <p class="weui-msg__desc">
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献，
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献，
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献，
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献，
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献，
                            计算机科技类资料文献标题，计算机科技类资料文献标题，计算机科技类资料文献，计算机科技类资料文献。
                        </p>
                    </div>
                </div>

                <div class="weui-media-box weui-media-box_text">
                    <ul class="weui-media-box__info">
                        <li class="weui-media-box__info__meta">张召忠</li>
                        <li class="weui-media-box__info__meta">2015-02-25</li>
                        <li class="weui-media-box__info__meta weui-media-box__info__meta_extra">计算机科技类</li>
                        <li class="weui-media-box__info__meta weui-media-box__info__meta_extra">访问量(4329)</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</layout:override>

<c:import url="../Mobile/GeneralLayout.jsp">
    <c:param name="nav" value="setting"/>
</c:import>
