package com.icss.meeting.pojo;

public class Employee {
    private Integer employeeId;
    private String employeeName;
    private String userName;
    private String phone;
    private String email;
    private String status;
    private Integer departmentId;
    private String passWord;
    private String role;

    public Employee() {
    }

    public Employee(Integer employeeId, String employeeName, String userName,
                    String phone, String email, String status, Integer departmentId,
                    String passWord, String role) {
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.userName = userName;
        this.phone = phone;
        this.email = email;
        this.status = status;
        this.departmentId = departmentId;
        this.passWord = passWord;
        this.role = role;
    }

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
