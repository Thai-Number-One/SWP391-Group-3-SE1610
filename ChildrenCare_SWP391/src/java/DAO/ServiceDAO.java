/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Bloglist;
import model.Service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author phong
 */
public class ServiceDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    

    public void upService(int Service_ID,
            String Service_Name, String Detail,
            String Image, String Title, float Price, int Discount, float Rate, int status, String type) {
        String query = "update Service set Service_Name = ?, Detail = ?, Image = ?, Type = ?, Price =  ?, Discount =  ?, Rate =  ?, Status =  ? where  Service_ID =  ?";

        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);

            
            ps.setString(1, Service_Name);
            ps.setString(2, Detail);
            ps.setString(3, Image);
            ps.setString(4, type);
            ps.setFloat(5, Price);
            ps.setInt(6, Discount);
            ps.setFloat(7, Rate);
            ps.setInt(8, status);
            ps.setInt(9, Service_ID);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public List<Service> getAllServices() {
        List<Service> list = new ArrayList<>();
        String query = "select * FROM [TestProject4].[dbo].[Service]";
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getFloat(7),
                        rs.getInt(8),
                        rs.getFloat(9),
                        rs.getInt(10)
                ));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Service> filterServices(String name) {
        List<Service> list = new ArrayList<>();
        String query = "select * FROM [TestProject4].[dbo].[Service]\n"
                + " where 1=1 ";
        if (name != null || !name.equals("")) {
            query += " AND Service_Name like '%" + name + "%'";
        }
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getFloat(7),
                        rs.getInt(8),
                        rs.getFloat(9),
                        rs.getInt(10)
                ));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Service> Servicepage(List<Service> list, int begin, int end) {
        List<Service> l = new ArrayList();
        for (int i = begin; i < end; i++) {
            l.add(list.get(i));
        }
        return l;
    }

    public void insertService(int Service_ID,
            String Service_Name, String Detail, String Type,
            String Image, String Title, float Price, int Discount, float Rate, int status) {
        String query = "insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)\n"
                + "values(?,?,?,?,?,?,?,?,?,?)";

        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);

            ps.setInt(1, Service_ID);
            ps.setString(2, Service_Name);
            ps.setString(3, Detail);
            ps.setString(4, Type);
            ps.setString(5, Image);
            ps.setString(6, Title);
            ps.setFloat(7, Price);
            ps.setInt(8, Discount);
            ps.setFloat(9, Rate);
            ps.setInt(10, status);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void deleteService(String pid) {
        String query = "DELETE FROM [TestProject4].[dbo].[Service]\n"
                + "where Service_ID = ?";
        try {
            conn = new BaseDAO().BaseDao();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {

        ServiceDAO dao = new ServiceDAO();
        List<Service> list = dao.getAllServices();
        for (Service service : list) {
            System.out.println(service);
        }
    }

}
