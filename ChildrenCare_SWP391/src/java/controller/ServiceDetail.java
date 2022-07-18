/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.DashboardDAO;
import DAO.FeedbacksDAO;
import Entity.Service;
import Entity.UserT;
import Entity.allfeedbacks;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thai Trinh
 */
@WebServlet(name = "ServiceDetail", urlPatterns = {"/ServiceDetail"})
public class ServiceDetail extends HttpServlet {

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
        try {
            String id = request.getParameter("serviceid");
            DashboardDAO dao = new DashboardDAO();
            Service s = dao.getServiceByID(id);
            List<allfeedbacks> lst = new ArrayList<>();
            FeedbacksDAO FDao = new FeedbacksDAO();
            for (int i = 0; i < FDao.allfeedbacks().size(); i++) {
                if (FDao.allfeedbacks().get(i).getService().getServiceid() == s.getService_id() && FDao.allfeedbacks().get(i).getFeedbacks().getStatus() == 1) {
                    lst.add(FDao.allfeedbacks().get(i));
                }
            }
            request.setAttribute("feedback", lst);
            request.setAttribute("detail", s);
        } catch (Exception ex) {
            Logger.getLogger(ServiceDetail.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("serviceDetailPublic.jsp").forward(request, response);
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
