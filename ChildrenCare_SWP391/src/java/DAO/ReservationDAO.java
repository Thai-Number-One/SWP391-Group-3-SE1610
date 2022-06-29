/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Reservation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author s
 */
public class ReservationDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Reservation getDetail(int id){
        try {
            String sql = "select R.Reservation_ID, R.[Date], R.Status, R.Begin_Time, R.Total_cost, Rd.Service_ID  from [User] u\n" +
" join Reservation_detail Rd on u.User_ID = Rd.User_ID\n" +
" join Reservation R on Rd.Reservation_ID = R.Reservation_ID\n" +
" where u.User_ID = ?";
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                Reservation p = new Reservation (rs.getInt(1),rs.getDate(2),rs.getInt(3),rs.getDate(4),rs.getFloat(5));
                        return p;
            }

        } catch (Exception e) {
        }
        
        return null;
    } 

    public static void main(String[] args) {
        ReservationDAO dao = new ReservationDAO();
        
        Reservation r = dao.getDetail(4);
        
        System.out.println(r.getReservation_ID());
    }
}
