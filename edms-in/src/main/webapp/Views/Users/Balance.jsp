<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_CSS%>">
    <style type="text/css">
        .balance-list th, .balance-list td {
            padding: 0.75rem;
        }
    </style>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_users/balance.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong>用户余额</strong>
                            <small>Balance</small>
                        </div>
                        <div class="card-block">
                            <form action="" method="post" class="form-horizontal">
                                <div class="form-group row">
                                    <div class="col-md-2">
                                        <select id="balance_date" name="balanceDate" class="form-control">
                                            <option>请选择...</option>
                                            <option selected>最近一个月</option>
                                            <option>最近三个月</option>
                                            <option>最近六个月</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="balance_start" name="balanceStart" class="form-control" placeholder="开始日期">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="balance_end" name="balanceEnd" class="form-control" placeholder="结束日期">
                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" class="btn btn-primary pull-right">
                                            <i class="fa fa-search"></i> 检 索
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right"></div>
                        <div class="card-block">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item active">
                                    <a class="nav-link" data-toggle="tab" href="#balance_list" role="tab"
                                       aria-controls="balance_list" aria-expanded="true">全部记录</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#recharge_list" role="tab"
                                       aria-controls="recharge_list" aria-expanded="false">充值记录</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#consumption_list" role="tab"
                                       aria-controls="consumption_list" aria-expanded="false">消费记录</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="balance_list" role="tabpanel" aria-expanded="true">
                                    <table class="table table-striped table-sm balance-list">
                                        <thead>
                                        <tr>
                                            <th>记录类型</th>
                                            <th>账户名</th>
                                            <th>真实姓名</th>
                                            <th>金额</th>
                                            <th>记录时间</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <%@ include file="../Shared/Pagination.jsp" %>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="recharge_list" role="tabpanel" aria-expanded="false">
                                    <table class="table table-striped table-sm balance-list">
                                        <thead>
                                        <tr>
                                            <th>记录类型</th>
                                            <th>账户名</th>
                                            <th>真实姓名</th>
                                            <th>金额</th>
                                            <th>记录时间</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-success">充值</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-success">+100.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <%@ include file="../Shared/Pagination.jsp" %>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="consumption_list" role="tabpanel" aria-expanded="false">
                                    <table class="table table-striped table-sm balance-list">
                                        <thead>
                                        <tr>
                                            <th>记录类型</th>
                                            <th>账户名</th>
                                            <th>真实姓名</th>
                                            <th>金额</th>
                                            <th>记录时间</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
                                        </tr>
                                        <tr>
                                            <td><span class="badge badge-danger">消费</span></td>
                                            <td>user92519081</td>
                                            <td>张某某</td>
                                            <td class="text-danger">-10.00元</td>
                                            <td>2017-05-01 12:00:34</td>
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
                </div>
                <!--/.col-->
            </div>
            <!--/.row-->
        </div>
    </div>
</layout:override>

<c:import url="../Shared/GeneralLayout.jsp">
    <c:param name="menu" value="user"/>
    <c:param name="subMenu" value="balance"/>
</c:import>
