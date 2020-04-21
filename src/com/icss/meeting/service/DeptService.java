package com.icss.meeting.service;

import com.icss.meeting.dao.DeptDao;
import com.icss.meeting.pojo.Dept;

import java.util.List;

public class DeptService {
    DeptDao dd = new DeptDao();

    public List<Dept> getDepts(){
        return dd.getDept();
    }

    public void deleteDept(int id){
        dd.deleteDept(id);
    }

    public void addDept(String name){
        dd.addDept(name);
    }
}
