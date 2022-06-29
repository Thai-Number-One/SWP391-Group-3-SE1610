/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal_staff;

import Context.BaseDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model_staff.Prescription;
import model_staff.reservations;
import model_staff.user;

/**
 *
 * @author dathp
 */
public class insert_reservationDAO extends BaseDAO{
    public static void main(String[] args) {
        try {
            insert_reservationDAO d = new insert_reservationDAO();
            d.updateStatus(3, -1);
        } catch (Exception ex) {
            Logger.getLogger(insert_reservationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateStatus(int id,int s) throws Exception{
        try {
            
              String sql="update Reservation set Status = ?  where Reservation_ID = ?";
                 Connection conn = new BaseDAO().BaseDao();
                  PreparedStatement st = conn.prepareStatement(sql);  
                  st.setInt(1, s);
                  st.setInt(2, id); 
    
                  st.executeUpdate();
          } catch (SQLException ex) {
              System.out.println(ex);
          }
    }
    
    public void insertPrescription(Prescription p) throws SQLException, Exception{
          try {
              String sql="insert into Prescription(Prescription_ID,User_ID,Medicine_ID,Amount,Note)\n" +
"values(?,?,?,?,?)";
                Connection conn = new BaseDAO().BaseDao();
                  PreparedStatement st = conn.prepareStatement(sql);  
                  st.setInt(1, p.getPrescriptionid());
                  st.setInt(2, p.getUserid());
                  st.setInt(3, p.getMedicineid());
                  st.setInt(4, p.getAmount());
                  st.setString(5, p.getNote());
                  st.executeUpdate();              
          } catch (SQLException ex) {
              System.out.println(ex);
          }
    }
    
    public void insertUser(user u) throws SQLException, Exception{
          try {
              String sql="insert into [User]([User_ID],FullName,Address,Phone,Email,Date,User_Name,Password,Avatar,Gender,Role_ID)\n" +
"values (?,?,?,?,?,?,?,?,?,?,?)";
                Connection conn = new BaseDAO().BaseDao();
                  PreparedStatement st = conn.prepareStatement(sql);  
                  st.setInt(1, u.getUserid());
                  st.setString(2, u.getFullname());
                  st.setString(3, u.getAddress());
                  st.setString(4, u.getPhone());
                  st.setString(5, u.getEmail());
                  st.setDate(6, u.getDate());
                  st.setString(7, u.getUsername());
                  st.setString(8, u.getPassword());
                  st.setString(9, u.getAvatar());
                  st.setInt(10, u.getGender());
                  st.setInt(11, u.getUserid());              
                  st.executeUpdate();              
          } catch (SQLException ex) {
              System.out.println(ex);
          }
    }
    
    public void insertReservation(reservations u) throws SQLException, Exception{
          try {
              String sql="insert into Reservation(Reservation_ID,Date,Status,Begin_Time,Total_cost)\n" +
"values(?,?,?,?,?,?)";
                Connection conn = new BaseDAO().BaseDao();
                  PreparedStatement st = conn.prepareStatement(sql);  
                  st.setInt(1, u.getReservationID());
                  st.setDate(2, u.getDate());
                  st.setInt(3, u.getStatus());
                  st.setFloat(4, u.getTotalcost());
                  st.executeUpdate();              
          } catch (SQLException ex) {
              System.out.println(ex);
          }
    }
    
}
