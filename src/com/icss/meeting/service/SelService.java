package com.icss.meeting.service;

import com.icss.meeting.dao.SelDao;
import com.icss.meeting.pojo.Sel;

import java.util.List;

public class SelService {
    SelDao dd = new SelDao();

    public List<Sel> getSels(){
        return dd.getSels();
    }

    public void deleteSel(int roomNum){
        dd.deleteSel(roomNum);
    }

    public void addSel(int roomNum,String roomName, int capacity, int status, String description){
            dd.addSel(roomNum,roomName,capacity,status,description);
}
}
