/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.User;
import java.sql.Connection;
import java.sql.Date;
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
    
    public String CheckUserNameExists(String user) {
        String query = "select User_Name from [User] where User_name = ?";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while(rs.next()){
                return rs.getString(1);
            }
            
        } catch (Exception e) {
        }
        return null;
    }
    
    public void CreateUser(String fullname, String phone, String address, String email, String user, String pass, Date dob, int gender) {
        String query = "insert into [User](FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)\n" +
        "values (?,?,?,?,?,?,?,?,Null,?,4,1)";
        try {
            Date newdate = Date.valueOf(java.time.LocalDate.now());
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullname);
            ps.setString(2, address);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setDate(5, dob);
            ps.setDate(6, newdate);
            ps.setString(7, user);
            ps.setString(8, pass);
            ps.setInt(9, gender);
            rs = ps.executeQuery();
            
        } catch (Exception e) {
        }
        
    }
    public void UpdateUserProfileByID(int id, String fullname, String address, String phone, Date dob, int gender) {
        String query = " update [User] set FullName = ?,Address = ?,Phone = ?,Date = ?,Gender = ? Where User_ID = ?";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            ps.setInt(6, id);
            ps.setString(1, fullname);
            ps.setString(2, address);
            ps.setString(3, phone);
            ps.setDate(4, dob);
            ps.setInt(5, gender);

            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }
}
