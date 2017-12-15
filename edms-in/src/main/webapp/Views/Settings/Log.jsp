<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_CSS%>">
    <style type="text/css">
        .log-list th {
            padding: 0.75rem;
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
                            <strong>系统日志</strong>
                            <small>Log</small>
                        </div>
                        <div class="card-block">
                            <form action="" method="post" class="form-horizontal">
                                <div class="form-group row">
                                    <div class="col-md-2">
                                        <select id="log_date" name="logDate" class="form-control">
                                            <option>最近一个月</option>
                                            <option>最近三个月</option>
                                            <option>最近六个月</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="log_start" name="logStart" class="form-control" placeholder="开始日期">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="log_end" name="logEnd" class="form-control" placeholder="结束日期">
                                    </div>
                                    <div class="col-md-2">
                                        <select id="log_type" name="logType" class="form-control">
                                            <option>日志类型</option>
                                            <option>通行证</option>
                                            <option>文档管理</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <button type="button" class="btn btn-primary pull-right">
                                            <i class="fa fa-search"></i> 检 索
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer">
                            <button type="button" class="btn btn-danger">
                                <i class="fa fa-trash"></i> 清除日志
                            </button>
                        </div>
                        <div class="card-block">
                            <table class="table table-striped table-sm log-list">
                                <thead>
                                <tr>
                                    <th class="log-no">日志编号</th>
                                    <th class="log-type">日志类型</th>
                                    <th class="log-content">日志内容</th>
                                    <th class="log-account">用户名</th>
                                    <th class="log-address">客户端IP</th>
                                    <th class="log-date">日志时间</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr data-id="">
                                    <td class="log-no">20171215101812</td>
                                    <td class="log-type">通行证</td>
                                    <td class="log-content">用户登录</td>
                                    <td class="log-account">user20171215</td>
                                    <td class="log-address">10.11.14.67</td>
                                    <td class="log-date">2017-01-24 12:12:08</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-danger" title="删除日志">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="log-no">20171215101812</td>
                                    <td class="log-type">通行证</td>
                                    <td class="log-content">用户退出</td>
                                    <td class="log-account">user20171215</td>
                                    <td class="log-address">10.11.14.67</td>
                                    <td class="log-date">2017-01-24 12:12:08</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-danger" title="删除日志">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="log-no">20171215101812</td>
                                    <td class="log-type">通行证</td>
                                    <td class="log-content">完善信息</td>
                                    <td class="log-account">user20171215</td>
                                    <td class="log-address">10.11.14.67</td>
                                    <td class="log-date">2017-01-24 12:12:08</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-danger" title="删除日志">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="log-no">20171215101812</td>
                                    <td class="log-type">文档管理</td>
                                    <td class="log-content">文档检索</td>
                                    <td class="log-account">user20171215</td>
                                    <td class="log-address">10.11.14.67</td>
                                    <td class="log-date">2017-01-24 12:12:08</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-danger" title="删除日志">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="log-no">20171215101812</td>
                                    <td class="log-type">文档管理</td>
                                    <td class="log-content">文档检索</td>
                                    <td class="log-account">user20171215</td>
                                    <td class="log-address">10.11.14.67</td>
                                    <td class="log-date">2017-01-24 12:12:08</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-danger" title="删除日志">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="log-no">20171215101812</td>
                                    <td class="log-type">通行证</td>
                                    <td class="log-content">完善信息</td>
                                    <td class="log-account">user20171215</td>
                                    <td class="log-address">10.11.14.67</td>
                                    <td class="log-date">2017-01-24 12:12:08</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-danger" title="删除日志">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="log-no">20171215101812</td>
                                    <td class="log-type">文档管理</td>
                                    <td class="log-content">文档检索</td>
                                    <td class="log-account">user20171215</td>
                                    <td class="log-address">10.11.14.67</td>
                                    <td class="log-date">2017-01-24 12:12:08</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-danger" title="删除日志">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="log-no">20171215101812</td>
                                    <td class="log-type">通行证</td>
                                    <td class="log-content">完善信息</td>
                                    <td class="log-account">user20171215</td>
                                    <td class="log-address">10.11.14.67</td>
                                    <td class="log-date">2017-01-24 12:12:08</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-danger" title="删除日志">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="log-no">20171215101812</td>
                                    <td class="log-type">通行证</td>
                                    <td class="log-content">完善信息</td>
                                    <td class="log-account">user20171215</td>
                                    <td class="log-address">10.11.14.67</td>
                                    <td class="log-date">2017-01-24 12:12:08</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-danger" title="删除日志">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td class="log-no">20171215101812</td>
                                    <td class="log-type">通行证</td>
                                    <td class="log-content">完善信息</td>
                                    <td class="log-account">user20171215</td>
                                    <td class="log-address">10.11.14.67</td>
                                    <td class="log-date">2017-01-24 12:12:08</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-danger" title="删除日志">
                                            <i class="fa fa-trash"></i>
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
    <c:param name="menu" value="setting"/>
    <c:param name="subMenu" value="log"/>
</c:import>
