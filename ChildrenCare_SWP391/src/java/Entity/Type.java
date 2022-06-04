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
public class Type {
    private int Type_ID;
    private String Type_Name;

    public Type() {
    }

    public Type(int Type_ID, String Type_Name) {
        this.Type_ID = Type_ID;
        this.Type_Name = Type_Name;
    }

    public int getType_ID() {
        return Type_ID;
    }

    public void setType_ID(int Type_ID) {
        this.Type_ID = Type_ID;
    }

    public String getType_Name() {
        return Type_Name;
    }

    public void setType_Name(String Type_Name) {
        this.Type_Name = Type_Name;
    }
    
}
