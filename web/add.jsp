<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/18 0018
  Time: 下午 3:03
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
        <small>添加会议室</small>
    </h2>
    <fieldset id="">
        <legend>会议室信息</legend>
        <form class="form-horizontal col-md-8" action="/AddRoomServlet" method="post">
            <div class="form-group">
                <label for="" class="col-md-2">门牌号</label>
                <div class="col-md-10">
                    <input type="text" placeholder="请输入门牌号" class="form-control" name="meetingRoomId"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">会议室名称</label>
                <div class="col-md-10">
                    <input type="text" placeholder="请输入会议室名称" class="form-control" name="meetingRoomName"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">最多容纳人数</label>
                <div class="col-md-10">
                    <input type="text" placeholder="请输入最多容纳人数" class="form-control" name="meetingRoomMax"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">当前状态:</label>
                <div class="radio col-md-10">
                    <label for="startuseing">
                        <input type="radio" name="meetingRoomState" value="1" checked id="startuseing"/>启用
                    </label>
                    <label for="forbidden">
                        <input type="radio" name="meetingRoomState" value="0" id="forbidden"/>停用
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">备注:</label>
                <div class="col-md-10">
                    <textarea class="form-control" name="meetingRoomRemark" rows="" cols=""></textarea>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-10 col-md-offset-2">
                    <input type="submit" value="注册" class="btn btn-success"/>
                    <input type="reset" value="重置" class="btn btn-danger"/>
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

