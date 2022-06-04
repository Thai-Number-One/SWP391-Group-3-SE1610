/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author thaic
 */
public class Reservation {
    private String status ;
    private double totalCost ;

    public Reservation(String status, double totalCost) {
        this.status = status;
        this.totalCost = totalCost;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }

    
    @Override
    public String toString() {
        return "Reservation{" + "status=" + status + ", totalCost=" + totalCost + '}';
    }
    
    
    
}
