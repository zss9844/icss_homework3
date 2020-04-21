package com.icss.meeting.controller;

import com.icss.meeting.service.SelService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteSelServlet")
public class DeleteSelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.获取前端的请求参数
        int roomNum= Integer.parseInt(request.getParameter("roomNum"));

        // 2.根据ID到后台删除数据
        new SelService().deleteSel(roomNum);

        // 3.回跳页面
        response.sendRedirect("SelServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
