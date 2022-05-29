/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller_staff;

import dal_staff.reservatonsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model_staff.reservations;
import model_staff.user;

/**
 *
 * @author dathp
 */
public class reservation extends HttpServlet {

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
            out.println("<title>Servlet reservation</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet reservation at " + request.getContextPath() + "</h1>");
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
            reservatonsDAO d = new reservatonsDAO();
            List l = new ArrayList();
            for (int i = 0; i < d.Alluser().size(); i++) 
                if(d.Alluser().get(i).getRoleid()==2) l.add(d.Alluser().get(i));
            
            List l1 = new ArrayList();
            for (int i = 0; i <d.reservations_user().size(); i++) {
                if(d.reservations_user().get(i).getUser().getRoleid() == 2) l1.add(d.reservations_user().get(i));
            }
            
            request.setAttribute("all", l1);   
            request.setAttribute("staff", l);  
            request.getRequestDispatcher("reservations/reservation.jsp").forward(request, response);
        } catch (Exception ex) {
         
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
            reservatonsDAO d = new reservatonsDAO();
            
            String datefrom =request.getParameter("datefrom");
            String dateto = request.getParameter("dateto");
            String status = request.getParameter("status");
            String staff = request.getParameter("staff");
            List l1 = new ArrayList();
            int i_staff = Integer.parseInt(staff);
            Date d_dateto = Date.valueOf(dateto);
            Date d_dateform = Date.valueOf(datefrom);
            for (int i = 0; i < d.reservations_user().size(); i++) {
                if(d_dateform != null && d_dateto==null && status.equals("all") && i_staff == 0)
                    if(d.reservations_user().get(i).getOrdertime().after(d_dateform))
                        l1.add(d.reservations_user().get(i));
                if(d_dateform != null && d_dateto!=null && status.equals("all") && i_staff == 0)
                    if(d.reservations_user().get(i).getOrdertime().after(d_dateform) && d.reservations_user().get(i).getOrdertime().before(d_dateto))
                        l1.add(d.reservations_user().get(i));   
                if(d_dateform != null && d_dateto!=null && status.equals(status) && i_staff == 0)
                    if(d.reservations_user().get(i).getOrdertime().after(d_dateform) && d.reservations_user().get(i).getOrdertime().before(d_dateto))
                        l1.add(d.reservations_user().get(i));   
                if(d_dateform != null && d_dateto!=null && status.equals(d.reservations_user().get(i).getStatus()) && i_staff == d.reservations_user().get(i).getUserid() )
                    if(d.reservations_user().get(i).getOrdertime().after(d_dateform) && d.reservations_user().get(i).getOrdertime().before(d_dateto))
                        l1.add(d.reservations_user().get(i)); 
                
            }
            
            
            List l = new ArrayList(); 
            for (int i = 0; i < d.Alluser().size(); i++)
                if(d.Alluser().get(i).getRoleid()==2) l.add(d.Alluser().get(i));
            request.setAttribute("all", l1);
            request.setAttribute("staff", l);  
            request.getRequestDispatcher("reservations/reservation.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(reservation.class.getName()).log(Level.SEVERE, null, ex);
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
