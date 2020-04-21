package com.icss.meeting.controller;

import com.icss.meeting.pojo.Dept;
import com.icss.meeting.service.DeptService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/DeptServlet")
public class DeptServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.在数据库中查询所有数据
        List<Dept> depts = new DeptService().getDepts();
        // 2.将数据添加到请求中
        request.setAttribute("depts",depts);
        // 3.跳转到目标页面
        request.getRequestDispatcher("dept.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
