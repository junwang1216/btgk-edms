<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_CSS%>">
    <style type="text/css">
        .user-list th {
            padding: 0.75rem;
        }
        #user_recharge .money-list .btn {
            width: 6rem;
            padding: .75rem;
            margin: .2rem;
        }
    </style>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_users/list.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="modal fade" id="user_recharge" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-primary modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <form id="user_recharge_form" method="post" class="form-horizontal" novalidate onsubmit="return false;">
                        <input type="hidden" id="user_id" name="userId" value="">
                        <div class="form-group row">
                            <div class="col-md-12 text-center">
                                <div class="btn-group money-list" role="group">
                                    <button type="button" class="btn btn-outline-success">
                                        <span class="fa fa-jpy"></span> 10 元
                                    </button>
                                    <button type="button" class="btn btn-outline-success">
                                        <span class="fa fa-jpy"></span> 20 元
                                    </button>
                                </div>
                                <div class="btn-group money-list" role="group">
                                    <button type="button" class="btn btn-outline-success">
                                        <span class="fa fa-jpy"></span> 50 元
                                    </button>
                                    <button type="button" class="btn btn-outline-success">
                                        <span class="fa fa-jpy"></span> 100 元
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-jpy"></i></span>
                                    <input type="text" id="user_money" name="userMoney" class="form-control" placeholder="请输入金额...">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">取 消</button>
                    <button type="button" class="btn btn-danger">充 值</button>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong>用户检索</strong>
                            <small>Users</small>
                        </div>
                        <div class="card-block">
                            <form action="" method="post" class="form-horizontal">
                                <div class="form-group row">
                                    <div class="col-md-2">
                                        <select id="user_type" name="userType" class="form-control">
                                            <option value="">请选择检索项...</option>
                                            <option value="">账户名</option>
                                            <option value="">真实姓名</option>
                                            <option value="">手机号码</option>
                                            <option value="">身份证号</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        <select id="user_status" name="userStatus" class="form-control">
                                            <option value="">请选择状态...</option>
                                            <option value="">正常</option>
                                            <option value="">已锁定</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" id="user_keywords" name="userKeywords" class="form-control" placeholder="请输入关键字...">
                                    </div>
                                    <div class="col-md-2">
                                        <button type="button" class="btn btn-primary pull-right">
                                            <i class="fa fa-search"></i> 检 索
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right"></div>
                        <div class="card-block">
                            <table class="table table-striped table-sm user-list">
                                <thead>
                                <tr>
                                    <th>账户名</th>
                                    <th>真实姓名</th>
                                    <th>手机号码</th>
                                    <th>身份证号</th>
                                    <th>用户状态</th>
                                    <th>用户余额</th>
                                    <th>下载频次</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>user92519081</td>
                                    <td>张某某</td>
                                    <td>158****3167</td>
                                    <td>370782********1421</td>
                                    <td><span class="badge badge-success">正常</span></td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary user-refresh" title="重新编辑">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger user-recharge" title="充值金额"
                                           data-target="#user_recharge" data-toggle="modal">
                                            <i class="fa fa-money"></i>
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
                <!--/.col-->
            </div>
            <!--/.row-->
        </div>

    </div>
</layout:override>

<c:import url="../Shared/GeneralLayout.jsp">
    <c:param name="menu" value="user"/>
    <c:param name="subMenu" value="search"/>
</c:import>
