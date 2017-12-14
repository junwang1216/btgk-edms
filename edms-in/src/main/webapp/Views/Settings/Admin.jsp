<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_CSS%>">
    <style type="text/css">
        .admin-list th {
            padding: 0.75rem;
        }
    </style>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_users/add.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <strong>管理员设置</strong>
                            <small>Admin</small>
                        </div>
                        <div class="card-block">
                            <form id="admin_form" method="post" class="form-horizontal" novalidate onsubmit="return false;">
                                <input type="hidden" id="admin_id" name="adminId" value="">
                                    <div class="form-group row">
                                        <label class="col-md-2 form-control-label" for="admin_account">账户名</label>
                                        <div class="col-md-10">
                                            <input type="text" id="admin_account" name="adminAccount" class="form-control" value="admin98012563" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2 form-control-label" for="admin_name">真实姓名</label>
                                        <div class="col-md-10">
                                            <input type="text" id="admin_name" name="adminName" class="form-control" placeholder="请输入真实姓名...">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2 form-control-label" for="admin_mobile">手机号码</label>
                                        <div class="col-md-10">
                                            <input type="text" id="admin_mobile" name="adminMobile" class="form-control" placeholder="请输入手机号码...">
                                        </div>
                                    </div>
                                <div class="form-group row">
                                    <div class="offset-2 col-md-10">
                                        <button type="button" class="btn btn-primary">
                                            <i class="fa fa-check"></i> 保 存
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <strong>管理员列表</strong>
                            <small>List</small>
                        </div>
                        <div class="card-block">
                            <table class="table table-striped table-sm adminlist">
                                <thead>
                                <tr>
                                    <th>账户名</th>
                                    <th>真实姓名</th>
                                    <th>手机号码</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-primary user-edit" title="编辑用户">
                                            <i class="fa fa-pencil"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-danger user-delete" title="删除用户"
                                                data-toggle="modal" data-target="#warning_tips">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-primary user-edit" title="编辑用户">
                                            <i class="fa fa-pencil"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-danger user-delete" title="删除用户"
                                                data-toggle="modal" data-target="#warning_tips">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-primary user-edit" title="编辑用户">
                                            <i class="fa fa-pencil"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-danger user-delete" title="删除用户"
                                                data-toggle="modal" data-target="#warning_tips">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-primary user-edit" title="编辑用户">
                                            <i class="fa fa-pencil"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-danger user-delete" title="删除用户"
                                                data-toggle="modal" data-target="#warning_tips">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </td>
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

<c:import url="../Shared/GeneralLayout.jsp">
    <c:param name="menu" value="setting"/>
    <c:param name="subMenu" value="admin"/>
</c:import>
