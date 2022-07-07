/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author s
 */
public class Reservation_detail {
    private int prescription_ID;
    private int reservation_ID;
    private int user_ID;
    private int service_ID;
    private int staff_ID;
    private String name_sale;
    private String children_name;
    private int age;

    public Reservation_detail() {
    }

    public Reservation_detail(int prescription_ID, int reservation_ID, int user_ID, int service_ID, int staff_ID, String name_sale, String children_name, int age) {
        this.prescription_ID = prescription_ID;
        this.reservation_ID = reservation_ID;
        this.user_ID = user_ID;
        this.service_ID = service_ID;
        this.staff_ID = staff_ID;
        this.name_sale = name_sale;
        this.children_name = children_name;
        this.age = age;
    }

    public int getPrescription_ID() {
        return prescription_ID;
    }

    public void setPrescription_ID(int prescription_ID) {
        this.prescription_ID = prescription_ID;
    }

    public int getReservation_ID() {
        return reservation_ID;
    }

    public void setReservation_ID(int reservation_ID) {
        this.reservation_ID = reservation_ID;
    }

    public int getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
    }

    public int getService_ID() {
        return service_ID;
    }

    public void setService_ID(int service_ID) {
        this.service_ID = service_ID;
    }

    public int getStaff_ID() {
        return staff_ID;
    }

    public void setStaff_ID(int staff_ID) {
        this.staff_ID = staff_ID;
    }

    public String getName_sale() {
        return name_sale;
    }

    public void setName_sale(String name_sale) {
        this.name_sale = name_sale;
    }

    public String getChildren_name() {
        return children_name;
    }

    public void setChildren_name(String children_name) {
        this.children_name = children_name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "Reservation_detail{" + "prescription_ID=" + prescription_ID + ", reservation_ID=" + reservation_ID + ", user_ID=" + user_ID + ", service_ID=" + service_ID + ", staff_ID=" + staff_ID + ", name_sale=" + name_sale + ", children_name=" + children_name + ", age=" + age + '}';
    }
    
    
    
    
}
