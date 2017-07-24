<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

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
                            <form action="" method="post" class="form-horizontal row">
                                <div class="form-group col-md-4">
                                    <label class="col-md-3 form-control-label" for="class_id">资料分类</label>
                                    <div class="col-md-9">
                                        <select id="class_id" name="classId" class="form-control">
                                            <option value="">请选择...</option>
                                            <option value="1">计算机科技类</option>
                                            <option value="2">文史艺术类</option>
                                            <option value="3">体育经济类</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-8">
                                    <label class="col-md-3 form-control-label" for="article_keywords">关键字</label>
                                    <div class="col-md-9">
                                        <input type="text" id="article_keywords" name="keywords" class="form-control" placeholder="请输入关键字...">
                                    </div>
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 form-control-label">资料标签</label>
                                    <div class="col-md-9">
                                        <button type="button" class="btn btn-sm btn-info">计算机</button>
                                        <button type="button" class="btn btn-sm btn-info">体育</button>
                                        <button type="button" class="btn btn-sm btn-info">经济</button>
                                        <button type="button" class="btn btn-sm btn-info">计算机</button>
                                        <button type="button" class="btn btn-sm btn-info">体育</button>
                                        <button type="button" class="btn btn-sm btn-info">经济</button>
                                        <button type="button" class="btn btn-sm btn-info">计算机</button>
                                        <button type="button" class="btn btn-sm btn-info">体育</button>
                                        <button type="button" class="btn btn-sm btn-info">经济</button>
                                        <button type="button" class="btn btn-sm btn-info">计算机</button>
                                        <button type="button" class="btn btn-sm btn-info">体育</button>
                                        <button type="button" class="btn btn-sm btn-info">经济</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right">
                            <button type="reset" class="btn btn-danger">
                                <i class="fa fa-ban"></i> 清 空
                            </button>
                            <button type="button" class="btn btn-primary">
                                <i class="fa fa-search"></i> 检 索
                            </button>
                        </div>
                        <div class="card-block">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>资料分类</th>
                                    <th>资料标题</th>
                                    <th>资料描述</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                <tr>
                                    <td>计算机科技类</td>
                                    <td>计算机科技类资料文献标题</td>
                                    <td>计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容，计算机科技类资料文献内容。</td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="row">
                                <div class="col-md-8">
                                    <ul class="pagination">
                                        <li class="page-item">
                                            <a class="page-link" href="#">首页</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">上一页</a>
                                        </li>
                                        <li class="page-item active">
                                            <a class="page-link" href="#">1</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">2</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">3</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">4</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">...</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">28</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">29</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">末页</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-control">
                                        <option>每页10条</option>
                                        <option>每页20条</option>
                                        <option selected>每页30条</option>
                                        <option>每页50条</option>
                                        <option>每页100条</option>
                                    </select>
                                </div>
                                <div class="col-md-2">
                                    <div class="controls">
                                        <div class="input-group">
                                            <span class="input-group-addon">第</span>
                                            <input class="form-control" size="16" type="text">
                                            <span class="input-group-addon">页</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/.row-->
        </div>

    </div>
</layout:override>

<c:import url="../Admin/GeneralLayout.jsp">
    <c:param name="nav" value="setting"/>
</c:import>
