/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal_staff;

import Context.BaseDAO;
import controller_staff.reservation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model_staff.reservations;
import model_staff.user;

/**
 *
 * @author dathp
 */
public class insert_reservationDAO extends BaseDAO{
    public void insertUser(user u) throws SQLException, Exception{
          try {
              String sql="insert into [User]([User_ID],FullName,Address,Phone,Email,Date,User_Name,Password,Avatar,Gender,Role_ID)\n" +
"values (?,?,?,?,?,?,?,?,?,?,?)";
                Connection conn = new BaseDAO().BaseDao();
                  PreparedStatement st = conn.prepareStatement(sql);  
                  st.setInt(1, u.getUser_ID());
                  st.setString(2, u.getFullName());
                  st.setString(3, u.getAddress());
                  st.setString(4, u.getPhone());
                  st.setString(5, u.getEmail());
                  st.setDate(6, u.getDate());
                  st.setString(7, u.getUser_Name());
                  st.setString(8, u.getPassword());
                  st.setString(9, u.getAvatar());
                  st.setString(10, u.getGender());
                  st.setInt(11, u.getRole_ID());              
                  st.executeUpdate();              
          } catch (SQLException ex) {
              System.out.println(ex);
          }
    }
    
    public void insertReservation(reservations u) throws SQLException, Exception{
          try {
              String sql="insert into Reservation(Reservation_ID, User_ID,Date,Status,Begin_Time,Total_cost)\n" +
"values(?,?,?,?,?,?)";
                Connection conn = new BaseDAO().BaseDao();
                  PreparedStatement st = conn.prepareStatement(sql);  
                  st.setInt(1, u.getReservation_ID());
                  st.setInt(2, u.getUser_ID());
                  st.setDate(3, u.getDate());
                  st.setString(4, u.getStatus());
                  st.setFloat(5, u.getTotal_cost());
                  st.executeUpdate();              
          } catch (SQLException ex) {
              System.out.println(ex);
          }
    }
}
