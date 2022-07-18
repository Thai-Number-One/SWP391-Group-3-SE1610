/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DAO.FeedbacksDAO;
import Entity.allfeedbacks;
import dal_staff.reservatonsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dathp
 */
public class feedbackslist extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet feedbackslist</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet feedbackslist at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        try {
            FeedbacksDAO d = new FeedbacksDAO();
            reservatonsDAO r = new reservatonsDAO();
            String xpage = request.getParameter("page");
            int page, size;
            
            size = d.allfeedbacks().size();
            int num=(size%10==0?(size/10):((size/10)+1));
            
            if (xpage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xpage);
            }

            int begin, end;
            begin = (page - 1) * 10;
            end = Math.min(page * 10, size)
                    ;
            List<allfeedbacks> list = new ArrayList<>();
            list = d.feedbackspage(d.allfeedbacks(), begin, end);
            
            
            request.setAttribute("page", page);
            request.setAttribute("num", num);
            request.setAttribute("sevices", r.allservice());
            request.setAttribute("allfeedbacks", list);
            request.getRequestDispatcher("feedback.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(feedbackslist.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            int status = Integer.parseInt(request.getParameter("status"));
            FeedbacksDAO d = new FeedbacksDAO();
            d.updateStatusFeedback(id, status);
            response.sendRedirect("feedbackslist");
        } catch (Exception ex) {
            Logger.getLogger(feedbackslist.class.getName()).log(Level.SEVERE, null, ex);
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
