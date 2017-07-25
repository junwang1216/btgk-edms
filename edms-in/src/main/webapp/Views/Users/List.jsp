<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_users/list.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
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
                                    <label class="col-md-2 form-control-label" for="user_name">用户姓名</label>
                                    <div class="col-md-10">
                                        <input type="text" id="user_name" name="userName" class="form-control" placeholder="请输入用户姓名...">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 form-control-label" for="user_account">用户账户</label>
                                    <div class="col-md-10">
                                        <input type="text" id="user_account" name="userAccount" class="form-control" placeholder="请输入用户账户...">
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
                                    <th>用户姓名</th>
                                    <th>用户账户</th>
                                    <th>余额</th>
                                    <th>下载量</th>
                                    <th>访问量</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
                                </tr>
                                <tr>
                                    <td>张某某</td>
                                    <td>user92519081</td>
                                    <td>100.00元</td>
                                    <td>1000次</td>
                                    <td>13160次</td>
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
</layout:override>

<c:import url="../Shared/GeneralLayout.jsp">
    <c:param name="nav" value="setting"/>
</c:import>
