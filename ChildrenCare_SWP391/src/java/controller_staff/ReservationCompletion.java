/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller_staff;

import java.util.Date;

/**
 *
 * @author HP
 */
public class ReservationCompletion {
    private int id, Age;
    private String Service_Name,Children_Name, Doctor_name, Time, date;
    private float Price;

    public ReservationCompletion() {
    }

    public ReservationCompletion(int id, int Age, String Service_Name, String Children_Name, String Doctor_name, String Time, String date, float Price) {
        this.id = id;
        this.Age = Age;
        this.Service_Name = Service_Name;
        this.Children_Name = Children_Name;
        this.Doctor_name = Doctor_name;
        this.Time = Time;
        this.date = date;
        this.Price = Price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAge() {
        return Age;
    }

    public void setAge(int Age) {
        this.Age = Age;
    }

    public String getService_Name() {
        return Service_Name;
    }

    public void setService_Name(String Service_Name) {
        this.Service_Name = Service_Name;
    }

    public String getChildren_Name() {
        return Children_Name;
    }

    public void setChildren_Name(String Children_Name) {
        this.Children_Name = Children_Name;
    }

    public String getDoctor_name() {
        return Doctor_name;
    }

    public void setDoctor_name(String Doctor_name) {
        this.Doctor_name = Doctor_name;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String Time) {
        this.Time = Time;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }

    @Override
    public String toString() {
        return super.toString(); //To change body of generated methods, choose Tools | Templates.
    }
    
}
