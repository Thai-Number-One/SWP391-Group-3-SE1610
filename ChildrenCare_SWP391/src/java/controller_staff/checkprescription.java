/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller_staff;

import dal_staff.insert_reservationDAO;
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
import model_staff.Prescription;

/**
 *
 * @author dathp
 */
public class checkprescription extends HttpServlet {

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
            out.println("<title>Servlet add_prescription</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet add_prescription at " + request.getContextPath() + "</h1>");
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
            int id = Integer.parseInt(request.getParameter("id"));
            
            reservatonsDAO d = new reservatonsDAO();
            List l =new ArrayList();
            for (int i = 0; i < d.allstaff().size(); i++) {
                if(d.allstaff().get(i).getPrescription().getPrescriptionid()==id){
                    l.add(d.allstaff().get(i));
                }
            }
            request.setAttribute("me", d.allmedicine());
            request.setAttribute("add", l);
            request.getRequestDispatcher("staff/addmedicine.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(checkprescription.class.getName()).log(Level.SEVERE, null, ex);
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
            insert_reservationDAO d = new insert_reservationDAO();
            int pid = Integer.parseInt(request.getParameter("pid"));
            int uid = Integer.parseInt(request.getParameter("uid"));
            int mid = Integer.parseInt(request.getParameter("mid"));
            int amount = Integer.parseInt(request.getParameter("amount"));
            String note = request.getParameter("note");
            
            d.insertPrescription(new Prescription(pid, uid, mid, amount, note));
            response.sendRedirect("prescription");
        } catch (Exception ex) {
            Logger.getLogger(checkprescription.class.getName()).log(Level.SEVERE, null, ex);
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
