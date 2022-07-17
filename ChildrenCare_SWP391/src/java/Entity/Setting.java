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
public class Setting {
    private int Setting_ID;
    private int Type_ID;
    private String value;
    private String description;
    private boolean status;
    private String href;

    public Setting() {
    }

    public Setting(int Setting_ID, int Type_ID, String value, String description, boolean status, String href) {
        this.Setting_ID = Setting_ID;
        this.Type_ID = Type_ID;
        this.value = value;
        this.description = description;
        this.status = status;
        this.href = href;
    }

    public int getSetting_ID() {
        return Setting_ID;
    }

    public void setSetting_ID(int Setting_ID) {
        this.Setting_ID = Setting_ID;
    }

    public int getType_ID() {
        return Type_ID;
    }

    public void setType_ID(int Type_ID) {
        this.Type_ID = Type_ID;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }
    
    
}
