/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal_staff;

import Context.BaseDAO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model_staff.reservationdetail;
import model_staff.reservations;
import model_staff.reservations_user;
import model_staff.service;
import model_staff.user;

/**
 *
 * @author dathp
 */
public class reservatonsDAO extends BaseDAO {

    public List<reservations> Allreservations() throws Exception {
        List<reservations> list = new ArrayList<>();
        String sql = "select Reservation_ID, User_ID,Staff_ID,Date,Status,Begin_Time,Total_cost\n"
                + "from Reservation";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                reservations s = new reservations();
                s.setReservationID(rs.getInt("Reservation_ID"));
                s.setUserID(rs.getInt("User_ID"));
                s.setStaffid(rs.getInt("Staff_ID"));
                s.setDate(rs.getDate("Date"));
                s.setStatus(rs.getString("Status"));
                s.setBeginTime(rs.getDate("Begin_Time"));
                s.setTotalcost(rs.getFloat("Total_cost"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<user> Alluser() throws Exception {
        List<user> list = new ArrayList<>();
        String sql = "select * \n"
                + "from [User]";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                user u = new user();
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
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<reservations_user> reservations_user() throws Exception {
        List<reservations_user> list = new ArrayList<>();
        String sql = "select  * \n"
                + "from Reservation as a inner join  [User] as b on a.User_ID = b.User_ID\n"
                + "					inner join Reservation_detail as c on a.Reservation_ID=c.Reservation_ID\n"
                + "					inner join Service as d on c.Service_ID=d.Service_ID\n"
                + "where b.Role_ID = 4 \n"
                + "order by a.Begin_Time";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                reservations_user s = new reservations_user();
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
                se.setStatus(rs.getString("Status"));
                /////////////////////////////////////////////////////////////
                reservationdetail rd = new reservationdetail();
                rd.setReservationid(rs.getInt("Reservation_ID"));
                rd.setServiceid(rs.getInt("Service_ID"));
                rd.setUserid(rs.getInt("User_ID"));
                rd.setNamesale(rs.getString("Name_Sale"));
                /////////////////////////////////////////////////////////////        
                user u = new user();
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
                s.setStaffid(rs.getInt("Staff_ID"));
                s.setDate(rs.getDate("Date"));
                s.setStatus(rs.getString("Status"));
                s.setOrdertime(rs.getDate("Begin_Time"));
                s.setTotalcost(rs.getFloat("Total_cost"));
                s.setUser(u);
                s.setRedetail(rd);
                s.setService(se);
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<reservations_user> filter(Integer staffid,
            String status,
            Date from, Date to) throws Exception {
        List<reservations_user> list = new ArrayList<>();
        String sql = "select  * \n"
                + "from Reservation as a inner join  [User] as b on a.User_ID = b.User_ID\n"
                + "					inner join Reservation_detail as c on a.Reservation_ID=c.Reservation_ID\n"
                + "					inner join Service as d on c.Service_ID=d.Service_ID\n"
                + "where b.Role_ID = 4 ";
        if (staffid != null) {
            sql += " AND a.Staff_ID = " + staffid;
        }
        if (status != null && !status.equals("")) {
            sql += " AND a.Status like '%" + status + "%'";
        }

        if (from != null) {
            sql += " AND Begin_Time >= '" + from + "'";
        }
        if (to != null) {
            sql += " AND Begin_Time <= '" + to + "'";
        }

        sql += "\n order by Begin_Time";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                reservations_user s = new reservations_user();
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
                se.setStatus(rs.getString("Status"));
                /////////////////////////////////////////////////////////////
                reservationdetail rd = new reservationdetail();
                rd.setReservationid(rs.getInt("Reservation_ID"));
                rd.setServiceid(rs.getInt("Service_ID"));
                rd.setUserid(rs.getInt("User_ID"));
                rd.setNamesale(rs.getString("Name_Sale"));
                /////////////////////////////////////////////////////////////  
                user u = new user();
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
                s.setStaffid(rs.getInt("Staff_ID"));
                s.setDate(rs.getDate("Date"));
                s.setStatus(rs.getString("Status"));
                s.setOrdertime(rs.getDate("Begin_Time"));
                s.setTotalcost(rs.getFloat("Total_cost"));
                s.setUser(u);
                s.setRedetail(rd);
                s.setService(se);
                list.add(s);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return list;
    }

    public List<reservations_user> search(Integer id,
            String name
    ) throws Exception {
        List<reservations_user> list = new ArrayList<>();
        String sql = "select  * \n"
                + "from Reservation as a inner join  [User] as b on a.User_ID = b.User_ID\n"
                + "					inner join Reservation_detail as c on a.Reservation_ID=c.Reservation_ID\n"
                + "					inner join Service as d on c.Service_ID=d.Service_ID\n"
                + "where b.Role_ID = 4 ";
        if (id != null) {
            sql += " AND a.Reservation_ID = " + id;
        }
        if (name != null && !name.equals("")) {
            sql += " AND b.FullName like '%" + name + "%'";
        }

        sql += "\n order by Begin_Time";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                reservations_user s = new reservations_user();
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
                se.setStatus(rs.getString("Status"));
                /////////////////////////////////////////////////////////////
                reservationdetail rd = new reservationdetail();
                rd.setReservationid(rs.getInt("Reservation_ID"));
                rd.setServiceid(rs.getInt("Service_ID"));
                rd.setUserid(rs.getInt("User_ID"));
                rd.setNamesale(rs.getString("Name_Sale"));
                /////////////////////////////////////////////////////////////  
                user u = new user();
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
                s.setStaffid(rs.getInt("Staff_ID"));
                s.setDate(rs.getDate("Date"));
                s.setStatus(rs.getString("Status"));
                s.setOrdertime(rs.getDate("Begin_Time"));
                s.setTotalcost(rs.getFloat("Total_cost"));
                s.setUser(u);
                s.setRedetail(rd);
                s.setService(se);
                list.add(s);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return list;
    }

    public static void main(String[] args) {
        try {
            reservatonsDAO d = new reservatonsDAO();
            List<reservations_user> list = d.reservations_user();
            List<reservations> list1 = d.Allreservations();
            List<user> list2 = d.Alluser();

            for (int i = 0; i < list.size(); i++) {
                System.out.println(list.get(i).getService().getServicename());
            }

        } catch (Exception ex) {
            Logger.getLogger(reservatonsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
