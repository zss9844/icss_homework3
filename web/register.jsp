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
</head>
<body>
<div class="container">
    <h2 class="page-header">
        人员管理
        <small>员工注册</small>
    </h2>
    <fieldset id="">
        <legend>员工信息</legend>
        <form class="form-horizontal col-md-8">
            <div class="form-group">
                <label for="" class="col-md-2">姓名</label>
                <div class="col-md-10">
                    <input type="text" placeholder="请输入用户名" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">账号名</label>
                <div class="col-md-10">
                    <input type="text" placeholder="请输入账号名" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">密码</label>
                <div class="col-md-10">
                    <input type="password" placeholder="请输入密码" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">确认密码</label>
                <div class="col-md-10">
                    <input type="password" placeholder="请确认密码" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">联系电话</label>
                <div class="col-md-10">
                    <input type="text" placeholder="请输入联系电话" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">电子邮件</label>
                <div class="col-md-10">
                    <input type="text" placeholder="请输入电子邮件" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-md-2">所在部门</label>
                <div class="col-md-10">
                    <select name="" id="" class="form-control">
                        <option value="">技术部</option>
                        <option value="">市场部</option>
                        <option value="">社招部</option>
                        <option value="">行政部</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-2">
                    <input type="button"  value="注册" class="btn btn-success"/>
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
</body>
</html>
