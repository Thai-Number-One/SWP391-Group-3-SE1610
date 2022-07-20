/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Reservation;
import Entity.Reservation_detail;
import Entity.Service;
import Entity.User;
import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author s
 */
public class ReservationDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Reservation> getDetail(int id){
        List<Reservation> list = new ArrayList<>();
        try {
            String sql = "select * from Reservation r \n" +
                        "join Reservation_detail rd on r.Reservation_ID = rd.Reservation_ID\n" +
                        "where r.Reservation_ID = ?";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                Reservation p = new Reservation (rs.getInt(1),rs.getDate(2),rs.getInt(3),rs.getDate(4),rs.getFloat(5));
                        list.add(p);
            }

        } catch (Exception e) {
        }
        
        return list;
    } 
    
    public Reservation getDetailID(int id){
        
        try {
            String sql = "select * from Reservation r \n" +
"join Reservation_detail rd on r.Reservation_ID = rd.Reservation_ID\n" +
"where r.Reservation_ID = ?";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                Reservation p = new Reservation (rs.getInt(1),rs.getDate(2),rs.getInt(3),rs.getDate(4),rs.getFloat(5));
                        return p;
            }

        } catch (Exception e) {
        }
        
        return null;
    } 
    public String getDetailService(int id){
        try {
            String sql = "select [Service_Name] from [Service] s\n" +
                        "join Reservation_detail r on s.Service_ID = r.Service_ID\n" +
                        "where [Reservation_ID] = ?";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return rs.getString(1);
            }

        } catch (Exception e) {
        }
        
        return null;
    } 
    
    public Reservation_detail getReDe(int id){
        try {
            String sql = "select * from Reservation_detail\n" +
                        "where [Reservation_ID] = ?";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                Reservation_detail p = new Reservation_detail(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getInt(8));
                        return p;
            }

        } catch (Exception e) {
        }
        return null;
    }
    
    public Service getServiceDe(int id){
        try {
            String sql = "select * from [Service] s\n" +
                        "join Reservation_detail r on s.Service_ID = r.Service_ID \n" +
                        "where [Reservation_ID] = ?";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                Service p = new Service (rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getFloat(7),rs.getInt(8),rs.getFloat(9),rs.getInt(10));
                        return p;
            }

        } catch (Exception e) {
        }
        return null;
    }
    
    public void deleteReservation(int id){
        String sql = "delete from Reservation_detail\n" +
                     "where Reservation_ID = ?";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public User getUser(int id){
        
        try {
            String sql = "select * from [User] u \n" +
                        "join Reservation_detail rd on u.User_ID = rd.User_ID\n" +
                        "where rd.Reservation_ID = ?";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                User p = new User (rs.getInt(1),
                                  rs.getString(2),
                                  rs.getString(3),
                                  rs.getString(4),
                                  rs.getString(5),
                                  rs.getDate(6),
                                  rs.getDate(7),
                                  rs.getString(8),
                                  rs.getString(9),
                                  rs.getString(10),
                                  rs.getInt(11),
                                  rs.getInt(12),
                                  rs.getInt(13));
                        return p;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public String getUserID(int id){
        
        try {
            String sql = "select u.[User_ID] from [User] u \n" +
                        "join Reservation_detail rd on u.[User_ID] = rd.[User_ID]\n" +
                        "where rd.Reservation_ID = ?";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return rs.getString(1);
            }

        } catch (Exception e) {
        }
        
        return null;
    }
    
    public void updateReservation_detail(String childrenname, int age, int Doctor, String Time, int Reservation_ID){
 
        try {
            String sql="update Reservation_detail\n" +
                        "set Children_Name = ?, Age = ?, Staff_ID = ?, Name_Sale = ?\n" +
                        "where Reservation_ID = ?";
  
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setString(1, childrenname);
            ps.setInt(2, age);
            ps.setInt(3, Doctor);
            ps.setString(4, Time);
            ps.setInt(5, Reservation_ID);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
      public void updateReservation(Date date, int Reservation_ID){
 
        try {
            String sql="update Reservation\n" +
                        "set [Date] = ?\n" +
                        "where Reservation_ID = ?";
            java.sql.Date x = new java.sql.Date(date.getTime());
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setDate(1, x);
            ps.setInt(2, Reservation_ID);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
    
    public static void main(String[] args) {
        ReservationDAO dao = new ReservationDAO();
        
       User d = dao.getUser(1);
        System.out.println(d);
    }
}
