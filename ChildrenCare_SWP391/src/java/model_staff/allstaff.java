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
public class allstaff {
    private user user;
    private service service;
    private reservations reservations;
    private reservationdetail reservationdetail;
    private Prescription prescription;
    private medicine medicine;

    public allstaff() {
    }

    public allstaff(user user, service service, reservations reservations, reservationdetail reservationdetail, Prescription prescription, medicine medicine) {
        this.user = user;
        this.service = service;
        this.reservations = reservations;
        this.reservationdetail = reservationdetail;
        this.prescription = prescription;
        this.medicine = medicine;
    }

    public user getUser() {
        return user;
    }

    public void setUser(user user) {
        this.user = user;
    }

    public service getService() {
        return service;
    }

    public void setService(service service) {
        this.service = service;
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

    public Prescription getPrescription() {
        return prescription;
    }

    public void setPrescription(Prescription prescription) {
        this.prescription = prescription;
    }

    public medicine getMedicine() {
        return medicine;
    }

    public void setMedicine(medicine medicine) {
        this.medicine = medicine;
    }

   
}
