/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author s
 */
public class UserDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<User> checkemailexit(String email){
        List<User> list = new ArrayList<>();
        String query = "select * from [User]\n" +
                        "where Email = ?";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while(rs.next()){
                User u = new User(rs.getInt(1),
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
                list.add(u);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public void updateaccount(String id, String pass){
 
        try {
            String sql="update [User]\n" +
                       "set [Password] = ?\n" +
                        "where [User_ID] = ? ";
            
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setString(1, pass);
            ps.setString(2, id);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    } 
    
    
    
    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        List<User> list = dao.checkemailexit("mdchannelvn@gmail.com");
        for(User u : list){
            System.out.println(u);
        }
    }
    public User login(String user, String pass){
        String query = "select * from [User] where User_name = ? and Password = ?";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new User(rs.getInt(1),
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
            }
            
        } catch (Exception e) {
        }
        
        return null;
    }
    public User GetUserByID(int id){
        String query = "select * from [User] where User_ID = ?";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new User(rs.getInt(1),
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
            }
        } catch (Exception e) {
        }
        
        return null;
    }
    public List<User> GetStaffActive(){
        String query = "select * from [User] where Role_ID = 2 and Status = 1";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<User> lst = new ArrayList<>();
            while(rs.next()){
                User u = new User(rs.getInt(1),
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
                lst.add(u);
            }
            return lst;
        } catch (Exception e) {
        }
        return null;
    }
}
