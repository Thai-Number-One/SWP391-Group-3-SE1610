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
import model_staff.Prescription;
import model_staff.allstaff;
import model_staff.medicine;
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
    
     public List<allstaff> allstaff() throws Exception {
        List<allstaff> list = new ArrayList<>();
        String sql = "select * \n" +
"from Reservation_detail as a inner join [User] as b on a.User_ID = b.User_ID\n" +
"							inner join Prescription as c on c.Prescription_ID = a.Prescription_ID\n" +
"							inner join Medicine as d on c.Medicine_ID = d.Medicine_ID\n" +
"							inner join Reservation as e on a.Reservation_ID = e.Reservation_ID\n" +
"							inner join Service as f on a.Service_ID = f.Service_ID \n"
                + "where b.Role_ID = 4 ";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                allstaff s = new allstaff();
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
                rd.setPrescription_ID(rs.getInt("Prescription_ID"));
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
                reservations r = new reservations();
                r.setReservationID(rs.getInt("Reservation_ID"));
                r.setUserID(rs.getInt("User_ID"));
                r.setStaffid(rs.getInt("Staff_ID"));
                r.setDate(rs.getDate("Date"));
                r.setStatus(rs.getString("Status"));
                r.setBeginTime(rs.getDate("Begin_Time"));
                r.setTotalcost(rs.getFloat("Total_cost"));
                //////////////////////////////////////////////////////////////
                medicine m = new medicine();
                m.setMedicineid(rs.getInt("Medicine_ID"));
                m.setMedicinename(rs.getString("Medicine_name"));
                m.setPrice(rs.getFloat("Price"));
                m.setCountry(rs.getString("country"));
                m.setExpirydate(rs.getDate("Expiry_date"));
                m.setDetail(rs.getString("Detail"));
                m.setImage(rs.getString("Image"));
                //////////////////////////////////////////////////////////////
                Prescription p = new Prescription();
                p.setPrescriptionid(rs.getInt("Prescription_ID"));
                p.setUserid(rs.getInt("User_ID"));
                p.setMedicineid(rs.getInt("Medicine_ID"));
                p.setAmount(rs.getInt("Amount"));
                p.setNote(rs.getString("Note"));
                //////////////////////////////////////////////////////////////
                s.setReservations(r);
                s.setUser(u);
                s.setReservationdetail(rd);
                s.setService(se);
                s.setMedicine(m);
                s.setPrescription(p);
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
     
      public List<allstaff> filterallstaff(String names,Date from,Date to,String namem) throws Exception {
        List<allstaff> list = new ArrayList<>();
        String sql = "select * \n" +
"from Reservation_detail as a inner join [User] as b on a.User_ID = b.User_ID\n" +
"							inner join Prescription as c on c.Prescription_ID = a.Prescription_ID\n" +
"							inner join Medicine as d on c.Medicine_ID = d.Medicine_ID\n" +
"							inner join Reservation as e on a.Reservation_ID = e.Reservation_ID\n" +
"							inner join Service as f on a.Service_ID = f.Service_ID \n"
                + "where b.Role_ID = 4 ";
        
         if (names != null&& !names.equals("")) {
            sql += " AND f.Service_Name like '%" + names + "%'";
        }
        if (namem != null && !namem.equals("")) {
            sql += " AND d.Medicine_name like '%" + namem + "%'";
        }

        if (from != null) {
            sql += " AND e.Date >= '" + from + "'";
        }
        if (to != null) {
            sql += " AND e.Date <= '" + to + "'";
        }
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                allstaff s = new allstaff();
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
                rd.setPrescription_ID(rs.getInt("Prescription_ID"));
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
                reservations r = new reservations();
                r.setReservationID(rs.getInt("Reservation_ID"));
                r.setUserID(rs.getInt("User_ID"));
                r.setStaffid(rs.getInt("Staff_ID"));
                r.setDate(rs.getDate("Date"));
                r.setStatus(rs.getString("Status"));
                r.setBeginTime(rs.getDate("Begin_Time"));
                r.setTotalcost(rs.getFloat("Total_cost"));
                //////////////////////////////////////////////////////////////
                medicine m = new medicine();
                m.setMedicineid(rs.getInt("Medicine_ID"));
                m.setMedicinename(rs.getString("Medicine_name"));
                m.setPrice(rs.getFloat("Price"));
                m.setCountry(rs.getString("country"));
                m.setExpirydate(rs.getDate("Expiry_date"));
                m.setDetail(rs.getString("Detail"));
                m.setImage(rs.getString("Image"));
                //////////////////////////////////////////////////////////////
                Prescription p = new Prescription();
                p.setPrescriptionid(rs.getInt("Prescription_ID"));
                p.setUserid(rs.getInt("User_ID"));
                p.setMedicineid(rs.getInt("Medicine_ID"));
                p.setAmount(rs.getInt("Amount"));
                p.setNote(rs.getString("Note"));
                //////////////////////////////////////////////////////////////
                s.setReservations(r);
                s.setUser(u);
                s.setReservationdetail(rd);
                s.setService(se);
                s.setMedicine(m);
                s.setPrescription(p);
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

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
    
    public List<service> allservice() throws Exception {
        List<service> list = new ArrayList<>();
        String sql = "select * from Service";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                service s = new service();
                s.setServiceid(rs.getInt("Service_ID"));
                s.setServicename(rs.getString("Service_Name"));
                s.setDetail(rs.getString("Detail"));
                s.setType(rs.getString("Type"));
                s.setImage(rs.getString("Image"));
                s.setTitle(rs.getString("Title"));
                s.setPrice(rs.getInt("Price"));
                s.setDiscount(rs.getInt("Discount"));
                s.setRate(rs.getInt("Rate"));
                s.setStatus(rs.getString("Status"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<medicine> allmedicine() throws Exception {
        List<medicine> list = new ArrayList<>();
        String sql = "select * from Medicine";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                medicine s = new medicine();
                s.setMedicineid(rs.getInt("Medicine_ID"));
                s.setMedicinename(rs.getString("Medicine_name"));
                s.setCountry(rs.getString("country"));
                s.setExpirydate(rs.getDate("Expiry_date"));
                s.setDetail(rs.getString("Detail"));            
                s.setImage(rs.getString("Image"));     
                s.setPrice(rs.getInt("Price"));
                
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
                rd.setPrescription_ID(rs.getInt("Prescription_ID"));
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
                rd.setPrescription_ID(rs.getInt("Prescription_ID"));
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
                rd.setPrescription_ID(rs.getInt("Prescription_ID"));
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
            List<allstaff> list = d.allstaff();
            List<reservations> list1 = d.Allreservations();
            List<user> list2 = d.Alluser();

            for (int i = 0; i < list.size(); i++) {
                System.out.println(list.get(i).getPrescription().getNote());
            }

        } catch (Exception ex) {
            Logger.getLogger(reservatonsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
