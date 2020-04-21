package com.icss.meeting.controller;

import com.icss.meeting.pojo.Sel;
import com.icss.meeting.service.SelService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet( "/SelServlet")
public class SelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //1. 查询数据
        List<Sel> sels = new SelService().getSels();
    //2.存储数据到页面
        request.setAttribute("sels",sels);
    //3.回跳
        request.getRequestDispatcher("sel.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
