/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model_staff;

import java.sql.Date;

/**
 *
 * @author dathp
 */
public class user {
    private int userid;
    private String fullname;
    private String address;
    private String phone;
    private String email;
    private Date date,datenew;
    private String username;
    private String password;
    private String avatar;
    private int gender;
    private int roleid,status;

    public user() {
    }

    public user(int userid, String fullname, String address, String phone, String email, Date date, Date datenew, String username, String password, String avatar, int gender, int roleid, int status) {
        this.userid = userid;
        this.fullname = fullname;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.date = date;
        this.datenew = datenew;
        this.username = username;
        this.password = password;
        this.avatar = avatar;
        this.gender = gender;
        this.roleid = roleid;
        this.status = status;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
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

    public Date getDatenew() {
        return datenew;
    }

    public void setDatenew(Date datenew) {
        this.datenew = datenew;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    
  

    
   
}
