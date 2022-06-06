/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Medicine;
import Entity.Reservation;
import Entity.role;
import Entity.UserT;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.sound.sampled.ReverbType;
import org.apache.jasper.tagplugins.jstl.ForEach;

/**
 *
 * @author thaic
 */
public class DashboardDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<UserT> getAllProduct() {
        List<UserT> list = new ArrayList<>();
        String query = "select * from [ChildrenCare].[dbo].[User]";
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new UserT(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getInt(12),
                        rs.getInt(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Medicine> getAllMedicine() {
        List<Medicine> list = new ArrayList<>();
        String query = "select * from [ChildrenCare].[dbo].[Medicine]";
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Medicine(rs.getInt(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static void main(String[] args) {
        DashboardDAO dao = new DashboardDAO();
        
        System.out.println(dao.getAllMedicine());
    }
    
    

    public void deleteProduct(String pid) {
        String query = "DELETE FROM [dbo].[DataUser]\n"
                + "where id = ?";
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    
    public List<role> getAllRole() {
        List<role> list = new ArrayList<>();
        String query = "select * FROM [product].[dbo].[Role]";
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new role(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
     public List<String> getStatusReveration() {
        List<String> list = new ArrayList<>();
        String query = "SELECT Status from  [ChildrenCare].[dbo].[Reservation]";
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(rs.getString(1));
            }
        } catch (Exception e) {
        }
        return list;
    }
     
     public List<Reservation> getReservation() {
        List<Reservation> list = new ArrayList<>();
        String query = "SELECT Status, Total_cost from  [ChildrenCare].[dbo].[Reservation]";
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Reservation(rs.getString(1),
                        rs.getDouble(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
     
     public double getREVENUE(){
         DashboardDAO dao = new DashboardDAO();
        List<Reservation> list = dao.getReservation();
        double total = 0;
       for(Reservation s: list){
           if(s.getStatus().toLowerCase().equals("success")){
               total += s.getTotalCost();
           }
       }
       return total;
     }
     
     public  int countReveration(String infor){
         int count = 0;
         DashboardDAO dao = new DashboardDAO();
         List<String> list = dao.getStatusReveration();
          for (String s : list) {
            if(s.toLowerCase().equals(infor.toLowerCase())){
                count++;
            }
        }
          return count;
     }

    public int countFeedBack() {
        String query = "select COUNT(*)\n"
                + "from [ChildrenCare].[dbo].[Feedback]";
        int count = 0;
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
        }

        return count;
    }

    public double AvgStar() {
        String query = "SELECT SUM(Star)\n"
                + "FROM [ChildrenCare].[dbo].[Feedback]";
        DashboardDAO dao = new DashboardDAO();
        double total = 0;
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                total = rs.getInt(1);
            }
            return (double) Math.round(total/dao.countFeedBack() * 10) / 10 ;
        } catch (Exception e) {
        }

        return total;
    }

    public int countUser() {
        String query = "select COUNT(*)\n" +
"FROM [ChildrenCare].[dbo].[User]";
        int count = 0;
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
        }

        return count;
    }
    
      public int countReservation() {
        String query = "select COUNT(*)\n" +
"FROM [ChildrenCare].[dbo].[Reservation]";
        int count = 0;
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
        }

        return count;
    }
    
    
    public void insertProduct(String fullname,
            String address, String phone, String email,
            Date date, String user, String password, String avatar, int gender, int role, int status) {
        String query = "INSERT INTO [dbo].[User]\n"
                + "           ([FullName]\n"
                + "           ,[Address]\n"
                + "           ,[Phone]\n"
                + "           ,[Email]\n"
                + "           ,[Date]\n"
                + "           ,[Date_New]\n"
                + "           ,[User_Name]\n"
                + "           ,[Password]\n"
                + "           ,[Avatar]\n"
                + "           ,[Gender]\n"
                + "           ,[Role_ID]\n"
                + "           ,[Status])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,GETDATE()\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";

        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);

            ps.setString(1, fullname);
            ps.setString(2, address);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setDate(5, date);
            ps.setString(6, user);
            ps.setString(7, password);
            ps.setString(8, avatar);
            ps.setInt(9, gender);
            ps.setInt(10, role);
            ps.setInt(11, status);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public UserT getProductByID(String pid) {
        String query = "select * from [ChildrenCare].[dbo].[User]\n"
                + "where User_ID = ?";
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserT(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getInt(12),
                        rs.getInt(13));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void editProduct(int id, int role, int status) {
        String query = "UPDATE [dbo].[User]\n"
                + "   SET [Role_ID] = ?\n"
                + "      ,[Status] = ?\n"
                + " WHERE User_ID = ?";
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);

            //   ps.setString(1, fullname);
            //   ps.setString(2, address);
            //  ps.setString(3, phone);
            //  ps.setString(4, email);
            //  ps.setDate(5, date);
            //    ps.setString(6, user);
            //  ps.setString(7, password);
            //   ps.setString(8, avatar);
            // ps.setInt(9, gender);
            ps.setInt(1, role);
            ps.setInt(2, status);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public List<UserT> fillterAllProduct(Integer g, Integer r, Integer s) {
        List<UserT> list = new ArrayList<>();
        String query = "select * from [ChildrenCare].[dbo].[User]\n "
                + " Where 1=1 ";
        if (g != null) {
            query += "and gender = " + g;
        }
        if (r != null) {
            query += "and Role_ID = " + r;
        }
        if (s != null) {
            query += "and Status = " + s;
        }

        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new UserT(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getInt(12),
                        rs.getInt(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void send(String to, String sub,
            String msg, final String user, final String pass) {
        //create an instance of Properties Class   
        Properties props = new Properties();

        /* Specifies the IP address of your default mail server
     	   for e.g if you are using gmail server as an email sever
           you will pass smtp.gmail.com as value of mail.smtp host. 
           As shown here in the code. 
           Change accordingly, if your email id is not a gmail id
         */
        props.put("mail.smtp.host", "smtp.gmail.com");
        //below mentioned mail.smtp.port is optional
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        /* Pass Properties object(props) and Authenticator object   
           for authentication to Session instance 
         */
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });

        try {

            /* Create an instance of MimeMessage, 
 	      it accept MIME types and headers 
             */
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(sub);
            message.setContent(msg, "text/html");

            /* Transport class is used to deliver the message to the recipients */
            Transport.send(message);

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

}