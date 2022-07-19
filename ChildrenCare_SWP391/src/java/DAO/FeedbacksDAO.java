/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Feedbacks;
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
public class FeedbacksDAO extends BaseDAO {

    public List<allfeedbacks> filterallstaff(String status, String sevice, Integer star, String name) throws Exception {
        List<allfeedbacks> list = new ArrayList<>();
        String sql = "select *\n"
                + "from Feedback as a inner join Reservation as b on a.Reservation_ID=b.Reservation_ID\n"
                + "					inner join [User] as d on a.User_ID=d.User_ID\n"
                + "					inner join Reservation_detail as c on a.Reservation_ID=c.Reservation_ID	\n"
                + "					inner join Service as e on c.Service_ID=e.Service_ID\n"
                + "where 1=1";

        if (status != null && !status.equals("")) {
            sql += " AND a.Feedback_status like  '%" + status + "%'";
        }
        if (sevice != null && !sevice.equals("")) {
            sql += " AND e.Service_Name like '%" + sevice + "%'";
        }

        if (star != null && !star.equals("")) {
            sql += " AND a.Star = " + star;
        }

        if (name != null && !name.equals("")) {
            sql += " AND d.FullName like '%" + name + "%'";
        }
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                allfeedbacks s = new allfeedbacks();
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
                reservationdetail rd = new reservationdetail();
                rd.setPrescription_ID(rs.getInt("Prescription_ID"));
                rd.setReservationid(rs.getInt("Reservation_ID"));
                rd.setServiceid(rs.getInt("Service_ID"));
                rd.setUserid(rs.getInt("User_ID"));
                rd.setStaffid(rs.getInt("Staff_ID"));
                rd.setNamesale(rs.getString("Name_Sale"));
                rd.setChildrenname(rs.getString("Children_Name"));
                rd.setAge(rs.getInt("Age"));
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
                u.setStatus(rs.getInt("Status"));
                //////////////////////////////////////////////////////////////                           
                reservations r = new reservations();
                r.setReservationID(rs.getInt("Reservation_ID"));

                r.setDate(rs.getDate("Date"));
                r.setStatus(rs.getInt("Status"));
                r.setBeginTime(rs.getDate("Begin_Time"));
                r.setTotalcost(rs.getFloat("Total_cost"));
                //////////////////////////////////////////////////////////////
                Feedbacks f = new Feedbacks();
                f.setFeedbackid(rs.getInt("Feedback_ID"));
                f.setUserid(rs.getInt("User_ID"));
                f.setDetail(rs.getString("Detail"));
                f.setStatus(rs.getInt("Feedback_status"));
                f.setStar(rs.getInt("Star"));
                f.setDate(rs.getDate("Date_Feedback"));
                f.setReservationid(rs.getInt("Reservation_ID"));
                //////////////////////////////////////////////////////////////
                s.setReservations(r);
                s.setFeedbacks(f);
                s.setReservationdetail(rd);
                s.setService(se);
                s.setUser(u);

                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<allfeedbacks> feedbackspage(List<allfeedbacks> list, int begin, int end) {
        List<allfeedbacks> l = new ArrayList();
        for (int i = begin; i < end; i++) {
            l.add(list.get(i));
        }
        return l;
    }

    public void updateStatusFeedback(int id, int status) throws Exception {
        try {

            String sql = "update Feedback set Feedback_status = ?  where Feedback_ID = ?";
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, status);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public List<Feedbacks> feedbacks() throws Exception {
        List<Feedbacks> list = new ArrayList<>();
        String sql = "select * from Feedback";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Feedbacks s = new Feedbacks();
                s.setFeedbackid(rs.getInt("Feedback_ID"));
                s.setUserid(rs.getInt("User_ID"));
                s.setDetail(rs.getString("Detail"));
                s.setStatus(rs.getInt("Feedback_status"));
                s.setStar(rs.getInt("Star"));
                s.setDate(rs.getDate("Date_Feedback"));
                s.setReservationid(rs.getInt("Reservation_ID"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Feedbacks GetFeedbackByID(int id) {
        String query = "Select * from Feedback where  Feedback_ID = ?";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Feedbacks s = new Feedbacks();
                s.setFeedbackid(rs.getInt("Feedback_ID"));
                s.setUserid(rs.getInt("User_ID"));
                s.setDetail(rs.getString("Detail"));
                s.setStatus(rs.getInt("Feedback_status"));
                s.setStar(rs.getInt("Star"));
                s.setDate(rs.getDate("Date_Feedback"));
                s.setReservationid(rs.getInt("Reservation_ID"));
                return s;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void AddNewFeedback(int userid, int star, int reservationid, String details) {
        String query = "INSERT INTO [dbo].[Feedback]([User_ID], [Detail] ,[Feedback_status] ,[Star] ,[Date_Feedback] ,[Reservation_ID])\n"
                + "VALUES (?,?,?,?,GETDATE(),?)";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, userid);
            ps.setString(2, details);
            ps.setInt(3, 1);
            ps.setInt(4, star);
            ps.setInt(5, reservationid);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
        } catch (Exception ex) {
            Logger.getLogger(FeedbacksDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<allfeedbacks> allfeedbacks() throws Exception {
        List<allfeedbacks> list = new ArrayList<>();
        String sql = "select * \n"
                + "from Feedback as a inner join Reservation as b on a.Reservation_ID=b.Reservation_ID\n"
                + "					inner join [User] as d on a.User_ID=d.User_ID\n"
                + "					inner join Reservation_detail as c on a.Reservation_ID=c.Reservation_ID			\n"
                + "					inner join Service as e on c.Service_ID=e.Service_ID";
        try {
            Connection conn = new BaseDAO().BaseDao();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                allfeedbacks s = new allfeedbacks();
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
                reservationdetail rd = new reservationdetail();
                rd.setPrescription_ID(rs.getInt("Prescription_ID"));
                rd.setReservationid(rs.getInt("Reservation_ID"));
                rd.setServiceid(rs.getInt("Service_ID"));
                rd.setUserid(rs.getInt("User_ID"));
                rd.setStaffid(rs.getInt("Staff_ID"));
                rd.setNamesale(rs.getString("Name_Sale"));
                rd.setChildrenname(rs.getString("Children_Name"));
                rd.setAge(rs.getInt("Age"));
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
                u.setStatus(rs.getInt("Status"));
                //////////////////////////////////////////////////////////////                           
                reservations r = new reservations();
                r.setReservationID(rs.getInt("Reservation_ID"));

                r.setDate(rs.getDate("Date"));
                r.setStatus(rs.getInt("Status"));
                r.setBeginTime(rs.getDate("Begin_Time"));
                r.setTotalcost(rs.getFloat("Total_cost"));
                //////////////////////////////////////////////////////////////
                Feedbacks f = new Feedbacks();
                f.setFeedbackid(rs.getInt("Feedback_ID"));
                f.setUserid(rs.getInt("User_ID"));
                f.setDetail(rs.getString("Detail"));
                f.setStatus(rs.getInt("Feedback_status"));
                f.setStar(rs.getInt("Star"));
                f.setDate(rs.getDate("Date_Feedback"));
                f.setReservationid(rs.getInt("Reservation_ID"));
                //////////////////////////////////////////////////////////////
                s.setReservations(r);
                s.setFeedbacks(f);
                s.setReservationdetail(rd);
                s.setService(se);
                s.setUser(u);

                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        try {
            FeedbacksDAO f = new FeedbacksDAO();
            for (int i = 0; i < f.filterallstaff("view", "", null, "").size(); i++) {
                System.out.println(f.filterallstaff("view", "", null, "").get(i).getFeedbacks().getStatus());
            }
        } catch (Exception ex) {
            Logger.getLogger(FeedbacksDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
