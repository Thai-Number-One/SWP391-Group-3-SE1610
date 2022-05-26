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
public class reservations {
    private int Reservation_ID;
    private int User_ID;
    private Date Date;
    private String Status;
    private Date Begin_Time;
    private float Total_cost;

    public reservations() {
    }

    public reservations(int Reservation_ID, int User_ID, Date Date, String Status, Date Begin_Time, float Total_cost) {
        this.Reservation_ID = Reservation_ID;
        this.User_ID = User_ID;
        this.Date = Date;
        this.Status = Status;
        this.Begin_Time = Begin_Time;
        this.Total_cost = Total_cost;
    }

    public int getReservation_ID() {
        return Reservation_ID;
    }

    public void setReservation_ID(int Reservation_ID) {
        this.Reservation_ID = Reservation_ID;
    }

    public int getUser_ID() {
        return User_ID;
    }

    public void setUser_ID(int User_ID) {
        this.User_ID = User_ID;
    }

    public Date getDate() {
        return Date;
    }

    public void setDate(Date Date) {
        this.Date = Date;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public Date getBegin_Time() {
        return Begin_Time;
    }

    public void setBegin_Time(Date Begin_Time) {
        this.Begin_Time = Begin_Time;
    }

    public float getTotal_cost() {
        return Total_cost;
    }

    public void setTotal_cost(float Total_cost) {
        this.Total_cost = Total_cost;
    }
    
    
}
