<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.edms.in.layout.Blocks" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%-- JSTL表达式（判断，循环，输出） --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- 方法表达式（字符串截取，替换） --%>
<%@ taglib uri="http://www.sports.com/tags/tag" prefix="layout" %>

<layout:override name="<%=Blocks.BLOCK_HEADER_CSS%>">
    <style type="text/css">
        .article-detail .article-header {
            font-size: 1.5rem;
        }
        .article-detail .article-content td {
            border: none;
        }
        .article-detail .article-content .article-label {
            width: 120px;
            vertical-align: top;
            text-align: right;
        }
    </style>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_HEADER_SCRIPTS%>">
    <script async type="text/javascript" src="Content/js/require.js?v=${static_resource_version}"
            data-main="Content/js/app/admin_document/detail.js?v=${static_resource_version}"></script>
</layout:override>

<layout:override name="<%=Blocks.BLOCK_BODY%>">
    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong>资料详情</strong>
                            <small>Detail</small>
                        </div>
                        <div class="card-block article-detail">
                            <h1 class="article-header">2014篮球世界杯前8名球队的攻防能力分析</h1>
                            <hr>
                            <table class="table table-responsive article-content">
                                <tr>
                                    <td class="article-label">【作者】</td>
                                    <td><span>侯向锋</span>；<span>赵晋</span>；<span>景小俨</span>；</td>
                                </tr>
                                <tr>
                                    <td class="article-label">【机构】</td>
                                    <td>北京体育大学管理学院</td>
                                </tr>
                                <tr>
                                    <td class="article-label">【分类】</td>
                                    <td><span><a href="#">G841/体育竞赛类</a></span></td>
                                </tr>
                                <tr>
                                    <td class="article-label">【出版时间】</td>
                                    <td>2015-05-27 09:51</td>
                                </tr>
                                <tr>
                                    <td class="article-label">【摘要】</td>
                                    <td>
                                        <p>
                                            运用秩和比综合评价与录像观察等方法，通过对2014篮球世界杯24支参赛队伍前8名进行量化指标分析，并对前4名技术统计分别进行分析比较。
                                        </p>
                                        <p>
                                            进攻方面，美国队RSR值为0.917，属于A级水平；塞尔维亚、西班牙、法国分别为0.708、0.656、0.625，属于B级水平；
                                            防守方面，西班牙RSR值为0.925，属于A级水平；美国、巴西、立陶宛RSR值分别为0.725、0.650、0.600，属于B级水平。
                                            攻防方面，美国男篮RSR值为0.860，属于A级水平；西班牙0.735，属于B级水平；塞尔维亚、法国、立陶宛、巴西属于C级水平，分别为0.596、0.588、0.515和0.471；
                                            斯洛文尼亚和土耳其评级是最低的D级，RSR值都是0.397。
                                            本届世界杯8强队伍攻防RSR值与排名相关系数r=783(P&lt;0.05)，两者呈显著相关。前4名队伍在进攻方面，美国队占绝对优势，
                                            与其他3队在总中篮数与2分球中篮数等均存在显著差异。防守方面,美国的抢断和盖帽仍然与对手存在差异。
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="article-label">【关键词】</td>
                                    <td><span><a href="#">篮球世界杯</a>；<a href="#">攻防能力</a>；<a href="#">秩和比综合评价法</a>；</span></td>
                                </tr>
                                <tr>
                                    <td class="article-label">【下载频次】</td>
                                    <td>450次</td>
                                </tr>
                            </table>
                        </div>
                        <div class="card-footer text-left">
                            <a class="btn btn-sm btn-link" href="#">
                                <i class="fa fa-download"></i> 2014篮球世界杯前8名球队的攻防能力分析.doc
                            </a>
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
