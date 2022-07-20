/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller_setting;

import DAO.SettingDAO;
import Entity.Setting;
import Entity.Type;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "SettingDetailsServlet", urlPatterns = {"/settingdetails"})
public class SettingDetailsServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String index = request.getParameter("id");
        int id = Integer.parseInt(index);
        SettingDAO dao = new SettingDAO();
        Setting s = dao.getSettingByID(id);
        List<Type> listT = dao.GetAllType();
        String type = ""+s.getType_ID();
        String check;
        if(s.isStatus() == true){
            check =""+ 1;
        }else{
            check =""+ 0;
        }
        request.setAttribute("status", check);
        request.setAttribute("lstT", listT);
        request.setAttribute("mess", type);
        request.setAttribute("setting", s);
        request.getRequestDispatcher("SettingDetails.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        int type = Integer.parseInt(request.getParameter("type"));
        String value = request.getParameter("value");
        String description = request.getParameter("description");
        int status = Integer.parseInt(request.getParameter("status"));
        String href = request.getParameter("href");
        if("".equals(value.trim()) || "".equals(description.trim()) || "".equals(href.trim())){
            request.setAttribute("mess", "Please input all text box!");
            request.getRequestDispatcher("settinglist").forward(request, response);
        }else{
        boolean index;
        if (status == 1) {
            index = true;
        } else {
            index = false;
        }
        Setting s = new Setting(id, type, value, description, index, href);
        SettingDAO dao = new SettingDAO();
        dao.UpdateSetting(s);
        response.sendRedirect("settinglist");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
