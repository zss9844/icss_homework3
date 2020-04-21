<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/18 0018
  Time: 下午 3:04
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
        <small>注册审批</small>
    </h2>
    <!-- 注册审批开始 -->
    <strong>所有待审批的注册信息:</strong>
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
            <td>
                <a class="btn btn-default" href="#">通过</a>
                <a class="btn btn-default" href="#">不通过</a>
            </td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>
                <a class="btn btn-default" href="#">通过</a>
                <a class="btn btn-default" href="#">不通过</a>
            </td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>
                <a class="btn btn-default" href="#">通过</a>
                <a class="btn btn-default" href="#">不通过</a>
            </td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>
                <a class="btn btn-default" href="#">通过</a>
                <a class="btn btn-default" href="#">不通过</a>
            </td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>
                <a class="btn btn-default" href="#">通过</a>
                <a class="btn btn-default" href="#">不通过</a>
            </td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>
                <a class="btn btn-default" href="#">通过</a>
                <a class="btn btn-default" href="#">不通过</a>
            </td>
        </tr>
        <tr>
            <td>张三</td>
            <td>TOM</td>
            <td>13088886666</td>
            <td>tom@qq.com</td>
            <td>
                <a class="btn btn-default" href="#">通过</a>
                <a class="btn btn-default" href="#">不通过</a>
            </td>
        </tr>
        </tbody>
    </table>
    <!-- 注册审批结束 -->
</div>
<!--引入jquery-->
<script src="${APP_PATH}/js/jquery.min.js"></script>
<!--引入bootstrap的js功能-->
<script src="${APP_PATH}/js/bootstrap.min.js"></script>
</body>

</html>
