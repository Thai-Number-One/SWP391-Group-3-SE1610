/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal_staff;

import Context.BaseDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model_staff.reservations;
import model_staff.reservations_user;
import model_staff.user;
import org.apache.jasper.tagplugins.jstl.ForEach;

/**
 *
 * @author dathp
 */
public class reservatonsDAO extends BaseDAO{
    
    public List<reservations> Allreservations() throws Exception{  
         List<reservations> list = new ArrayList<>();
        String sql = "select Reservation_ID, User_ID,Date,Status,Begin_Time,Total_cost\n" +
"from Reservation";
        try{
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                reservations s = new reservations();     
                s.setReservationID(rs.getInt("Reservation_ID"));
                s.setUserID(rs.getInt("User_ID"));
                s.setDate(rs.getDate("Date"));
                s.setStatus(rs.getString("Status"));
                s.setBeginTime(rs.getDate("Begin_Time"));
                s.setTotalcost(rs.getFloat("Total_cost"));                     
                list.add(s);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    public List<user> Alluser() throws Exception{  
         List<user> list = new ArrayList<>();
        String sql = "select User_ID,FullName,Address,Phone,Email,Date,User_Name,Password,Avatar,Gender,Role_ID\n" +
"from [User]";
        try{
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                user u =new user();
                u.setUserid(rs.getInt("User_ID"));
                u.setFullname(rs.getString("FullName"));
                u.setAddress(rs.getString("Address"));
                u.setPhone(rs.getInt("Phone"));
                u.setEmail(rs.getString("Email"));
                u.setDate(rs.getDate("Date"));
                u.setUsername(rs.getString("User_Name"));
                u.setPassword(rs.getString("Password"));
                u.setAvatar(rs.getString("Avatar"));
                u.setGender(rs.getInt("Gender"));
                u.setRoleid(rs.getInt("Role_ID"));                
                list.add(u);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    public List<reservations_user> reservations_user() throws Exception{  
         List<reservations_user> list = new ArrayList<>();
        String sql = "select  Reservation_ID, a.User_ID,a.Date,Status,Begin_Time,Total_cost\n" +
" ,b.User_ID,b.FullName,b.Address,b.Phone,b.Email,b.Date,b.User_Name,b.Password,b.Avatar,b.Gender,b.Role_ID\n" +
"from Reservation as a inner join [User] as b on a.User_ID = b.User_ID \n" +
"order by a.Begin_Time";
        try{
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                reservations_user s = new reservations_user();
                user u =new user();
                u.setUserid(rs.getInt("User_ID"));
                u.setFullname(rs.getString("FullName"));
                u.setAddress(rs.getString("Address"));
                u.setPhone(rs.getInt("Phone"));
                u.setEmail(rs.getString("Email"));
                u.setDate(rs.getDate("Date"));
                u.setUsername(rs.getString("User_Name"));
                u.setPassword(rs.getString("Password"));
                u.setAvatar(rs.getString("Avatar"));
                u.setGender(rs.getInt("Gender"));
                u.setRoleid(rs.getInt("Role_ID"));
        //////////////////////////////////////////////////////////////                           
                s.setReservationid(rs.getInt("Reservation_ID"));
                s.setUserid(rs.getInt("User_ID"));
                s.setDate(rs.getDate("Date"));
                s.setStatus(rs.getString("Status"));
                s.setOrdertime(rs.getDate("Begin_Time"));
                s.setTotalcost(rs.getFloat("Total_cost"));    
                s.setUser(u);
                list.add(s);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    public static void main(String[] args) {
        try {
            reservatonsDAO d = new reservatonsDAO();
            List<reservations_user> list =d.reservations_user();
            List<reservations> list1 =d.Allreservations();
            List<user> list2 =d.Alluser();
            for (int i = 0; i < list1.size(); i++) {
                System.out.println(list1.get(i).getDate());
            }
            for (int i = 0; i < list.size(); i++) {
                System.out.println(list.get(i).getOrdertime());
            }
             for (int i = 0; i < list2.size(); i++) {
                System.out.println(list2.get(i).getPhone());
            }
        } catch (Exception ex) {
            Logger.getLogger(reservatonsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
