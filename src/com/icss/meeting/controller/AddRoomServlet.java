package com.icss.meeting.controller;

import com.icss.meeting.service.SelService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddRoomServlet")
public class AddRoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1/获取添加信息
        int roomNum=Integer.parseInt(request.getParameter("meetingRoomId"));
        String roomName=request.getParameter("meetingRoomName");
        int capacity=Integer.parseInt(request.getParameter("meetingRoomMax"));
        int status=Integer.parseInt(request.getParameter("meetingRoomState"));
        String description=request.getParameter("meetingRoomRemark");
        //2、将数据添加到后台
        new SelService().addSel(roomNum,roomName,capacity,status,description);
        //3、跳转页面
        request.getRequestDispatcher("add.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
