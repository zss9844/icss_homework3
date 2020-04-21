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
<!Doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录界面</title>
    <link rel="stylesheet" type="text/css" href="${APP_PATH}/css/login.css">
</head>
<body>
<!-- 登录区主体开始 -->
<div id="main">
    <!-- 头像区开始 -->
    <div id="header-border">
        <!-- 头像区内部开始 -->
        <div id="header-pic">

        </div>
        <!-- 头像区内部结束 -->
    </div>
    <!-- 头像区结束 -->
    <!-- 账号密码开始 -->
    <div id="account">
        <form id="loginForm" method="post" action="/LoginServlet">
            <span class="show">USERNAME</span>
            <div class="input">

                <input type="text" placeholder="please input username" name="username">
            </div>
            <span class="show">PASSWORD</span>
            <div class="input">

                <input type="password" placeholder="please input password" name="password">
            </div>
            <div class="msg">用户名密码错误</div>
            <span class="show">DEFAULT LOGON TIME</span>
            <div class="input">
                <select name="timelength">
                    <option value="0" selected>每次都需要登录</option>
                    <option value="10">10天</option>
                    <option value="30">30天</option>
                </select>
            </div>
        </form>
    </div>
    <!-- 账号密码结束 -->
    <!-- 登录按钮开始 -->
    <button class="login-btn" id="subBtn">Login</button>
    <!-- 登录按钮结束 -->
    <!-- 登录区底部开始 -->
    <div id="footer">
        <a href="#">Forget Password?</a>
    </div>
    <!-- 登录区底部结束 -->
</div>
<!-- 登录区主体结束 -->
<script type="text/javascript">
    window.onload = function(){
        var subBtn = document.getElementById('subBtn');
        subBtn.onclick = function(){
            var loginForm = document.getElementById('loginForm');

            loginForm.action = '/LoginServlet';

            loginForm.submit();
        }
    }
</script>
</body>
</html>
