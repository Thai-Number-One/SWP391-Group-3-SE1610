/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import model_staff.reservationdetail;
import model_staff.reservations;
import model_staff.service;
import model_staff.user;

/**
 *
 * @author dathp
 */
public class allfeedbacks {
    private Feedbacks feedbacks;
    private reservations reservations;
    private reservationdetail reservationdetail;
    private service service;
    private user user;

    public allfeedbacks() {
    }

    public allfeedbacks(Feedbacks feedbacks, reservations reservations, reservationdetail reservationdetail, service service, user user) {
        this.feedbacks = feedbacks;
        this.reservations = reservations;
        this.reservationdetail = reservationdetail;
        this.service = service;
        this.user = user;
    }

    public user getUser() {
        return user;
    }

    public void setUser(user user) {
        this.user = user;
    }

    

    public Feedbacks getFeedbacks() {
        return feedbacks;
    }

    public void setFeedbacks(Feedbacks feedbacks) {
        this.feedbacks = feedbacks;
    }

    public reservations getReservations() {
        return reservations;
    }

    public void setReservations(reservations reservations) {
        this.reservations = reservations;
    }

    public reservationdetail getReservationdetail() {
        return reservationdetail;
    }

    public void setReservationdetail(reservationdetail reservationdetail) {
        this.reservationdetail = reservationdetail;
    }

    public service getService() {
        return service;
    }

    public void setService(service service) {
        this.service = service;
    }
    
    
}
