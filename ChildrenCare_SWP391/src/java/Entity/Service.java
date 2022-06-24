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
public class Service {
    private int service_id;
    private String service_name;
    private String detail;
    private String type;
    private String image;
    private String title;
    private float price;
    private int discount;
    private float rate;
    private int status;

    public Service() {
    }

    public Service(int service_id, String service_name, String detail, String type, String image, String title, float price, int discount, float rate, int status) {
        this.service_id = service_id;
        this.service_name = service_name;
        this.detail = detail;
        this.type = type;
        this.image = image;
        this.title = title;
        this.price = price;
        this.discount = discount;
        this.rate = rate;
        this.status = status;
    }

    public int getService_id() {
        return service_id;
    }

    public void setService_id(int service_id) {
        this.service_id = service_id;
    }

    public String getService_name() {
        return service_name;
    }

    public void setService_name(String service_name) {
        this.service_name = service_name;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Service{" + "service_id=" + service_id + ", service_name=" + service_name + ", detail=" + detail + ", type=" + type + ", image=" + image + ", title=" + title + ", price=" + price + ", discount=" + discount + ", rate=" + rate + ", status=" + status + '}';
    }

    

}
