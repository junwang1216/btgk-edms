<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_document/upload.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong>资料整理</strong>
                            <small>Document</small>
                        </div>
                        <div class="card-block">
                            <form action="" method="post" class="form-horizontal">
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="article_title">资料标题</label>
                                    <div class="col-md-10">
                                        <input type="text" id="article_title" name="articleTitle" class="form-control" placeholder="请输入资料标题...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="article_class">资料分类</label>
                                    <div class="col-md-3">
                                        <select id="article_class" name="articleClass" class="form-control">
                                            <option value="">请选择...</option>
                                            <option value="1">计算机科技类</option>
                                            <option value="2">体育经济类</option>
                                            <option value="3">文史艺术类</option>
                                        </select>
                                    </div>
                                    <div class="col-md-1">
                                        <button type="button" class="btn btn-primary">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="article_desc">资料摘要</label>
                                    <div class="col-md-10">
                                        <textarea id="article_desc" name="articleDesc" rows="5" class="form-control" placeholder="请输入资料摘要..."></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="article_author">资料作者</label>
                                    <div class="col-md-4">
                                        <input type="text" id="article_author" name="articleAuthor" class="form-control" placeholder="请输入资料作者...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="article_date">发布时间</label>
                                    <div class="col-md-4">
                                        <input type="text" id="article_date" name="articleDate" class="form-control" placeholder="请输入发布时间...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label">资料标签</label>
                                    <div class="col-md-10">
                                        <button type="button" class="btn btn-sm btn-info">计算机</button>
                                        <button type="button" class="btn btn-sm btn-info">体育</button>
                                        <button type="button" class="btn btn-sm btn-info">经济</button>
                                        <button type="button" class="btn btn-sm btn-info">计算机</button>
                                        <button type="button" class="btn btn-sm btn-info">体育</button>
                                        <button type="button" class="btn btn-sm btn-primary">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right">
                            <button type="reset" class="btn btn-danger">
                                <i class="fa fa-ban"></i> 清 空
                            </button>
                            <button type="button" class="btn btn-primary">
                                <i class="fa fa-check"></i> 保 存
                            </button>
                        </div>
                        <div class="card-block">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th>资料标题</th>
                                    <th>资料分类</th>
                                    <th>资料摘要</th>
                                    <th>资料作者</th>
                                    <th>资料标签</th>
                                    <th>发布时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel1">
                                                <input type="checkbox" id="tag_sel1" name="tagId" value="1">
                                            </label>
                                        </div>
                                    </td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td>张教授</td>
                                    <td>
                                        <span class="badge badge-success">计算机</span>
                                        <span class="badge badge-success">体育</span>
                                        <span class="badge badge-success">科技</span>
                                    </td>
                                    <td>2017-01-24</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel2">
                                                <input type="checkbox" id="tag_sel2" name="tagId" value="1">
                                            </label>
                                        </div>
                                    </td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td>张教授</td>
                                    <td>
                                        <span class="badge badge-success">计算机</span>
                                        <span class="badge badge-success">体育</span>
                                        <span class="badge badge-success">科技</span>
                                    </td>
                                    <td>2017-01-24</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel3">
                                                <input type="checkbox" id="tag_sel3" name="tagId" value="1">
                                            </label>
                                        </div>
                                    </td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td>张教授</td>
                                    <td>
                                        <span class="badge badge-success">计算机</span>
                                        <span class="badge badge-success">体育</span>
                                        <span class="badge badge-success">科技</span>
                                    </td>
                                    <td>2017-01-24</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel1">
                                                <input type="checkbox" id="tag_sel1" name="tagId" value="1">
                                            </label>
                                        </div>
                                    </td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td>张教授</td>
                                    <td>
                                        <span class="badge badge-success">计算机</span>
                                        <span class="badge badge-success">体育</span>
                                        <span class="badge badge-success">科技</span>
                                    </td>
                                    <td>2017-01-24</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel2">
                                                <input type="checkbox" id="tag_sel2" name="tagId" value="1">
                                            </label>
                                        </div>
                                    </td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td>张教授</td>
                                    <td>
                                        <span class="badge badge-success">计算机</span>
                                        <span class="badge badge-success">体育</span>
                                        <span class="badge badge-success">科技</span>
                                    </td>
                                    <td>2017-01-24</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel3">
                                                <input type="checkbox" id="tag_sel3" name="tagId" value="1">
                                            </label>
                                        </div>
                                    </td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td>张教授</td>
                                    <td>
                                        <span class="badge badge-success">计算机</span>
                                        <span class="badge badge-success">体育</span>
                                        <span class="badge badge-success">科技</span>
                                    </td>
                                    <td>2017-01-24</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel1">
                                                <input type="checkbox" id="tag_sel1" name="tagId" value="1">
                                            </label>
                                        </div>
                                    </td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td>张教授</td>
                                    <td>
                                        <span class="badge badge-success">计算机</span>
                                        <span class="badge badge-success">体育</span>
                                        <span class="badge badge-success">科技</span>
                                    </td>
                                    <td>2017-01-24</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel2">
                                                <input type="checkbox" id="tag_sel2" name="tagId" value="1">
                                            </label>
                                        </div>
                                    </td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td>张教授</td>
                                    <td>
                                        <span class="badge badge-success">计算机</span>
                                        <span class="badge badge-success">体育</span>
                                        <span class="badge badge-success">科技</span>
                                    </td>
                                    <td>2017-01-24</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel3">
                                                <input type="checkbox" id="tag_sel3" name="tagId" value="1">
                                            </label>
                                        </div>
                                    </td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                    <td>张教授</td>
                                    <td>
                                        <span class="badge badge-success">计算机</span>
                                        <span class="badge badge-success">体育</span>
                                        <span class="badge badge-success">科技</span>
                                    </td>
                                    <td>2017-01-24</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--/.col-->
            </div>
            <!--/.row-->
        </div>

    </div>
</layout:override>

<c:import url="../Admin/GeneralLayout.jsp">
    <c:param name="nav" value="setting"/>
</c:import>
