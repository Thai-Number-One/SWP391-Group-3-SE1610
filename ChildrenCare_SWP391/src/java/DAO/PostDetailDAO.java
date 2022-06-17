/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Bloglist;
import Entity.Posts;
import Entity.Service;
import Entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model_staff.service;
import model_staff.user;

/**
 *
 * @author s
 */
public class PostDetailDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Posts getDetail(int id){
        try {
            String sql = "select * from Post\n" +
                         "where Post_ID = ?";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                Posts p = new Posts (rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getInt(6),rs.getDate(7),rs.getInt(8),rs.getString(9));
                        return p;
            }

        } catch (Exception e) {
        }
        
        return null;
    } 
    
    public List<Posts> getTop5(){
        
        List<Posts> list = new ArrayList<>();
            String sql = "select top 5 * from Post\n" +
                         "Where Post_ID not in(select MAX(Post_ID) from Post)\n" +
                         "order by Post_ID desc";
        try {
            
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Posts p = new Posts (rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getInt(6),rs.getDate(7),rs.getInt(8),rs.getString(9));
                       list.add(p);
            }
            

        } catch (Exception e) {
        }
        
        return list;
    }
    public List<Posts> getCategory(){
        List<Posts> list = new ArrayList<>();
        String sql = "select Category from Post";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Posts (rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getInt(6),rs.getDate(7),rs.getInt(8),rs.getString(9)));
                       
            }

        } catch (Exception e) {
        }
        
        return list;
    } 
    public void updatenews(String title, String content, int user_id, String image, int status, String category, int post_id){
 
        try {
            String sql="update Post\n" +
                        "set Title = ?, Content = ?, [User_ID] = ?, [Image] = ?, [Status] = ?, Category = ? \n" +
                        "where Post_ID = ?";
  
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, content);
            ps.setInt(3, user_id);
            ps.setString(4, image);
            ps.setInt(5, status);
            ps.setString(6, category);
            ps.setInt(7, post_id);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    public String getDetailUser(int id){
        try {
            String sql = "select FullName from [User]\n" +
                        "join Post on [User].[User_ID] = Post.[User_ID]\n" +
                        "where Post.Post_ID = ?";
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
    
    public String getDetailService(int id){
        try {
            String sql = "select [Service_Name] from [Service]\n" +
                        "join Post on [Service].[Service_ID] = Post.[Service_ID]\n" +
                        "where Post.Post_ID = ?";
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
    
    
    
    public static void main(String[] args) {
        PostDetailDAO dao = new PostDetailDAO();
        
        Posts d = dao.getDetail(1);
        String s = dao.getDetailService(1);
        System.out.println(s);

    }
    
}
