package com.icss.meeting.service;

import com.icss.meeting.dao.EmployeeDao;

public class EmployeeService {
    EmployeeDao ed = new EmployeeDao();

    public boolean login(String username,String password){
        if(ed.getEmpByUserPass(username,password).size() > 0){
            return true;
        }
        return false;
    }
}
