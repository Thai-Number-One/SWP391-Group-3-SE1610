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
public class FeedbacksFilter extends HttpServlet {

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
            out.println("<title>Servlet FeedbacksFilter</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FeedbacksFilter at " + request.getContextPath() + "</h1>");
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
             String status = request.getParameter("status");
             String sevice = request.getParameter("sevice");
             String xstar = request.getParameter("star");
             String name = request.getParameter("name");
              
              Integer star = (xstar == null || xstar.equals(""))
                    ? null : Integer.parseInt(xstar);
             
            FeedbacksDAO d = new FeedbacksDAO();
            reservatonsDAO r = new reservatonsDAO();
            String xpage = request.getParameter("page");
            int page, size;
            
            size = d.filterallstaff(status, sevice, star, name).size();
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
            list = d.feedbackspage(d.filterallstaff(status, sevice, star, name), begin, end);
            
            
            
            request.setAttribute("page", page);
            request.setAttribute("num", num);
            request.setAttribute("sevices", r.allservice());
            request.setAttribute("allfeedbacks", list);
            request.setAttribute("checkpage", 1);
            request.setAttribute("status", status);
            request.setAttribute("sevice", sevice);
            request.setAttribute("star", star);
            request.setAttribute("name", name);
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
