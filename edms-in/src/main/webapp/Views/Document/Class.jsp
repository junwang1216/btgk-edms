<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_CSS%>">
    <style type="text/css">
        .class-list {}
        .class-list th .dropdown-toggle {
            margin: 0 auto;
            font-weight: bold;
        }

        .tag-list {}
        .tag-list .btn {
            position: relative;
            margin: 10px 0 10px 16px;
        }
        .tag-list .btn i {
            position: absolute;
            right: -9px;
            top: -9px;
            width: 18px;
            height: 18px;
            border-radius: 9px;
            line-height: 18px;
        }
    </style>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_document/class.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <strong>资料分类</strong>
                            <small>Category</small>
                        </div>
                        <div class="card-block">
                            <form id="class_form" method="post" class="form-horizontal" novalidate onsubmit="return false;">
                                <input type="hidden" id="class_id" name="classId" value="">
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="class_name">分类标题</label>
                                    <div class="col-md-9">
                                        <input type="text" id="class_name" name="className" class="form-control" placeholder="请输入分类标题..."
                                               data-val="true" data-val-required="请输入分类标题"
                                               data-val-length-max="8" data-val-length-min="2" data-val-length="分类标题必须包含 2~8 个字符。">
                                        <div data-valmsg-for="className" data-valmsg-replace="true"></div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="class_desc">分类描述</label>
                                    <div class="col-md-9">
                                        <textarea id="class_desc" name="classDesc" rows="5" class="form-control" placeholder="请输入分类描述.."></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="offset-3 col-md-9">
                                        <button id="class_submit" type="button" class="btn btn-primary pull-right">
                                            <i class="fa fa-check"></i> 保 存
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right"></div>
                        <div class="card-block">
                            <table class="table table-striped table-sm text-center class-list">
                                <thead>
                                <tr>
                                    <th class="text-center">分类编号</th>
                                    <th class="text-center">分类标题</th>
                                    <th class="text-center">更新时间</th>
                                    <th class="text-center">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">状态
                                                <span class="caret"></span>
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="javascript:">Active</a>
                                                <a class="dropdown-item" href="javascript:">Inactive</a>
                                            </div>
                                        </div>
                                    </th>
                                    <th class="text-center"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr data-id="">
                                    <td>C001</td>
                                    <td>
                                        <a href="javascript:" class="btn btn-link class-title" data-toggle="popover"
                                           data-trigger="hover" data-placement="top" data-title="国内外体育产业政策"
                                           data-content="有描述有描述有描述，有描述有描述有描述有描述有描述。">国内外体育产业政策</a>
                                    </td>
                                    <td>2017-03-04</td>
                                    <td><span class="badge badge-danger">Inactive</span></td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-primary class-active" title="激活分类">
                                            <i class="fa fa-dot-circle-o"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-danger class-trash" title="删除分类"
                                                data-toggle="modal" data-target="#warning_tips">
                                            <i class="fa fa-trash-o"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>C002</td>
                                    <td>
                                        <a href="javascript:" class="btn btn-link class-title" data-toggle="popover"
                                           data-trigger="hover" data-placement="top" data-title="体育产业规划"
                                           data-content="没有描述">体育产业规划</a>
                                    </td>
                                    <td>2017-03-04</td>
                                    <td><span class="badge badge-success">Active</span></td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-danger class-disable" title="禁用分类">
                                            <i class="fa fa-ban"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-danger class-trash" title="删除分类"
                                                data-toggle="modal" data-target="#warning_tips">
                                            <i class="fa fa-trash-o"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>C003</td>
                                    <td>
                                        <a href="javascript:" class="btn btn-link class-title" data-toggle="popover"
                                           data-trigger="hover" data-placement="top" data-title="体育产业商务文案"
                                           data-content="没有描述">体育产业商务文案</a>
                                    </td>
                                    <td>2017-03-04</td>
                                    <td><span class="badge badge-success">Active</span></td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-danger class-disable" title="禁用分类">
                                            <i class="fa fa-ban"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-danger class-trash" title="删除分类"
                                                data-toggle="modal" data-target="#warning_tips">
                                            <i class="fa fa-trash-o"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr data-id="">
                                    <td>C004</td>
                                    <td>
                                        <a href="javascript:" class="btn btn-link class-title" data-toggle="popover"
                                           data-trigger="hover" data-placement="top" data-title="体育企业案例"
                                           data-content="没有描述">体育企业案例</a>
                                    </td>
                                    <td>2017-03-04</td>
                                    <td><span class="badge badge-success">Active</span></td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-danger class-disable" title="禁用分类">
                                            <i class="fa fa-ban"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-danger class-trash" title="删除分类"
                                                data-toggle="modal" data-target="#warning_tips">
                                            <i class="fa fa-trash-o"></i>
                                        </button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <strong>资料标签</strong>
                            <small>Tag</small>
                        </div>
                        <div class="card-block">
                            <form id="tag_form" method="post" class="form-horizontal" novalidate onsubmit="return false;">
                                <input type="hidden" id="tag_id" name="tagId" value="">
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="tag_name">标签名称</label>
                                    <div class="col-md-9">
                                        <input type="text" id="tag_name" name="tagName" class="form-control" placeholder="请输入标签名称..."
                                               data-val="true" data-val-required="请输入标签名称"
                                               data-val-length-max="8" data-val-length-min="2" data-val-length="标签名称必须包含 2~8 个字符。">
                                        <div data-valmsg-for="tagName" data-valmsg-replace="true"></div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="tag_desc">标签备注</label>
                                    <div class="col-md-9">
                                        <textarea id="tag_desc" name="tagDesc" rows="5" class="form-control" placeholder="请输入标签描述.."></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="offset-3 col-md-9">
                                        <button id="tag_submit" type="button" class="btn btn-primary pull-right">
                                            <i class="fa fa-check"></i> 保 存
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-right"></div>
                        <div class="card-block tag-list">
                            <button type="button" class="btn btn-sm btn-secondary tag-title" data-toggle="popover"
                                    data-trigger="hover" data-placement="top" data-title="运动项目" data-id=""
                                    data-content="没有描述"> 运动项目
                                <i class="fa fa-close bg-danger tag-trash" data-toggle="modal" data-target="#warning_tips"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-secondary tag-title" data-toggle="popover"
                                    data-trigger="hover" data-placement="top" data-title="项目历史" data-id=""
                                    data-content="没有描述"> 项目历史
                                <i class="fa fa-close bg-danger tag-trash" data-toggle="modal" data-target="#warning_tips"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-secondary tag-title" data-toggle="popover"
                                    data-trigger="hover" data-placement="top" data-title="竞赛规则" data-id=""
                                    data-content="没有描述"> 竞赛规则
                                <i class="fa fa-close bg-danger tag-trash" data-toggle="modal" data-target="#warning_tips"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-secondary tag-title" data-toggle="popover"
                                    data-trigger="hover" data-placement="top" data-title="场地规格" data-id=""
                                    data-content="没有描述"> 场地规格
                                <i class="fa fa-close bg-danger tag-trash" data-toggle="modal" data-target="#warning_tips"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-secondary tag-title" data-toggle="popover"
                                    data-trigger="hover" data-placement="top" data-title="运动项目" data-id=""
                                    data-content="没有描述"> 体育产业项目
                                <i class="fa fa-close bg-danger tag-trash" data-toggle="modal" data-target="#warning_tips"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-secondary tag-title" data-toggle="popover"
                                    data-trigger="hover" data-placement="top" data-title="体育产业园区" data-id=""
                                    data-content="没有描述"> 体育产业园区
                                <i class="fa fa-close bg-danger tag-trash" data-toggle="modal" data-target="#warning_tips"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-secondary tag-title" data-toggle="popover"
                                    data-trigger="hover" data-placement="top" data-title="体育特色小镇" data-id=""
                                    data-content="没有描述"> 体育特色小镇
                                <i class="fa fa-close bg-danger tag-trash" data-toggle="modal" data-target="#warning_tips"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-secondary tag-title" data-toggle="popover"
                                    data-trigger="hover" data-placement="top" data-title="体育综合体" data-id=""
                                    data-content="没有描述"> 体育综合体
                                <i class="fa fa-close bg-danger tag-trash" data-toggle="modal" data-target="#warning_tips"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-secondary tag-title" data-toggle="popover"
                                    data-trigger="hover" data-placement="top" data-title="体育产业开发案例" data-id=""
                                    data-content="没有描述"> 体育产业开发案例
                                <i class="fa fa-close bg-danger tag-trash" data-toggle="modal" data-target="#warning_tips"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-secondary tag-title" data-toggle="popover"
                                    data-trigger="hover" data-placement="top" data-title="产业政策" data-id=""
                                    data-content="没有描述"> 产业政策
                                <i class="fa fa-close bg-danger tag-trash" data-toggle="modal" data-target="#warning_tips"></i>
                            </button>
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
    <c:param name="menu" value="document"/>
    <c:param name="subMenu" value="class"/>
</c:import>
