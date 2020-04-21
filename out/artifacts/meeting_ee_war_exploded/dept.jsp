<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <small>部门管理</small>
    </h2>
    <fieldset id="">
        <legend>添加部门</legend>
        <div class="form-group">
            <form action="/AddDeptServlet" method="post" class="form-inline">
                <label for="">部门名称:</label>
                <input type="text" placeholder="请输入部门名称" class="form-control" name="departmentname"/>
                <input type="submit" value="添加" class="btn btn-primary" />
            </form>
        </div>
    </fieldset>
    <!-- 添加部门开始 -->
    <strong>所有部门:</strong>
    <table class="table table-hover">
        <thead>
        <tr class="info">
            <td>部门编号</td>
            <td>部门名称</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.depts}" var="d">
            <tr>
                <td>${d.departmentId}</td>
                <td>${d.departmentName}</td>
                <td>
                    <a class="btn btn-default" href="/DeleteDeptServlet?id=${d.departmentId}">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <!-- 添加部门开始 -->
</div>
<!--引入jquery-->
<script src="${APP_PATH}/js/jquery.min.js"></script>
<!--引入bootstrap的js功能-->
<script src="${APP_PATH}/js/bootstrap.min.js"></script>
</body>

</html>