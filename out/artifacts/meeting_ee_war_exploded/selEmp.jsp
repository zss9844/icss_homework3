<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/18 0018
  Time: 下午 3:11
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
        人员管理
        <small>搜素员工</small>
    </h2>
    <fieldset id="">
        <legend>搜素员工</legend>
        <div class="form-group">
            <form action="" method="post" class="form-inline">
                <label for="">姓名:</label>
                <input type="text" placeholder="请输入姓名" class="form-control"/>
                <label for="">账号名:</label>
                <input type="text" placeholder="请输入账号名" class="form-control"/>
                <label for="">状态:</label>
                <div class="radio">
                    <label for="">
                        <input type="radio" name="status" value="1" checked/>已审批
                    </label>
                    <label for="">
                        <input type="radio" name="status" value="0"/>待审批
                    </label>
                    <label for="">
                        <input type="radio" name="status" value="2"/>已关闭
                    </label>
                    <label for="">
                        <input type="radio" name="status" value="3"/>所有
                    </label>
                </div>
                <input type="button" value="查询" class="btn btn-primary" />
                <input type="button" value="重置" class="btn btn-danger" />
            </form>
        </div>
    </fieldset>
    <!-- 查询结果开始 -->
    <strong>查询结果:</strong>
    <table class="table table-hover">
        <thead>
        <tr class="info">
            <td>姓名</td>
            <td>账号名</td>
            <td>联系电话</td>
            <td>电子邮件</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>关闭账号</td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>关闭账号</td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>关闭账号</td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>关闭账号</td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>关闭账号</td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>关闭账号</td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>关闭账号</td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>关闭账号</td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>关闭账号</td>
        </tr>
        </tbody>
    </table>
    <!-- 查询结果开始 -->
    <nav class="text-center">
        <ul class="pagination">
            <li><a href="#">&laquo;</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li class="active"><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">&raquo;</a></li>
        </ul>
    </nav>
</div>
<!--引入jquery-->
<script src="${APP_PATH}/js/jquery.min.js"></script>
<!--引入bootstrap的js功能-->
<script src="${APP_PATH}/js/bootstrap.min.js"></script>
</body>
</html>
