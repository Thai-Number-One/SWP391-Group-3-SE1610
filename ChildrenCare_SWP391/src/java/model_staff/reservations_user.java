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
public class reservations_user {
    
    private int reservationid;
    private int userid;
    private Date date,ordertime;
    private int status;
    private float totalcost;
    private user user;
    private reservationdetail redetail;
    private service service;

    public reservations_user() {
    }

    public reservations_user(int reservationid, int userid, Date date, Date ordertime, int status, float totalcost, user user, reservationdetail redetail, service service) {
        this.reservationid = reservationid;
        this.userid = userid;
        this.date = date;
        this.ordertime = ordertime;
        this.status = status;
        this.totalcost = totalcost;
        this.user = user;
        this.redetail = redetail;
        this.service = service;
    }

    public int getReservationid() {
        return reservationid;
    }

    public void setReservationid(int reservationid) {
        this.reservationid = reservationid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public float getTotalcost() {
        return totalcost;
    }

    public void setTotalcost(float totalcost) {
        this.totalcost = totalcost;
    }

    public user getUser() {
        return user;
    }

    public void setUser(user user) {
        this.user = user;
    }

    public reservationdetail getRedetail() {
        return redetail;
    }

    public void setRedetail(reservationdetail redetail) {
        this.redetail = redetail;
    }

    public service getService() {
        return service;
    }

    public void setService(service service) {
        this.service = service;
    }

   
   
    

    
   
    

  
    
    

   
    
    
    

   
    

    
}
