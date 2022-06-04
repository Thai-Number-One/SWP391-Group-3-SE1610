/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.sql.Date;

/**
 *
 * @author thaic
 */
public class Medicine {
    int id;
    String name ;
    float price ;
    String country;
    Date ex_date;
    String detailString;
    String image;

    public Medicine(int id, String name, float price, String country, Date ex_date, String detailString, String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.country = country;
        this.ex_date = ex_date;
        this.detailString = detailString;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Date getEx_date() {
        return ex_date;
    }

    public void setEx_date(Date ex_date) {
        this.ex_date = ex_date;
    }

    public String getDetailString() {
        return detailString;
    }

    public void setDetailString(String detailString) {
        this.detailString = detailString;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Medicine{" + "id=" + id + ", name=" + name + ", price=" + price + ", country=" + country + ", ex_date=" + ex_date + ", detailString=" + detailString + ", image=" + image + '}';
    }
    
    
    
    
}
