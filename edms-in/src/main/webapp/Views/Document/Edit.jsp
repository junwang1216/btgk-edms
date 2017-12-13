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
                            <strong>资料编辑</strong>
                            <small>Edit</small>
                        </div>
                        <div class="card-block">
                            <form id="article_form" method="post" class="form-horizontal" novalidate onsubmit="return false;">
                                <input type="hidden" id="article_id" name="articleId" value="">
                                <div class="col-md-12 clearfix">
                                    <div class="form-group row">
                                        <label class="col-md-1 form-control-label" for="article_title">资料标题</label>
                                        <div class="col-md-11">
                                            <input type="text" id="article_title" name="articleTitle" class="form-control" placeholder="请输入资料标题..."
                                                   data-val="true" data-val-required="请输入资料标题"
                                                   data-val-length-max="30" data-val-length-min="2" data-val-length="资料标题必须包含 2~30 个字符。">
                                            <div data-valmsg-for="articleTitle" data-valmsg-replace="true"></div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-1 form-control-label" for="article_desc">资料摘要</label>
                                        <div class="col-md-11">
                                            <textarea id="article_desc" name="articleDesc" rows="5" class="form-control" placeholder="请输入资料摘要..."
                                                      data-val="true" data-val-required="请输入资料摘要"></textarea>
                                            <div data-valmsg-for="articleDesc" data-valmsg-replace="true"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 pull-left">
                                    <div class="form-group row">
                                        <label class="col-md-2 form-control-label" for="article_class">资料分类</label>
                                        <div class="col-md-8">
                                            <select id="article_class" name="articleClass" class="form-control"
                                                    data-val="true" data-val-required="请选择资料分类">
                                                <option value="">请选择...</option>
                                                <option value="C002">体育产业规划</option>
                                                <option value="C003">体育产业商务文案</option>
                                                <option value="C004">体育企业案例</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2">
                                            <button type="button" class="btn btn-primary btn-sm">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2 form-control-label" for="article_author">资料作者</label>
                                        <div class="col-md-10">
                                            <input type="text" id="article_author" name="articleAuthor" class="form-control"
                                                   placeholder="请输入资料作者...">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 pull-right">
                                    <div class="form-group row">
                                        <label class="col-md-2 form-control-label" for="article_date">发布时间</label>
                                        <div class="col-md-10">
                                            <input type="text" id="article_date" name="articleDate" class="form-control"
                                                   placeholder="请输入发布时间...">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2 form-control-label" for="article_download_price">下载价格</label>
                                        <div class="col-md-10">
                                            <input type="text" id="article_download_price" name="articleDownloadPrice"
                                                   class="form-control" placeholder="请输入下载价格(元)...">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 clearfix">
                                    <div class="form-group row">
                                        <label class="col-md-1 form-control-label">资料标签</label>
                                        <div class="col-md-11">
                                            <button type="button" class="btn btn-sm btn-info">运动项目</button>
                                            <button type="button" class="btn btn-sm btn-info">项目历史</button>
                                            <button type="button" class="btn btn-sm btn-info">竞赛规则</button>
                                            <button type="button" class="btn btn-sm btn-info">场地规格</button>
                                            <button type="button" class="btn btn-sm btn-info">体育产业项目</button>
                                            <button type="button" class="btn btn-sm btn-info">体育产业园区</button>
                                            <button type="button" class="btn btn-sm btn-info">体育特色小镇</button>
                                            <button type="button" class="btn btn-sm btn-info">体育综合体</button>
                                            <button type="button" class="btn btn-sm btn-info">体育产业开发案例</button>
                                            <button type="button" class="btn btn-sm btn-info">产业政策</button>
                                            <button type="button" class="btn btn-sm btn-primary">
                                                <i class="fa fa-plus"></i> 添加
                                            </button>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-1 form-control-label">资料上传</label>
                                        <div class="col-md-9">
                                            <input type="file" id="file-input" name="file-input">
                                        </div>
                                        <div class="col-md-2">
                                            <button type="button" class="btn btn-primary pull-right" id="article_submit">
                                                <i class="fa fa-check"></i> 保 存
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right"></div>
                    </div>
                </div>
                <!--/.col-->
            </div>
            <!--/.row-->
        </div>

    </div>
</layout:override>

<c:import url="../Shared/GeneralLayout.jsp">
    <c:param name="nav" value="setting"/>
</c:import>
