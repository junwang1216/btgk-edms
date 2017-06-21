<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.admin.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_settings/indexer.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <strong>建立文档索引</strong>
                            <small>Indexer</small>
                        </div>
                        <div class="card-block">
                            <form action="" method="post" class="form-horizontal ">
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="indexer_path">索引目录</label>
                                    <div class="col-md-9">
                                        <input type="text" id="indexer_path" name="indexerName" class="form-control" placeholder="请输入索引目录...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="indexer_desc">索引描述</label>
                                    <div class="col-md-9">
                                        <textarea id="indexer_desc" name="indexerDesc" rows="5" class="form-control" placeholder="请输入索引描述.."></textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right">
                            <button type="reset" class="btn btn-danger">
                                <i class="fa fa-ban"></i> 清 空
                            </button>
                            <button type="button" class="btn btn-primary">
                                <i class="fa fa-check"></i> 开始建立
                            </button>
                        </div>
                        <div class="card-block">
                            <table class="table table-responsive">
                                <tr><td><p class="text-muted">...</p></td></tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <strong>资料标签</strong>
                            <small>Form</small>
                        </div>
                        <div class="card-block">
                            <form action="" method="post" class="form-horizontal">
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="tag_name">标签名称</label>
                                    <div class="col-md-9">
                                        <input type="text" id="tag_name" name="tagName" class="form-control" placeholder="请输入标签名称...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="tag_desc">标签描述</label>
                                    <div class="col-md-9">
                                        <textarea id="tag_desc" name="tagDesc" rows="5" class="form-control" placeholder="请输入标签描述.."></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label">标签状态</label>
                                    <div class="col-md-9">
                                        <label class="radio-inline" for="tag_status1">
                                            <input type="radio" id="tag_status1" name="tagStatus" value="1" checked> 正常
                                        </label>
                                        <label class="radio-inline" for="tag_status2">
                                            <input type="radio" id="tag_status2" name="tagStatus" value="2"> 锁定
                                        </label>
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
                                    <th>选择</th>
                                    <th>标签名称</th>
                                    <th>标签描述</th>
                                    <th>状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel2">
                                                <input type="checkbox" id="tag_sel2" name="tagId" value="1"> 选择
                                            </label>
                                        </div>
                                    </td>
                                    <td>科技</td>
                                    <td>标签描述</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel1">
                                                <input type="checkbox" id="tag_sel1" name="tagId" value="1"> 选择
                                            </label>
                                        </div>
                                    </td>
                                    <td>计算机</td>
                                    <td>标签描述</td>
                                    <td><span class="badge badge-default">锁定</span></td>
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
    <c:param name="sub" value="indexer"/>
</c:import>
