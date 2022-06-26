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
    private int Prescription_ID,reservationid,serviceid,userid,staffid,age;
    private String namesale,childrenname;

    public reservationdetail() {
    }

    public reservationdetail(int Prescription_ID, int reservationid, int serviceid, int userid, int staffid, int age, String namesale, String childrenname) {
        this.Prescription_ID = Prescription_ID;
        this.reservationid = reservationid;
        this.serviceid = serviceid;
        this.userid = userid;
        this.staffid = staffid;
        this.age = age;
        this.namesale = namesale;
        this.childrenname = childrenname;
    }

    public int getPrescription_ID() {
        return Prescription_ID;
    }

    public void setPrescription_ID(int Prescription_ID) {
        this.Prescription_ID = Prescription_ID;
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

    public int getStaffid() {
        return staffid;
    }

    public void setStaffid(int staffid) {
        this.staffid = staffid;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getNamesale() {
        return namesale;
    }

    public void setNamesale(String namesale) {
        this.namesale = namesale;
    }

    public String getChildrenname() {
        return childrenname;
    }

    public void setChildrenname(String childrenname) {
        this.childrenname = childrenname;
    }

  
}
