/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author HP
 */
public class ReservationCustomer {
    private int id, quantity, service_id;
    private String service_Name;
    private float price;
    private int discount;

    public ReservationCustomer() {
    }

    public ReservationCustomer(int id, int quantity, int service_id, String service_Name, float price, int discount) {
        this.id = id;
        this.quantity = quantity;
        this.service_id = service_id;
        this.service_Name = service_Name;
        this.price = price;
        this.discount = discount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getService_id() {
        return service_id;
    }

    public void setService_id(int service_id) {
        this.service_id = service_id;
    }

    public String getService_Name() {
        return service_Name;
    }

    public void setService_Name(String service_Name) {
        this.service_Name = service_Name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }
    public float getTotal(){
    return price - (price*discount);
    }
}
