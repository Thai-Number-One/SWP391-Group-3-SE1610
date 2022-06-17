/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;


public class Slider {
    private int Slider_ID;
    private int User_ID;
    private String Title;
    private String Image;
    private String BackLink;
    private int Status;

    public Slider() {
    }

    public Slider(int Slider_ID, int User_ID, String Title, String Image, String BackLink, int Status) {
        this.Slider_ID = Slider_ID;
        this.User_ID = User_ID;
        this.Title = Title;
        this.Image = Image;
        this.BackLink = BackLink;
        this.Status = Status;
    }

    public int getSlider_ID() {
        return Slider_ID;
    }

    public void setSlider_ID(int Slider_ID) {
        this.Slider_ID = Slider_ID;
    }

    public int getUser_ID() {
        return User_ID;
    }

    public void setUser_ID(int User_ID) {
        this.User_ID = User_ID;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public String getBackLink() {
        return BackLink;
    }

    public void setBackLink(String BackLink) {
        this.BackLink = BackLink;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "Slider{" + "Slider_ID=" + Slider_ID + ", User_ID=" + User_ID + ", Title=" + Title + ", Image=" + Image + ", BackLink=" + BackLink + ", Status=" + Status + '}';
    }

    
    
    

    
    
    
    
}
