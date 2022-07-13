/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.DashboardDAO;
import Entity.Medicine;
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
 * @author thaic
 */
@WebServlet(name = "DashboardControl", urlPatterns = {"/dashboard"})
public class DashboardControl extends HttpServlet {

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
        DashboardDAO dao = new DashboardDAO();
        int totalfeedback = dao.countFeedBack();
        double avgStar = dao.AvgStar();
        int totaluser = dao.countUser();
        int totalrever = 0;
        int totaluser_rev = totalrever + totaluser;
        int successStatus = dao.countReveration(1);
        int canceledStatus = dao.countReveration(-1);
        int submittedStatus = dao.countReveration(0);
        int totalStatus = submittedStatus + canceledStatus + successStatus;
         double totalREVENUE = dao.getREVENUE();
         
         List<Medicine> list = dao.getAllMedicine();
        
       request.setAttribute("totalfeedback", totalfeedback);
        request.setAttribute("avgStar", avgStar);
        request.setAttribute("totaluser", totaluser);
        request.setAttribute("totalrever", totalrever);
        request.setAttribute("totaluser_rev", totaluser_rev);
        request.setAttribute("successStatus", successStatus);
        request.setAttribute("canceledStatus", canceledStatus);
        request.setAttribute("submittedStatus", submittedStatus);
        request.setAttribute("totalStatus", totalStatus);
        request.setAttribute("totalREVENUE", totalREVENUE);
        request.setAttribute("list", list);
       request.getRequestDispatcher("DashBoard.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
