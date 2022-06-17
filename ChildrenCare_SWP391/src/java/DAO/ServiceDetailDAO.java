/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Service;
import Entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author win
 */
public class ServiceDetailDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Service GetServiceByID(int ID) {
        String query = "select * from [Service] where Service_ID = ?";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            ps.setInt(1, ID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Service(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getFloat(7),
                        rs.getInt(8),
                        rs.getFloat(9),
                        rs.getInt(10));
            }
        } catch (Exception e) {
        }
        return null;
    }


    public void UpdateServiceByID(int ID, String name, String type, String title, float price, int discount, String description, int status) {

        String query = " update Service set Service_Name = ?,Detail = ?,Type = ?,Title = ?,Price = ?,Discount = ?, Status = ? Where Service_ID = ?";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            ps.setInt(8, ID);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, type);
            ps.setString(4, title);
            ps.setFloat(5, price);
            ps.setInt(6, discount);
            ps.setInt(7, status);

            rs = ps.executeQuery();
        } catch (Exception e) {
        }

    }

    public User GetCustomerByID(int ID) {
        String query = "select * from [User] where User_ID = ?";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            ps.setInt(1, ID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getDate(7),
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
    
    public void UpdateCustomerByID(int ID, String fullname, String phone, String email, String address, int gender){
        String query = " update [User] set FullName = ?,Phone = ?,Email = ?,Address = ?,Gender = ? Where User_ID = ?";
        try {
            conn = new BaseDAO().BaseDao();
            ps = conn.prepareStatement(query);
            ps.setInt(6, ID);
            ps.setString(1, fullname);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, address);
            ps.setInt(5, gender);

            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }
}
