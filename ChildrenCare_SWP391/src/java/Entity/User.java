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
    private int Phone;
    private String Email;
    private Date Date;
    private String User_Name;
    private String Password;
    private String Avatar;
    private int Gender;
    private int Role_ID;

    public User() {
    }

    public User(int User_ID, String FullName, String Address, int Phone, String Email, Date Date, String User_Name, String Password, String Avatar, int Gender, int Role_ID) {
        this.User_ID = User_ID;
        this.FullName = FullName;
        this.Address = Address;
        this.Phone = Phone;
        this.Email = Email;
        this.Date = Date;
        this.User_Name = User_Name;
        this.Password = Password;
        this.Avatar = Avatar;
        this.Gender = Gender;
        this.Role_ID = Role_ID;
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

    public int getPhone() {
        return Phone;
    }

    public void setPhone(int Phone) {
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

    @Override
    public String toString() {
        return "User{" + "User_ID=" + User_ID + ", FullName=" + FullName + ", Address=" + Address + ", Phone=" + Phone + ", Email=" + Email + ", Date=" + Date + ", User_Name=" + User_Name + ", Password=" + Password + ", Avatar=" + Avatar + ", Gender=" + Gender + ", Role_ID=" + Role_ID + '}';
    }
    
    
}
