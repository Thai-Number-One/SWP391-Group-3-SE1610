/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.BaseDAO;
import Entity.Setting;
import Entity.Type;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HP
 */
public class SettingDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Setting> GetAllSetting() {
        String query = "Select * from Setting";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Setting> list = new ArrayList<>();
            while (rs.next()) {
                Setting s = new Setting(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getBoolean(5));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Setting> SearchByName(String name) {
        String query = "Select * from Setting where value like ?";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            rs = ps.executeQuery();
            List<Setting> list = new ArrayList<>();
            while (rs.next()) {
                Setting s = new Setting(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getBoolean(5));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public int getNumberPage() {
        String query = "select count(*) from Setting";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 5;
                if (total % 5 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Setting> GetPage(int index) {
        String query = "  select * from Setting \n"
                + "  order by Setting_ID\n"
                + "  OFFSET ? Rows\n"
                + "  FETCH FIRST 5 ROWS ONLY";
        try {
            try {
                con = new BaseDAO().BaseDao();
            } catch (Exception ex) {
                Logger.getLogger(SettingDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            ps = con.prepareStatement(query);
            ps.setInt(1, (index - 1) * 5);
            rs = ps.executeQuery();
            List<Setting> list = new ArrayList<>();
            while (rs.next()) {
                Setting s = new Setting(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getBoolean(5));
                list.add(s);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public List<Type> GetAllType() {
        String query = "Select * from Type";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Type> list = new ArrayList<>();
            while (rs.next()) {
                Type t = new Type(rs.getInt(1),
                        rs.getString(2));
                list.add(t);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public void ChangeStatus(int status, int setting_ID) {
        String query = "Update Setting set Status = ? where Setting_ID = ?";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            ps.setInt(1, status);
            ps.setInt(2, setting_ID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Setting GetSetting(int id) {
        String query = "select * from Setting where Setting_ID = ?";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Setting s = new Setting(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getBoolean(5));
                return s;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public String GetTypeName(int id) {
        String query = "Select Type_name from Type where Type_ID = ?";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Setting> GetSettingByType(int Tid) {
        String query = "Select * from Setting where Type_ID = ?";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            ps.setInt(1, Tid);
            rs = ps.executeQuery();
            List<Setting> list = new ArrayList<>();
            while (rs.next()) {
                Setting s = new Setting(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getBoolean(5));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Setting> GetSettingByStatus(int id) {
        String query = "Select * from Setting where Status = ?";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            List<Setting> list = new ArrayList<>();
            while (rs.next()) {
                Setting s = new Setting(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getBoolean(5));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public void AddNewSetting(Setting s) {
        String query = "Insert into Setting values (?,?,?,?,?)";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            ps.setInt(1, s.getSetting_ID());
            ps.setInt(2, s.getType_ID());
            ps.setString(3, s.getValue());
            ps.setString(4, s.getDescription());
            ps.setInt(5, 1);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Setting getSettingByID(int id) {
        String query = "select * from Setting where Setting_ID = ?";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Setting s = new Setting(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4), rs.getBoolean(5));
                return s;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void UpdateSetting(Setting s) {
        String query = "UPDATE [dbo].[Setting] SET [Type_ID] = ?,[Value] = ? ,[Description] = ?,[Status] = ? where [Setting_ID] = ?";
        try {
            con = new BaseDAO().BaseDao();
            ps = con.prepareStatement(query);
            ps.setInt(1, 1);
            ps.setString(2, s.getValue());
            ps.setString(3, s.getDescription());
            ps.setBoolean(4, s.isStatus());
            ps.setInt(5, s.getSetting_ID());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
