<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/18 0018
  Time: 下午 3:12
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
        <small>查看会议室</small>
    </h2>
    <fieldset id="">
        <legend>会议室信息</legend>
        <form class="form-horizontal col-md-8" method="post" action="/update">
            <!-- 将id以隐藏域的形式保存在jsp页面，为了方便之后的修改 -->
            <%--<input type="hidden" value="${room.meetingRoomId}" name="roomid" />--%>
            <div class="form-group">
                <label for="" class="col-md-3">门牌号</label>
                <div class="col-md-9">
                    <input type="text" name="meetingRoomId" placeholder="请输入门牌号" readonly class="form-control" value="${room.meetingRoomId}" />
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-3">会议室名称</label>
                <div class="col-md-9">
                    <input type="text" name="meetingRoomName" placeholder="请输入会议室名称" class="form-control" value="${room.meetingRoomName}" />
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-3">最多容纳人数</label>
                <div class="col-md-9">
                    <input type="text" name="meetingRoomMax" placeholder="请输入最多容纳人数" class="form-control" value="${room.meetingRoomMax}" />
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-3">当前状态:</label>
                <div class="radio col-md-9">
                    <c:if test="${room.meetingRoomState == 1}">
                        <label for="startuseing">
                            <input id="startuseing" type="radio" name="meetingRoomState" value="1" checked/>启用
                        </label>
                        <label for="forbidden">
                            <input id="forbidden" type="radio" name="meetingRoomState" value="0"/>停用
                        </label>
                    </c:if>
                    <c:if test="${room.meetingRoomState == 0}">
                        <label for="startuseing">
                            <input id="startuseing" type="radio" name="meetingRoomState" value="1"/>启用
                        </label>
                        <label for="forbidden">
                            <input id="forbidden" type="radio" name="meetingRoomState" value="0" checked/>停用
                        </label>
                    </c:if>

                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-3">备注:</label>
                <div class="col-md-9">
                    <textarea class="form-control" name="meetingRoomRemark" rows="" cols="">${room.meetingRoomRemark}</textarea>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-10 col-md-offset-2">
                    <input type="submit" value="修改" class="btn btn-success" />
                    <input type="button" value="返回" class="btn btn-danger" onclick="history.back();" />
                </div>
            </div>
        </form>
    </fieldset>
</div>
<!--引入jquery-->
<script src="${APP_PATH}/js/jquery.min.js"></script>
<!--引入bootstrap的js功能-->
<script src="${APP_PATH}/js/bootstrap.min.js"></script>
</body>

</html>