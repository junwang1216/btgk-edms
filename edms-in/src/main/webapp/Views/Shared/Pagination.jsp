<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<div class="row">
    <div class="offset-4 col-md-2">
        <select class="form-control">
            <option>每页10条</option>
            <option>每页20条</option>
            <option selected>每页30条</option>
            <option>每页50条</option>
            <option>每页100条</option>
        </select>
    </div>
    <div class="col-md-6">
        <ul class="pagination pull-right">
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
</div>
