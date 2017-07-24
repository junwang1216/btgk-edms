<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

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
                            <strong>充值记录</strong>
                            <small>Balance</small>
                        </div>
                        <div class="card-block">
                            <form action="" method="post" class="form-horizontal">
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="user_name">用户姓名</label>
                                    <div class="col-md-10">
                                        <input type="text" id="user_name" name="userName" class="form-control" placeholder="请输入用户姓名...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="user_account">用户账号</label>
                                    <div class="col-md-10">
                                        <input type="text" id="user_account" name="userAccount" class="form-control" placeholder="请输入用户账号...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="balance_date">充值时间</label>
                                    <div class="col-md-10">
                                        <select class="form-control" id="balance_date" name="balanceDate">
                                            <option>请选择...</option>
                                            <option selected>最近一个月</option>
                                            <option>最近三个月</option>
                                            <option>最近六个月</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right">
                            <button type="reset" class="btn btn-warning">
                                <i class="fa fa-usd"></i> 充 值
                            </button>
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
                                    <th>用户姓名</th>
                                    <th>用户账户</th>
                                    <th>充值金额</th>
                                    <th>充值时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>2017-05-01</td>
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
                <!--/.col-->
            </div>
            <!--/.row-->
        </div>
    </div>

    <div class="modal fade" id="smallModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;>
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="card">
                        <div class="card-header">
                            <strong>我要充值</strong> Recharge
                        </div>
                        <div class="card-block">
                            <form action="" method="post" class="form-horizontal ">
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="hf-email">充值用户</label>
                                    <div class="col-md-9">
                                        <input type="email" id="hf-email" name="hf-email" class="form-control" placeholder="请输入账户或者姓名...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="hf-password">充值金额</label>
                                    <div class="col-md-9">
                                        <input type="password" id="hf-password" name="hf-password" class="form-control" placeholder="请输入金额...">
                                    </div>
                                </div>
                                <div class="card card-inverse card-info text-center" style="float: left; width: 45%; margin-right: 10%;">
                                    <div class="card-header">冲 20 元</div>
                                    <div class="card-block">
                                        <blockquote class="card-blockquote">
                                            <p>冲 20 元送 2 元</p>
                                        </blockquote>
                                    </div>
                                </div>
                                <div class="card card-inverse card-info text-center" style="float: left; width: 45%;">
                                    <div class="card-header">冲 50 元</div>
                                    <div class="card-block">
                                        <blockquote class="card-blockquote">
                                            <p>冲 50 元送 10 元</p>
                                        </blockquote>
                                    </div>
                                </div>
                                <div class="card card-inverse card-info text-center" style="float: left; width: 45%; margin-right: 10%;">
                                    <div class="card-header">冲 100 元</div>
                                    <div class="card-block">
                                        <blockquote class="card-blockquote">
                                            <p>冲 100 元送 30 元</p>
                                        </blockquote>
                                    </div>
                                </div>
                                <div class="card card-inverse card-info text-center" style="float: left; width: 45%;">
                                    <div class="card-header">冲 500 元</div>
                                    <div class="card-block">
                                        <blockquote class="card-blockquote">
                                            <p>冲 500 元送 50 元</p>
                                        </blockquote>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer">
                            <button type="submit" class="btn btn-danger" data-dismiss="modal">
                                <i class="fa fa-ban"></i> 关 闭
                            </button>
                            <button type="reset" class="btn btn-info">
                                <i class="fa fa-check"></i> 确 认
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</layout:override>

<c:import url="../Admin/GeneralLayout.jsp">
    <c:param name="nav" value="setting"/>
</c:import>
