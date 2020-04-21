<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/18 0018
  Time: 下午 3:07
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
        个人中心
        <small>我的会议</small>
    </h2>
    <!-- 我的会议开始 -->
    <strong>我将参加的会议:</strong>
    <table class="table table-hover">
        <thead>
        <tr class="info">
            <td>会议名称</td>
            <td>会议室</td>
            <td>起始时间</td>
            <td>结束时间</td>
            <td>预定时间</td>
            <td>预定者</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>第三季度销售总结会</td>
            <td>第一会议室</td>
            <td>2019-2-4 9:00</td>
            <td>2019-2-4 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>与微软合作推广Java技术培训</td>
            <td>第二会议室</td>
            <td>2019-2-5 9:00</td>
            <td>2019-2-5 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>员工例行面试</td>
            <td>第三会议室</td>
            <td>2019-2-6 9:00</td>
            <td>2019-2-6 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>第三季度销售总结会</td>
            <td>第一会议室</td>
            <td>2019-2-4 9:00</td>
            <td>2019-2-4 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>与微软合作推广Java技术培训</td>
            <td>第二会议室</td>
            <td>2019-2-5 9:00</td>
            <td>2019-2-5 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>员工例行面试</td>
            <td>第三会议室</td>
            <td>2019-2-6 9:00</td>
            <td>2019-2-6 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>第三季度销售总结会</td>
            <td>第一会议室</td>
            <td>2019-2-4 9:00</td>
            <td>2019-2-4 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>与微软合作推广Java技术培训</td>
            <td>第二会议室</td>
            <td>2019-2-5 9:00</td>
            <td>2019-2-5 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>员工例行面试</td>
            <td>第三会议室</td>
            <td>2019-2-6 9:00</td>
            <td>2019-2-6 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>第三季度销售总结会</td>
            <td>第一会议室</td>
            <td>2019-2-4 9:00</td>
            <td>2019-2-4 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>与微软合作推广Java技术培训</td>
            <td>第二会议室</td>
            <td>2019-2-5 9:00</td>
            <td>2019-2-5 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        <tr>
            <td>员工例行面试</td>
            <td>第三会议室</td>
            <td>2019-2-6 9:00</td>
            <td>2019-2-6 11:00</td>
            <td>2019-2-3 11:00</td>
            <td>预定者</td>
            <td>查看详情</td>
        </tr>
        </tbody>
    </table>
    <!-- 我的会议结束 -->
</div>
<!--引入jquery-->
<script src="${APP_PATH}/js/jquery.min.js"></script>
<!--引入bootstrap的js功能-->
<script src="${APP_PATH}/js/bootstrap.min.js"></script>
</body>
</html>

