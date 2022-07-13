/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author dathp
 */
public class Contact {
    private int contactid;
    private String name,email,phone,Mess;

    public Contact() {
    }

    public Contact(int contactid, String name, String email, String phone, String Mess) {
        this.contactid = contactid;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.Mess = Mess;
    }

    public int getContactid() {
        return contactid;
    }

    public void setContactid(int contactid) {
        this.contactid = contactid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMess() {
        return Mess;
    }

    public void setMess(String Mess) {
        this.Mess = Mess;
    }
    
    
    
}
