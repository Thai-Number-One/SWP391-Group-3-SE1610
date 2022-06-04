/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.sql.Date;

/**
 *
 * @author s
 */
public class UserT {
    
    private int id;
    private String fullName;
    private String address;
    private String phone;
    private String email;
    private Date date;
    private String userName;
    private String password;
    private String avatar;
    private int gender;
    private int role;
    private int status;

    public UserT() {
    }

    public UserT(int id, String fullName, String address, String phone, String email, Date date, String userName, String password, String avatar, int gender, int role, int status) {
        this.id = id;
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.date = date;
        this.userName = userName;
        this.password = password;
        this.avatar = avatar;
        this.gender = gender;
        this.role = role;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "UserT{" + "id=" + id + ", fullName=" + fullName + ", address=" + address + ", phone=" + phone + ", email=" + email + ", date=" + date + ", userName=" + userName + ", password=" + password + ", avatar=" + avatar + ", gender=" + gender + ", role=" + role + ", status=" + status + '}';
    }
    
    
}
