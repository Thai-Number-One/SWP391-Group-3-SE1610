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
import java.util.regex.Pattern;
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
            reservatonsDAO d = new reservatonsDAO();
            Pattern p = Pattern.compile("^[0-9]+$");
            String rid = request.getParameter("id");
            if (rid.equals("") || p.matcher(rid).find() == false) {
                response.sendRedirect("prescription?check=1");
            }
            int count = 0;
            for (int i = 0; i < d.reservations_user().size(); i++) {
                if (d.reservations_user().get(i).getRedetail().getPrescription_ID()== Integer.parseInt(rid)) {
                    count++;
                }
            }
            if (count == 0) {
                response.sendRedirect("prescription?check=1");
            }
            String check = request.getParameter("check");
            if (check != null) {
                request.setAttribute("check", 1);
            }

            Integer id = (rid == null || rid.equals(""))
                    ? null : Integer.parseInt(rid);

            List l = new ArrayList();
            for (int i = 0; i < d.reservations_user().size(); i++) {
                if (d.reservations_user().get(i).getRedetail().getPrescription_ID()== id) {
                    l.add(d.reservations_user().get(i));
                    break;
                }
            }
            request.setAttribute("me", d.allmedicine());
            request.setAttribute("add", l);
            request.getRequestDispatcher("staff/addmedicine.jsp").forward(request, response);
        } catch (Exception ex) {
            reservatonsDAO d = new reservatonsDAO();
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
            String amount_raw = request.getParameter("amount");
            String note = request.getParameter("note");
            Pattern p = Pattern.compile("^[1-9]{1,2}$");
            Pattern pn = Pattern.compile("^[ ]+$");
            if (p.matcher(amount_raw).find() && !note.equals("") && pn.matcher(note).find() == false) {
                int amount = Integer.parseInt(amount_raw);
                d.insertPrescription(new Prescription(pid, uid, mid, amount, note));
                response.sendRedirect("prescription");
            } else {

                response.sendRedirect("checkprescription?id=" + pid + "&check=1");
            }

        } catch (Exception ex) {
            System.out.println("error: " + ex);
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
