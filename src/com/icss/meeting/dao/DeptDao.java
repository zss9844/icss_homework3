package com.icss.meeting.dao;

import com.icss.meeting.pojo.Dept;
import com.icss.meeting.util.JDBCUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DeptDao {

    public List<Dept> getDept(){
        ArrayList<Dept> depts = new ArrayList<>();
        try {
            Connection conn = JDBCUtils.getConn();
            Statement stmt = conn.createStatement();
            String sql = "select * from dept";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                Dept d = new Dept();
                d.setDepartmentId(rs.getInt(1));
                d.setDepartmentName(rs.getString(2));
                depts.add(d);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return depts;
    }

    public void deleteDept(int id){
        try {
            Connection conn = JDBCUtils.getConn();
            Statement stmt = conn.createStatement();
            String sql = "delete from dept where departmentid = '"+id+"'";
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addDept(String name){
        try {
            Connection conn = JDBCUtils.getConn();
            Statement stmt = conn.createStatement();
            String sql = "insert into dept values(dept_seq.nextval,'"+name+"')";
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
