/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Posts;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
        
        try {
            List<Posts> list = new ArrayList<>();
            String sql = "select top 5 * from Post\n" +
                         "Where Post_ID not in(select MAX(Post_ID) from Post)\n" +
                         "order by Post_ID desc";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Posts p = new Posts (rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getInt(6),rs.getDate(7),rs.getInt(8),rs.getString(9));
                       list.add(p);
            }
            return list;

        } catch (Exception e) {
        }
        
        return null;
    }
    
    
    public static void main(String[] args) {
        PostDetailDAO dao = new PostDetailDAO();
        List<Posts> list = dao.getTop5();
        
        for (Posts posts : list) {
            System.out.println(posts);
        }
        

        
    }
    
}
