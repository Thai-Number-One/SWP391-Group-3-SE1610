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
    public static void main(String[] args) {
        SliderDetailDAO dao = new SliderDetailDAO();
        
        Slider d = dao.getDetailSilder(1);
        System.out.println(d);

    }

    
}
