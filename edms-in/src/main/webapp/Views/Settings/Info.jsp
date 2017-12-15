<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_CSS%>">
    <style type="text/css">
    </style>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_document/edit.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong>基础设置</strong>
                            <small>Settings</small>
                        </div>
                        <div class="card-block">
                            <form id="info_form" method="post" class="form-horizontal" novalidate onsubmit="return false;">
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="website_name">网站系统标题</label>
                                    <div class="col-md-10">
                                        <input type="text" id="website_name" name="websiteName" class="form-control" placeholder="请输入网站系统标题..."
                                               data-val="true" data-val-required="请输入网站系统标题"
                                               data-val-length-max="30" data-val-length-min="2" data-val-length="网站系统标题必须包含 2~30 个字符。">
                                        <div data-valmsg-for="websiteName" data-valmsg-replace="true"></div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="website_keywords">网站关键字</label>
                                    <div class="col-md-10">
                                        <input type="text" id="website_keywords" name="websiteKeywords" class="form-control" placeholder="请输入网站关键字..."
                                               data-val="true" data-val-required="请输入网站关键字">
                                        <div data-valmsg-for="websiteKeywords" data-valmsg-replace="true"></div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="website_desc">网站描述</label>
                                    <div class="col-md-10">
                                            <textarea id="website_desc" name="websiteDesc" rows="5" class="form-control" placeholder="请输入网站描述..."
                                                      data-val="true" data-val-required="请输入网站描述"></textarea>
                                        <div data-valmsg-for="websiteDesc" data-valmsg-replace="true"></div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="resource_path">静态资源路径</label>
                                    <div class="col-md-10">
                                        <input type="text" id="resource_path" name="resourcePath" class="form-control" placeholder="请输入静态资源路径..."
                                               data-val="true" data-val-required="请输入静态资源路径">
                                        <div data-valmsg-for="resourcePath" data-valmsg-replace="true"></div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="upload_path">上传文件路径</label>
                                    <div class="col-md-10">
                                        <input type="text" id="upload_path" name="uploadPath" class="form-control" placeholder="请输入上传文件路径..."
                                               data-val="true" data-val-required="请输入上传文件路径">
                                        <div data-valmsg-for="uploadPath" data-valmsg-replace="true"></div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="license">底部版权信息</label>
                                    <div class="col-md-10">
                                        <input type="text" id="license" name="license" class="form-control" placeholder="请输入底部版权信息..."
                                               data-val="true" data-val-required="请输入底部版权信息">
                                        <div data-valmsg-for="license" data-valmsg-replace="true"></div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="record_no">网站备案号</label>
                                    <div class="col-md-10">
                                        <input type="text" id="record_no" name="recordNo" class="form-control" placeholder="请输入网站备案号..."
                                               data-val="true" data-val-required="请输入网站备案号">
                                        <div data-valmsg-for="recordNo" data-valmsg-replace="true"></div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="statistical_code">统计代码</label>
                                    <div class="col-md-10">
                                            <textarea id="statistical_code" name="statisticalCode" rows="5" class="form-control" placeholder="请输入统计代码..."
                                                      data-val="true" data-val-required="统计代码"></textarea>
                                        <div data-valmsg-for="statisticalCode" data-valmsg-replace="true"></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right">
                            <button type="button" class="btn btn-sm btn-primary">
                                <i class="fa fa-check"></i> 保 存
                            </button>
                        </div>
                    </div>
                </div>
                <!--/.col-->
            </div>
            <!--/.row-->
        </div>

    </div>
</layout:override>

<c:import url="../Shared/GeneralLayout.jsp">
    <c:param name="menu" value="setting"/>
    <c:param name="subMenu" value="info"/>
</c:import>
