/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Bloglist;
import Entity.Feedbacks;
import Entity.Posts;
import Entity.allfeedbacks;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model_staff.reservationdetail;
import model_staff.reservations;
import model_staff.service;
import model_staff.user;

/**
 *
 * @author dathp
 */
public class BlogDAO extends BaseDAO{
    public List<Posts> posts() throws Exception {
        List<Posts> list = new ArrayList<>();
        String sql = "select * from Post /n"
                + "order by Date";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Posts s = new Posts();
                s.setPost_ID(rs.getInt("Post_ID"));
                s.setTilte(rs.getString("Title"));              
                s.setContent(rs.getString("Content"));
                s.setStatus(rs.getInt("Status"));
                s.setUser_ID(rs.getInt("User_ID"));
                s.setImage(rs.getString("Image"));
                s.setService_ID(rs.getInt("Service_ID"));     
                s.setDate(rs.getDate("Date"));
                s.setCategory(rs.getString("Category"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public List<Bloglist> Blogs() throws Exception {
        List<Bloglist> list = new ArrayList<>();
        String sql = "select * \n" +
"from Post as a inner join [User] as b on a.User_ID=b.User_ID\n" +
"				inner join Service as c on a.Service_ID=c.Service_ID";
        
        
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
               Bloglist s = new Bloglist();
                service se = new service();
                se.setServiceid(rs.getInt("Service_ID"));
                se.setServicename(rs.getString("Service_Name"));
                se.setDetail(rs.getString("Detail"));
                se.setType(rs.getString("Type"));
                se.setImage(rs.getString("Image"));
                se.setTitle(rs.getString("Title"));
                se.setPrice(rs.getFloat("Price"));
                se.setDiscount(rs.getInt("Discount"));
                se.setRate(rs.getFloat("Rate"));
                se.setStatus(rs.getInt("Status"));          
                /////////////////////////////////////////////////////////////        
                user u = new user();
                u.setUserid(rs.getInt("User_ID"));
                u.setFullname(rs.getString("FullName"));
                u.setAddress(rs.getString("Address"));
                u.setPhone(rs.getString("Phone"));
                u.setEmail(rs.getString("Email"));
                u.setDate(rs.getDate("Date"));
                u.setUsername(rs.getString("User_Name"));
                u.setPassword(rs.getString("Password"));
                u.setAvatar(rs.getString("Avatar"));
                u.setGender(rs.getInt("Gender"));
                u.setRoleid(rs.getInt("Role_ID"));
                //////////////////////////////////////////////////////////////                           
                 Posts p = new Posts();
                p.setPost_ID(rs.getInt("Post_ID"));
                p.setTilte(rs.getString("Title"));              
                p.setContent(rs.getString("Content"));
                p.setStatus(rs.getInt("Status"));
                p.setUser_ID(rs.getInt("User_ID"));
                p.setImage(rs.getString("Image"));
                p.setService_ID(rs.getInt("Service_ID"));     
                p.setDate(rs.getDate("Date"));
                p.setCategory(rs.getString("Category"));
                //////////////////////////////////////////////////////////////

                s.setService(se);
                s.setUser(u);
                s.setPosts(p);
               
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Bloglist> BlogsSearch( String name) throws Exception {
        List<Bloglist> list = new ArrayList<>();
        String sql = "select * \n" +
"from Post as a inner join [User] as b on a.User_ID=b.User_ID\n" +
"				inner join Service as c on a.Service_ID=c.Service_ID";
        
        if (name != null&& !name.equals("")) {
            sql += " AND a.Title like '%" + name + "%'";
        }
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
               Bloglist s = new Bloglist();
                service se = new service();
                se.setServiceid(rs.getInt("Service_ID"));
                se.setServicename(rs.getString("Service_Name"));
                se.setDetail(rs.getString("Detail"));
                se.setType(rs.getString("Type"));
                se.setImage(rs.getString("Image"));
                se.setTitle(rs.getString("Title"));
                se.setPrice(rs.getFloat("Price"));
                se.setDiscount(rs.getInt("Discount"));
                se.setRate(rs.getFloat("Rate"));
                se.setStatus(rs.getInt("Status"));          
                /////////////////////////////////////////////////////////////        
                user u = new user();
                u.setUserid(rs.getInt("User_ID"));
                u.setFullname(rs.getString("FullName"));
                u.setAddress(rs.getString("Address"));
                u.setPhone(rs.getString("Phone"));
                u.setEmail(rs.getString("Email"));
                u.setDate(rs.getDate("Date"));
                u.setUsername(rs.getString("User_Name"));
                u.setPassword(rs.getString("Password"));
                u.setAvatar(rs.getString("Avatar"));
                u.setGender(rs.getInt("Gender"));
                u.setRoleid(rs.getInt("Role_ID"));
                //////////////////////////////////////////////////////////////                           
                 Posts p = new Posts();
                p.setPost_ID(rs.getInt("Post_ID"));
                p.setTilte(rs.getString("Title"));              
                p.setContent(rs.getString("Content"));
                p.setStatus(rs.getInt("Status"));
                p.setUser_ID(rs.getInt("User_ID"));
                p.setImage(rs.getString("Image"));
                p.setService_ID(rs.getInt("Service_ID"));     
                p.setDate(rs.getDate("Date"));
                p.setCategory(rs.getString("Category"));
                //////////////////////////////////////////////////////////////

                s.setService(se);
                s.setUser(u);
                s.setPosts(p);
               
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Bloglist> Blogspage(List<Bloglist> list, int begin, int end){  
        List<Bloglist> l = new ArrayList();
        for (int i = begin; i < end; i++) 
            l.add(list.get(i));
        return l;
    }
    public static void main(String[] args) {
        try {
            BlogDAO d = new BlogDAO();
            for (int i = 0; i < d.Blogs().size(); i++) {
                System.out.println(d.Blogs().get(i));
            }
        } catch (Exception ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
