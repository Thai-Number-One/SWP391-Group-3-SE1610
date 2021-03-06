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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dathp
 */
public class filterreservation extends HttpServlet {

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
            out.println("<title>Servlet filterreservation</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet filterreservation at " + request.getContextPath() + "</h1>");
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

            String datefrom = request.getParameter("datefrom");
            String dateto = request.getParameter("dateto");
            String statusR = request.getParameter("status");
            String staff = request.getParameter("staff");

            Date from = (datefrom == null || datefrom.equals(""))
                    ? null : Date.valueOf(datefrom);
            Date to = (dateto == null || dateto.equals(""))
                    ? null : Date.valueOf(dateto);
            Integer id = (staff == null || staff.equals(""))
                    ? null : Integer.parseInt(staff);
            Integer status = (statusR == null || statusR.equals(""))
                    ? null : Integer.parseInt(statusR);

            List l = new ArrayList();
            for (int i = 0; i < d.Alluser().size(); i++) {
                if (d.Alluser().get(i).getRoleid() == 2) {
                    l.add(d.Alluser().get(i));
                }
            }

            request.setAttribute("all", d.filter(id, status, from, to));
            request.setAttribute("staff", l);

            request.getRequestDispatcher("staff/reservation.jsp").forward(request, response);
        } catch (Exception ex) {
            System.out.println(ex);
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
