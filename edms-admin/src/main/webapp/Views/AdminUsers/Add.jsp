<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.admin.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_users/add.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong>用户分配</strong>
                            <small>Users</small>
                        </div>
                        <div class="card-block">
                            <form action="" method="post" class="form-horizontal">
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="user_account">用户账户</label>
                                    <div class="col-md-10">
                                        <input type="text" id="user_account" name="userAccount" class="form-control" value="user98012563" readonly>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="user_name">用户姓名</label>
                                    <div class="col-md-10">
                                        <input type="text" id="user_name" name="userName" class="form-control" placeholder="请输入用户姓名...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="user_idcard">身份证号</label>
                                    <div class="col-md-10">
                                        <input type="text" id="user_idcard" name="userIdCard" class="form-control" placeholder="请输入身份证号...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label">用户状态</label>
                                    <div class="col-md-10">
                                        <label class="radio-inline" for="user_status1">
                                            <input type="radio" id="user_status1" name="userStatus" value="1" checked> 正常
                                        </label>
                                        <label class="radio-inline" for="user_status2">
                                            <input type="radio" id="user_status2" name="userStatus" value="2"> 锁定
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
                                    <th></th>
                                    <th>用户姓名</th>
                                    <th>用户账户</th>
                                    <th>身份证号</th>
                                    <th>用户状态</th>
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
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>370782198012311421</td>
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
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>370782198012311421</td>
                                    <td><span class="badge badge-default">锁定</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel3">
                                                <input type="checkbox" id="tag_sel3" name="tagId" value="1"> 选择
                                            </label>
                                        </div>
                                    </td>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>370782198012311421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="checkbox">
                                            <label for="tag_sel4">
                                                <input type="checkbox" id="tag_sel4" name="tagId" value="1"> 选择
                                            </label>
                                        </div>
                                    </td>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>370782198012311421</td>
                                    <td><span class="badge badge-success">正常</span></td>
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
