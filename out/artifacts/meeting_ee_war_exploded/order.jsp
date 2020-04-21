<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/18 0018
  Time: 下午 3:09
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
    <link rel="stylesheet" type="text/css" href="${APP_PATH}/css/jquery.datetimepicker.css"/>
</head>
<body>
<div class="container">
    <h2 class="page-header">
        会议预定
        <small>预定会议</small>
    </h2>
    <fieldset id="">
        <legend>会议信息</legend>
        <form class="form-horizontal col-md-8">
            <div class="form-group">
                <label for="" class="col-md-2">会议名称</label>
                <div class="col-md-10">
                    <input type="text" name="meetingName" placeholder="请输入会议名称" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">预计参加人数</label>
                <div class="col-md-10">
                    <input type="text" name="numberOfparticipants" placeholder="请输入预计参加人数" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">预计开始时间</label>
                <div class="col-md-10">
                    <input type="text" name="startTime" id="startTime" placeholder="请输入时间" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">预计结束时间</label>
                <div class="col-md-10">
                    <input type="text" name="endTime" id="endTime" placeholder="请输入时间" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">会议室名称</label>
                <div class="col-md-10">
                    <select name="roomid" id="" class="form-control">
                        <option value="" disabled selected>--请选择会议室--</option>
                        <option value="">第一会议室</option>
                        <option value="">第二会议室</option>
                        <option value="">第三会议室</option>
                        <option value="">第四会议室</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">会议说明</label>
                <div class="col-md-10">
                    <textarea class="form-control" name="describe" rows="" cols=""></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">选择参会人员</label>
                <div class="col-md-10">
                    <!-- 选择参会人员开始 -->
                    <div class="col-md-5">
                        <select name="" id="selDepts" class="form-control">
                            <option value="" disabled selected>--请选择部门--</option>
                            <option value="">技术部</option>
                            <option value="">财务部</option>
                            <option value="">市场部</option>
                            <option value="">行政部</option>
                        </select>
                        <select name="" id="showEmps" size="8" class="form-control">
                            <option value="">张三</option>
                            <option value="">李四</option>
                            <option value="">王五</option>
                            <option value="">赵六</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <input type="button" id="toRight" value="&gt;" class="btn"/>
                        <input type="button" id="toLeft" value="&lt;" class="btn"/>
                    </div>
                    <div class="col-md-5">
                        <select name="" id="selEmps" size="10" class="form-control"></select>
                    </div>
                    <!-- 选择参会人员结束 -->
                    <!--使用js动态的选择参会人员-->
                    <script src="js/order.js" type="text/javascript" charset="utf-8"></script>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-2">
                    <input type="button"  value="预定会议" class="btn btn-success"/>
                    <input type="button"  value="重置" class="btn btn-danger"/>
                </div>
            </div>
        </form>
    </fieldset>
</div>
<!--引入jquery-->
<script src="${APP_PATH}/js/jquery.min.js"></script>
<!--引入bootstrap的js功能-->
<script src="${APP_PATH}/js/bootstrap.min.js"></script>
<!--引入时间框-->
<script src="${APP_PATH}/js/jquery.datetimepicker.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">

    $(function(){
        //给开始时间绑定日历框
        $("#startTime").datetimepicker({
            lang:'ch',
            format:'Y-m-d H:i:00',
            formatDate:'Y-m-d H:i:00',
            step:1
        });
        //给结束时间绑定日历框
        $('#endTime').datetimepicker({
            lang:'ch',
            format:'Y-m-d H:i:00',
            formatDate:'Y-m-d H:i:00',
            step:1
        });
    });
</script>
</body>
</html>
