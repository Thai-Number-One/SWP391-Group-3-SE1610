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
    
    private  reservations reservations;
    private user user;
    private reservationdetail redetail;
    private service service;

    public reservations_user() {
    }

    public reservations_user(reservations reservations, user user, reservationdetail redetail, service service) {
        this.reservations = reservations;
        this.user = user;
        this.redetail = redetail;
        this.service = service;
    }

    public reservations getReservations() {
        return reservations;
    }

    public void setReservations(reservations reservations) {
        this.reservations = reservations;
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
