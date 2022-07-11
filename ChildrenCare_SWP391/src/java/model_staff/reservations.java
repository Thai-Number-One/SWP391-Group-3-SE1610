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
    private int ReservationID;
    private Date Date;
    private int Status;
    private Date BeginTime;
    private float Totalcost;

    public reservations() {
    }

    public reservations(int ReservationID, Date Date, int Status, Date BeginTime, float Totalcost) {
        this.ReservationID = ReservationID;
        this.Date = Date;
        this.Status = Status;
        this.BeginTime = BeginTime;
        this.Totalcost = Totalcost;
    }

    public int getReservationID() {
        return ReservationID;
    }

    public void setReservationID(int ReservationID) {
        this.ReservationID = ReservationID;
    }

    public Date getDate() {
        return Date;
    }

    public void setDate(Date Date) {
        this.Date = Date;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    public Date getBeginTime() {
        return BeginTime;
    }

    public void setBeginTime(Date BeginTime) {
        this.BeginTime = BeginTime;
    }

    public float getTotalcost() {
        return Totalcost;
    }

    public void setTotalcost(float Totalcost) {
        this.Totalcost = Totalcost;
    }


    
    
}
