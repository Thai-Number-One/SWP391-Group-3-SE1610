/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller_staff;

import Context.BaseDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model_staff.reservations;

/**
 *
 * @author dathp
 */
public class reservatonsDAO extends BaseDAO{
    
    public List<reservations> Allreservations(){  
         List<reservations> list = new ArrayList<>();
        String sql = "select id_product,name_product,a.money,image,cmt,b.id_category,b.name_category,star,date \n" +
        " from Product as a inner join Category as b on a.id_category=b.id_category\n" +
                " order by Star desc";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Product s = new Product();
                Category cate = new Category(rs.getInt("id_category"), rs.getString("name_category"));
                s.setId(rs.getInt("id_product"));
                s.setName(rs.getString("name_product"));
                s.setImage(rs.getString("image"));
                s.setCmt(rs.getString("cmt"));
                s.setDate(rs.getDate("date"));
                s.setStar(rs.getFloat("star"));
                s.setMoney(rs.getFloat("money"));
                s.setCate(cate);
                list.add(s);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
}
