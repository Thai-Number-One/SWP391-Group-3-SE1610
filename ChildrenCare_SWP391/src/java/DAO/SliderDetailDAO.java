/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Posts;
import Entity.Service;
import Entity.Slider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author s
 */
public class SliderDetailDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Slider getDetailSilder(int id){
        try {
            String sql = "select * from Slider\n" +
                         "where Slider_ID = ?";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                Slider p = new Slider (rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6));
                        return p;
            }

        } catch (Exception e) {
        }
        
        return null;
    } 
    
    public void updateslider(String title, String blacklink, int user_id, String image, int status, int slider_id){
 
        try {
            String sql="update Slider\n" +
                        "set Title = ?, BackLink = ?, [User_ID] = ?, [Image] = ?, [Status] = ? \n" +
                        "where Slider_ID = ?";
  
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, blacklink);
            ps.setInt(3, user_id);
            ps.setString(4, image);
            ps.setInt(5, status);
            ps.setInt(6, slider_id);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
    
    public static void main(String[] args) {
        SliderDetailDAO dao = new SliderDetailDAO();
        
        Slider d = dao.getDetailSilder(1);
        System.out.println(d);

    }

    
}
