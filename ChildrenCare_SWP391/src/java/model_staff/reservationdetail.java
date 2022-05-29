/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model_staff;

/**
 *
 * @author dathp
 */
public class reservationdetail {
    private int reservationid,serviceid,userid;
    private String namesale;

    public reservationdetail() {
    }

    public reservationdetail(int reservationid, int serviceid, int userid, String namesale) {
        this.reservationid = reservationid;
        this.serviceid = serviceid;
        this.userid = userid;
        this.namesale = namesale;
    }

    public int getReservationid() {
        return reservationid;
    }

    public void setReservationid(int reservationid) {
        this.reservationid = reservationid;
    }

    public int getServiceid() {
        return serviceid;
    }

    public void setServiceid(int serviceid) {
        this.serviceid = serviceid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getNamesale() {
        return namesale;
    }

    public void setNamesale(String namesale) {
        this.namesale = namesale;
    }
    
    
}
