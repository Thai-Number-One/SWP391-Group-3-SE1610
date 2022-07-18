/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ReservationController;

import DAO.ReservationDAO;
import DAO.UserDAO;
import Entity.Reservation_detail;
import Entity.Service;
import dal_staff.reservatonsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.time.LocalDateTime;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author s
 */
@WebServlet(name = "ChangeReservation", urlPatterns = {"/ChangeReservation"})
public class ChangeReservation extends HttpServlet {

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
            out.println("<title>Servlet ChangeReservation</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangeReservation at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        
        String id = request.getParameter("Rid");
        
        int idd = Integer.parseInt(id);
        
        ReservationDAO dao = new ReservationDAO();
        Reservation_detail rd = dao.getReDe(idd);
        
        Service s = dao.getServiceDe(idd);
        
        
        
        request.setAttribute("ReDetail", rd);
        request.setAttribute("SerDe", s);
        
        request.getRequestDispatcher("ChangeReservationInformation.jsp").forward(request, response);
        
        
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
        //processRequest(request, response);
        
        try {
            
            Cookie arr[] = request.getCookies();
            
            if (arr != null) {
                for (Cookie o : arr) {
                    if (o.getName().equals("Rid")) {
                        String id = o.getValue();
                        int idd = Integer.parseInt(id);
                        String childrenname = request.getParameter("children");
                        String age = request.getParameter("Age");
                        int Age = Integer.parseInt(age);
                        String sDate = request.getParameter("Date");
                        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(sDate);
                        String Time = request.getParameter("Time");
                        int Doctor = Integer.parseInt(request.getParameter("Doctor"));

                        ReservationDAO dao = new ReservationDAO();

                        dao.updateReservation_detail(childrenname, Age, Doctor, Time, idd);
                        dao.updateReservation(date, idd);

                        response.sendRedirect("MyReservation.jsp");
            
                    }
                }
            }else{
                response.sendRedirect("HomeP.jsp");
            }
            
        
           
        } catch (Exception e) {
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