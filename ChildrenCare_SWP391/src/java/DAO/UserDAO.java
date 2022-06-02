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
                                  rs.getInt(4),
                                  rs.getString(5),
                                  rs.getDate(6),
                                  rs.getString(7),
                                  rs.getString(8),
                                  rs.getString(9),
                                  rs.getInt(10),
                                  rs.getInt(11));
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
        List<User> list = dao.checkemailexit("nguyenvancuong@gmail.com");
        for(User u : list){
            System.out.println(u);
        }
    }
}
