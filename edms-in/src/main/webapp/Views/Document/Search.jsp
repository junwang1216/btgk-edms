<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_CSS%>">
    <style type="text/css">
        .article-list th {
            padding: 0.75rem;
        }
        .doc-title, .doc-class {
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
            max-width: 200px;
        }
        .doc-note {
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
            max-width: 300px;
        }
    </style>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_document/search.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong>资料检索</strong>
                            <small>Document Search</small>
                        </div>
                        <div class="card-block">
                            <form id="article_form" method="post" class="form-horizontal" novalidate onsubmit="return false;">
                                <div class="form-group row">
                                    <div class="col-md-3">
                                        <select id="article_option" name="articleOption" class="form-control">
                                            <option value="">检索选项</option>
                                            <option value="1">分类检索</option>
                                            <option value="2">关键字检索</option>
                                            <option value="3">模糊查询</option>
                                            <option value="4">精确查询</option>
                                        </select>
                                    </div>
                                    <div class="col-md-5">
                                        <input type="text" id="article_keywords" name="articleKeywords" class="form-control" placeholder="请输入...">
                                    </div>
                                    <div class="col-md-4">
                                        <button type="button" class="btn btn-primary pull-right">
                                            <i class="fa fa-search"></i> 检 索
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right"></div>
                        <div class="card-block">
                            <table class="table table-striped table-sm article-list">
                                <thead>
                                <tr>
                                    <th class="doc-no">资料编号</th>
                                    <th class="doc-title">资料标题</th>
                                    <th class="doc-class">资料分类</th>
                                    <th class="doc-note">资料摘要</th>
                                    <th class="doc-author">资料作者</th>
                                    <th class="doc-public">发布时间</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr data-id="">
                                    <td class="doc-no">C00120171212182211</td>
                                    <td class="doc-title">计算机科技类资料文献标题</td>
                                    <td class="doc-class">国内外体育产业政策</td>
                                    <td class="doc-note">计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td class="doc-author">张教授</td>
                                    <td class="doc-public">2017-01-24</td>
                                    <td>
                                        <a href="/admin/document/edit/C00120171212182211" class="btn btn-sm btn-primary article-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="/admin/document/detail/C00120171212182211" class="btn btn-sm btn-primary article-query" title="查询资料">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="doc-no">C00120171212182211</td>
                                    <td class="doc-title">计算机科技类资料文献标题</td>
                                    <td class="doc-class">国内外体育产业政策</td>
                                    <td class="doc-note">计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td class="doc-author">张教授</td>
                                    <td class="doc-public">2017-01-24</td>
                                    <td>
                                        <a href="/admin/document/edit/C00120171212182211" class="btn btn-sm btn-primary article-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="/admin/document/detail/C00120171212182211" class="btn btn-sm btn-primary article-query" title="查询资料">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="doc-no">C00120171212182211</td>
                                    <td class="doc-title">计算机科技类资料文献标题</td>
                                    <td class="doc-class">国内外体育产业政策</td>
                                    <td class="doc-note">计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td class="doc-author">张教授</td>
                                    <td class="doc-public">2017-01-24</td>
                                    <td>
                                        <a href="/admin/document/edit/C00120171212182211" class="btn btn-sm btn-primary article-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="/admin/document/detail/C00120171212182211" class="btn btn-sm btn-primary article-query" title="查询资料">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="doc-no">C00120171212182211</td>
                                    <td class="doc-title">计算机科技类资料文献标题</td>
                                    <td class="doc-class">国内外体育产业政策</td>
                                    <td class="doc-note">计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td class="doc-author">张教授</td>
                                    <td class="doc-public">2017-01-24</td>
                                    <td>
                                        <a href="/admin/document/edit/C00120171212182211" class="btn btn-sm btn-primary article-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="/admin/document/detail/C00120171212182211" class="btn btn-sm btn-primary article-query" title="查询资料">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="doc-no">C00120171212182211</td>
                                    <td class="doc-title">计算机科技类资料文献标题</td>
                                    <td class="doc-class">国内外体育产业政策</td>
                                    <td class="doc-note">计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td class="doc-author">张教授</td>
                                    <td class="doc-public">2017-01-24</td>
                                    <td>
                                        <a href="/admin/document/edit/C00120171212182211" class="btn btn-sm btn-primary article-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="/admin/document/detail/C00120171212182211" class="btn btn-sm btn-primary article-query" title="查询资料">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="doc-no">C00120171212182211</td>
                                    <td class="doc-title">计算机科技类资料文献标题</td>
                                    <td class="doc-class">国内外体育产业政策</td>
                                    <td class="doc-note">计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td class="doc-author">张教授</td>
                                    <td class="doc-public">2017-01-24</td>
                                    <td>
                                        <a href="/admin/document/edit/C00120171212182211" class="btn btn-sm btn-primary article-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="/admin/document/detail/C00120171212182211" class="btn btn-sm btn-primary article-query" title="查询资料">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="doc-no">C00120171212182211</td>
                                    <td class="doc-title">计算机科技类资料文献标题</td>
                                    <td class="doc-class">国内外体育产业政策</td>
                                    <td class="doc-note">计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td class="doc-author">张教授</td>
                                    <td class="doc-public">2017-01-24</td>
                                    <td>
                                        <a href="/admin/document/edit/C00120171212182211" class="btn btn-sm btn-primary article-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="/admin/document/detail/C00120171212182211" class="btn btn-sm btn-primary article-query" title="查询资料">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="doc-no">C00120171212182211</td>
                                    <td class="doc-title">计算机科技类资料文献标题</td>
                                    <td class="doc-class">国内外体育产业政策</td>
                                    <td class="doc-note">计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td class="doc-author">张教授</td>
                                    <td class="doc-public">2017-01-24</td>
                                    <td>
                                        <a href="/admin/document/edit/C00120171212182211" class="btn btn-sm btn-primary article-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="/admin/document/detail/C00120171212182211" class="btn btn-sm btn-primary article-query" title="查询资料">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="doc-no">C00120171212182211</td>
                                    <td class="doc-title">计算机科技类资料文献标题</td>
                                    <td class="doc-class">国内外体育产业政策</td>
                                    <td class="doc-note">计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td class="doc-author">张教授</td>
                                    <td class="doc-public">2017-01-24</td>
                                    <td>
                                        <a href="/admin/document/edit/C00120171212182211" class="btn btn-sm btn-primary article-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="/admin/document/detail/C00120171212182211" class="btn btn-sm btn-primary article-query" title="查询资料">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="doc-no">C00120171212182211</td>
                                    <td class="doc-title">计算机科技类资料文献标题</td>
                                    <td class="doc-class">国内外体育产业政策</td>
                                    <td class="doc-note">计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td class="doc-author">张教授</td>
                                    <td class="doc-public">2017-01-24</td>
                                    <td>
                                        <a href="/admin/document/edit/C00120171212182211" class="btn btn-sm btn-primary article-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="/admin/document/detail/C00120171212182211" class="btn btn-sm btn-primary article-query" title="查询资料">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <div>
                                <%@ include file="../Shared/Pagination.jsp" %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/.row-->
        </div>

    </div>
</layout:override>

<c:import url="../Shared/GeneralLayout.jsp">
    <c:param name="nav" value="setting"/>
</c:import>
