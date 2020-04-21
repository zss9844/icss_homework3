package com.icss.meeting.dao;

import com.icss.meeting.pojo.Sel;
import com.icss.meeting.util.JDBCUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SelDao {

    public List<Sel> getSels(){
        ArrayList<Sel> sels = new ArrayList<>();
        try {
            Connection conn = JDBCUtils.getConn();
            Statement stmt = conn.createStatement();
            String sql = "select * from room";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                Sel d = new Sel();
                d.setRoomId(rs.getInt(1));
                d.setRoomNum(rs.getInt(2));
                d.setRoomName(rs.getString(3));
                d.setCapacity(rs.getInt(4));
                d.setStatus(rs.getInt(5));
                d.setDescription(rs.getString(6));
                sels.add(d);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sels;
    }

    public void deleteSel(int roomNum){
        try {
            Connection conn = JDBCUtils.getConn();
            Statement stmt = conn.createStatement();
            String sql = "delete from room where roomNum = '"+roomNum+"'";
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addSel(int roomNum, String roomName, int capacity, int status, String description){
        try {
            Connection conn = JDBCUtils.getConn();
            Statement stmt = conn.createStatement();
            String sql = "insert into room values(dept_seq.nextval,'"+roomNum+"','"+roomName+"','"+capacity+"','"+status+"','"+description+"')";
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
