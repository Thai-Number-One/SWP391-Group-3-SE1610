/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DAO.FeedbacksDAO;
import Entity.Feedbacks;
import Entity.User;
import dal_staff.reservatonsDAO;
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
import javax.servlet.http.HttpSession;
import model_staff.reservations_user;

/**
 *
 * @author HP
 */
@WebServlet(name = "FeedbackServiceControl", urlPatterns = {"/feedbackservice"})
public class FeedbackServiceControl extends HttpServlet {

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
        /* TODO output your page here. You may use following sample code. */
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
        int reservationid = Integer.parseInt(request.getParameter("reservationid"));
        reservatonsDAO RDAO = new reservatonsDAO();
        List<reservations_user> lst = new ArrayList<>();
        try {
            for (int i = 0; i < RDAO.reservations_user().size(); i++) {
                if (RDAO.reservations_user().get(i).getReservations().getReservationID() == reservationid) {
                    lst.add(RDAO.reservations_user().get(i));
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(FeedbackServiceControl.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("reservation", lst);
        request.getRequestDispatcher("SendFeedback.jsp").forward(request, response);
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
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("loginsuccess");
        if (u == null) {
            response.sendRedirect("login.jsp");
        } else {

            int reservation = Integer.parseInt(request.getParameter("reservationid"));
            int star = Integer.parseInt(request.getParameter("star"));
            String details = request.getParameter("details");
            FeedbacksDAO Fdao = new FeedbacksDAO();
            Fdao.AddNewFeedback(u.getUser_ID(), star, reservation, details);
            request.setAttribute("mess", "Send feedback successful!");
            reservatonsDAO RDAO = new reservatonsDAO();
            List<reservations_user> lst = new ArrayList<>();
            try {
                for (int i = 0; i < RDAO.reservations_user().size(); i++) {
                    if (RDAO.reservations_user().get(i).getReservations().getReservationID() == reservation) {
                        lst.add(RDAO.reservations_user().get(i));
                    }
                }
                request.setAttribute("reservation", lst);
                request.getRequestDispatcher("SendFeedback.jsp").forward(request, response);
            } catch (Exception ex) {
                Logger.getLogger(FeedbackServiceControl.class.getName()).log(Level.SEVERE, null, ex);
            }
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
