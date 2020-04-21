package com.icss.meeting.dao;

import com.icss.meeting.pojo.Employee;
import com.icss.meeting.util.JDBCUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {

    public List<Employee> getEmpByUserPass(String username,String password){
        /**
         * DriverManager
         * Connection
         * statement
         * ResultSet
         */

        List<Employee> emps = new ArrayList<>();
        try {
            Connection conn = JDBCUtils.getConn();
            Statement stmt = conn.createStatement();
            String sql = "select * from employee where username = '"+username+"' and password = '"+password+"'";
            ResultSet rs = stmt.executeQuery(sql);

            while(rs.next()){
                Employee emp = new Employee();
                emp.setEmployeeId(rs.getInt(1));
                emp.setEmployeeName(rs.getString(2));
                emp.setUserName(rs.getString(3));
                emp.setPhone(rs.getString(4));
                emp.setEmail(rs.getString(5));
                emp.setStatus(rs.getString(6));
                emp.setDepartmentId(rs.getInt(7));
                emp.setPassWord(rs.getString(8));
                emp.setRole(rs.getString(9));
                emps.add(emp);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return emps;
    }
}
