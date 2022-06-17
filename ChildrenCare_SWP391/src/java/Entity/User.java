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
public class User {
    private int User_ID;
    private String FullName;
    private String Address;
    private String Phone;
    private String Email;
    private Date Date; 
    private Date Date_New;
    private String User_Name;
    private String Password;
    private String Avatar;
    private int Gender;
    private int Role_ID;
    private int Status;

    public User() {
    }
    
    
    
    
    public User(int id, String name) {
        this.User_ID = id;
        this.FullName = name;
    }

    public User(int User_ID, String FullName, String Address, String Phone, String Email, Date Date, Date Date_New, String User_Name, String Password, String Avatar, int Gender, int Role_ID, int Status) {
        this.User_ID = User_ID;
        this.FullName = FullName;
        this.Address = Address;
        this.Phone = Phone;
        this.Email = Email;
        this.Date = Date;
        this.Date_New = Date_New;
        this.User_Name = User_Name;
        this.Password = Password;
        this.Avatar = Avatar;
        this.Gender = Gender;
        this.Role_ID = Role_ID;
        this.Status = Status;
    }

    public int getUser_ID() {
        return User_ID;
    }

    public void setUser_ID(int User_ID) {
        this.User_ID = User_ID;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public Date getDate() {
        return Date;
    }

    public void setDate(Date Date) {
        this.Date = Date;
    }

    public Date getDate_New() {
        return Date_New;
    }

    public void setDate_New(Date Date_New) {
        this.Date_New = Date_New;
    }

    public String getUser_Name() {
        return User_Name;
    }

    public void setUser_Name(String User_Name) {
        this.User_Name = User_Name;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getAvatar() {
        return Avatar;
    }

    public void setAvatar(String Avatar) {
        this.Avatar = Avatar;
    }

    public int getGender() {
        return Gender;
    }

    public void setGender(int Gender) {
        this.Gender = Gender;
    }

    public int getRole_ID() {
        return Role_ID;
    }

    public void setRole_ID(int Role_ID) {
        this.Role_ID = Role_ID;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "User{" + "User_ID=" + User_ID + ", FullName=" + FullName + ", Address=" + Address + ", Phone=" + Phone + ", Email=" + Email + ", Date=" + Date + ", Date_New=" + Date_New + ", User_Name=" + User_Name + ", Password=" + Password + ", Avatar=" + Avatar + ", Gender=" + Gender + ", Role_ID=" + Role_ID + ", Status=" + Status + '}';
    }

    

    
}
