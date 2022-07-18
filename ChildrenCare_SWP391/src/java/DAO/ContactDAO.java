/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Contact;
import Entity.Posts;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dathp
 */
public class ContactDAO {
    
    public List<Contact> listContact() throws Exception {
        List<Contact> list = new ArrayList<>();
        String sql = "select * from Contact";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Contact s = new Contact();
                s.setContactid(rs.getInt("Contact_ID"));
                s.setName(rs.getString("Name")); 
                s.setEmail(rs.getString("Email"));
                s.setPhone(rs.getString("Phone"));
                s.setMess(rs.getString("Mesage"));
 
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public void insertContat(String name,String email,String phone,String mess) throws Exception{
        try {
            
              String sql="INSERT INTO [dbo].[Contact]\n" +
"           ([Name]\n" +
"           ,[Email]\n" +
"           ,[Phone]\n" +
"           ,[Mesage])\n" +
"     VALUES\n" +
"           (?\n" +
"           ,?\n" +
"           ,?\n" +
"           ,?)\n";
                 Connection conn = new BaseDAO().BaseDao();
                  PreparedStatement st = conn.prepareStatement(sql);  
                  st.setString(1, name);
                  st.setString(2, email); 
                  st.setString(3, phone);
                  st.setString(4, mess); 
                  
    
                  st.executeUpdate();
          } catch (SQLException ex) {
              System.out.println(ex);
          }
    }
     public void DeleteContat(int id) throws Exception{
        try {
            
              String sql="DELETE FROM [dbo].[Contact]\n" +
"      WHERE Contact_ID = ?";
                 Connection conn = new BaseDAO().BaseDao();
                  PreparedStatement st = conn.prepareStatement(sql);  
                  st.setInt(1, id);
 
                  st.executeUpdate();
          } catch (SQLException ex) {
              System.out.println(ex);
          }
    }
    
    public static void main(String[] args) {
        try {
            ContactDAO d = new ContactDAO();
            System.out.println(d.listContact().get(0).getEmail());
        } catch (Exception ex) {
            Logger.getLogger(ContactDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
