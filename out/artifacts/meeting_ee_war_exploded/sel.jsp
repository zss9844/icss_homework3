<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/18 0018
  Time: 下午 3:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <small>查看会议室</small>
    </h2>
    <fieldset id="">
        <legend>所有会议室</legend>
        <table class="table table-hover">
            <thead>
            <tr class="info">
                <td>门牌编号</td>
                <td>会议室名称</td>
                <td>容纳人数</td>
                <td>当前状态</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.sels}" var="d">
                <tr>
                    <td>${d.roomNum}</td>
                    <td>${d.roomName}</td>
                    <td>${d.capacity}</td>
                    <td>${d.status}</td>
                    <td>
                        <a class="btn btn-default" href="/DeleteSelServlet?roomNum=${d.roomNum}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </fieldset>
</div>
<!--引入jquery-->
<script src="${APP_PATH}/js/jquery.min.js"></script>
<!--引入bootstrap的js功能-->
<script src="${APP_PATH}/js/bootstrap.min.js"></script>
</body>
</html>
