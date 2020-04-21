<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/18 0018
  Time: 下午 3:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${APP_PATH}/css/bootstrap.min.css" />
</head>

<body>
<div class="container">
    <h2 class="page-header">
        会议预定
        <small>搜索会议</small>
    </h2>
    <fieldset id="">
        <legend>搜索会议</legend>
        <div class="form-group">
            <form action="" method="post" class="form-inline">
                <div class="col-md-4">
                    <label for="">会议名称:</label>
                    <input type="text" placeholder="请输入会议名称" class="form-control" />
                </div>
                <div class="col-md-4">
                    <label for="">会议室名称:</label>
                    <input type="text" placeholder="请输入会议室名称" class="form-control" />
                </div>
                <div class="col-md-4">
                    <label for="">预订者姓名:</label>
                    <input type="text" placeholder="请输入预订者姓名" class="form-control" />
                </div>
                <div class="col-md-12">
                    <label for="">预定日期:</label> 从
                    <input type="text" placeholder="" class="form-control" /> 到
                    <input type="text" placeholder="" class="form-control" />
                </div>
                <div class="col-md-12">
                    <label for="">会议日期:</label> 从
                    <input type="text" placeholder="" class="form-control" /> 到
                    <input type="text" placeholder="" class="form-control" />
                </div>

                <div class="text-center">
                    <input type="button" value="查询" class="btn btn-primary" />
                    <input type="button" value="重置" class="btn btn-danger" />
                </div>
            </form>
        </div>
    </fieldset>
    <!-- 查询结果开始 -->
    <strong>查询结果:</strong>
    <table class="table table-hover">
        <thead>
        <tr class="info">
            <td>会议名称</td>
            <td>会议室名称</td>
            <td>会议开始时间</td>
            <td>会议结束时间</td>
            <td>会议预定时间</td>
            <td>预定者</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>业务洽谈会</td>
            <td>第一会议室</td>
            <td>2019-2-4 8:00</td>
            <td>2019-2-4 9:00</td>
            <td>2019-2-3 8:00</td>
            <td>TOM</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>业务洽谈会</td>
            <td>第一会议室</td>
            <td>2019-2-4 8:00</td>
            <td>2019-2-4 9:00</td>
            <td>2019-2-3 8:00</td>
            <td>TOM</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>业务洽谈会</td>
            <td>第一会议室</td>
            <td>2019-2-4 8:00</td>
            <td>2019-2-4 9:00</td>
            <td>2019-2-3 8:00</td>
            <td>TOM</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>业务洽谈会</td>
            <td>第一会议室</td>
            <td>2019-2-4 8:00</td>
            <td>2019-2-4 9:00</td>
            <td>2019-2-3 8:00</td>
            <td>TOM</td>
            <td>查看详情</td>
        </tr>
        </tbody>
    </table>
    <!-- 查询结果开始 -->
    <nav class="text-center">
        <ul class="pagination">
            <li>
                <a href="#">&laquo;</a>
            </li>
            <li>
                <a href="#">1</a>
            </li>
            <li>
                <a href="#">2</a>
            </li>
            <li class="active">
                <a href="#">3</a>
            </li>
            <li>
                <a href="#">4</a>
            </li>
            <li>
                <a href="#">5</a>
            </li>
            <li>
                <a href="#">&raquo;</a>
            </li>
        </ul>
    </nav>
</div>
<!--引入jquery-->
<script src="${APP_PATH}/js/jquery.min.js"></script>
<!--引入bootstrap的js功能-->
<script src="${APP_PATH}/js/bootstrap.min.js"></script>
</body>

</html>