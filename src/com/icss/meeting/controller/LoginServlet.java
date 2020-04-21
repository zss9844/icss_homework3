package com.icss.meeting.controller;

import com.icss.meeting.service.EmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.从前端获取登录信息
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 2.带着信息去数据库中进行校验，并得到校验结果
        if(new EmployeeService().login(username,password)){
            // 将正确的用户名和密码存储在session中

            // 3.根据校验信息来决定页面跳转
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }else{
            response.sendRedirect("/login.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
