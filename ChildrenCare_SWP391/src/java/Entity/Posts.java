/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.sql.Date;

/**
 *
 * @author s
 */
public class Posts {
    private int Post_ID;
    private String Tilte;
    private String Content;
    private int User_ID;
    private String Image;
    private int Service_ID;
    private Date Date;
    private int Status;
    private String Category;

    public Posts() {
    }

    public Posts(int Post_ID, String Tilte, String Content, int User_ID, String Image, int Service_ID, Date Date, int Status, String Category) {
        this.Post_ID = Post_ID;
        this.Tilte = Tilte;
        this.Content = Content;
        this.User_ID = User_ID;
        this.Image = Image;
        this.Service_ID = Service_ID;
        this.Date = Date;
        this.Status = Status;
        this.Category = Category;
    }

    public int getPost_ID() {
        return Post_ID;
    }

    public void setPost_ID(int Post_ID) {
        this.Post_ID = Post_ID;
    }

    public String getTilte() {
        return Tilte;
    }

    public void setTilte(String Tilte) {
        this.Tilte = Tilte;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public int getUser_ID() {
        return User_ID;
    }

    public void setUser_ID(int User_ID) {
        this.User_ID = User_ID;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public int getService_ID() {
        return Service_ID;
    }

    public void setService_ID(int Service_ID) {
        this.Service_ID = Service_ID;
    }

    public Date getDate() {
        return Date;
    }

    public void setDate(Date Date) {
        this.Date = Date;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }

  

    @Override
    public String toString() {
        return "Posts{" + "Post_ID=" + Post_ID + ", Tilte=" + Tilte + ", Content=" + Content + ", User_ID=" + User_ID + ", Image=" + Image + ", Service_ID=" + Service_ID + ", Date=" + Date + ", Status=" + Status + ", Category=" + Category + '}';
    }

    
    
    
    
    
}
