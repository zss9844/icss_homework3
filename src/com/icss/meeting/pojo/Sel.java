package com.icss.meeting.pojo;

public class Sel {
    private int roomId;
    private int roomNum;
    private String roomName;
    private int capacity;
    private int status;
    private String description;
    public Sel() {

    }
    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public void setRoomNum(int roomNum) {
        this.roomNum = roomNum;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Sel(int roomId, int roomNum, String roomName, int capacity, int status, String description) {
        this.roomId = roomId;
        this.roomNum = roomNum;
        this.roomName = roomName;
        this.capacity = capacity;
        this.status = status;
        this.description = description;
    }

    public int getRoomId() {
        return roomId;
    }

    public int getRoomNum() {
        return roomNum;
    }

    public String getRoomName() {
        return roomName;
    }

    public int getCapacity() {
        return capacity;
    }

    public int getStatus() {
        return status;
    }

    public String getDescription() {
        return description;
    }
}
