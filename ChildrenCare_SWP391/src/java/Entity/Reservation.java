/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.sql.Date;

/**
 *
 * @author thaic
 */
public class Reservation {
    private int reservation_ID;
    private Date date;
    private int status;
    private Date begin_time;
    private float totalCost;

    public Reservation() {
    }

     public Reservation( int status, float totalCost) {
        
        this.status = status;
        
        this.totalCost = totalCost;
    }
    public Reservation(int reservation_ID, Date date, int status, Date begin_time, float totalCost) {
        this.reservation_ID = reservation_ID;
        this.date = date;
        this.status = status;
        this.begin_time = begin_time;
        this.totalCost = totalCost;
    }

    public int getReservation_ID() {
        return reservation_ID;
    }

    public void setReservation_ID(int reservation_ID) {
        this.reservation_ID = reservation_ID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getBegin_time() {
        return begin_time;
    }

    public void setBegin_time(Date begin_time) {
        this.begin_time = begin_time;
    }

    public float getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(float totalCost) {
        this.totalCost = totalCost;
    }

    @Override
    public String toString() {
        return "Reservation{" + "reservation_ID=" + reservation_ID + ", date=" + date + ", status=" + status + ", begin_time=" + begin_time + ", totalCost=" + totalCost + '}';
    }

    
    
    
    
    
}
