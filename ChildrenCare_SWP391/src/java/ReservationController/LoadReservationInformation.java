/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ReservationController;

import DAO.ReservationDAO;
import Entity.Reservation;
import Entity.Reservation_detail;
import Entity.Service;
import dal_staff.reservatonsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model_staff.reservations_user;

/**
 *
 * @author s
 */
@WebServlet(name = "LoadReservationInformation", urlPatterns = {"/loadreservationinformation"})
public class LoadReservationInformation extends HttpServlet {

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
        try {

            String id = request.getParameter("id");
            
            int idd = Integer.parseInt(id);

            String rid = request.getParameter("rid");
            
            int idr = Integer.parseInt(rid);
            
            Cookie u = new Cookie("Rid",rid);
            Cookie g = new Cookie("Uid", id);
            u.setMaxAge(60*60);
            g.setMaxAge(60*60);
            
            reservatonsDAO d = new reservatonsDAO();
          
            List l =new ArrayList();

            for (int i = 0; i < d.reservations_user().size(); i++) {
                if(d.reservations_user().get(i).getRedetail().getUserid()==idd){
                    l.add(d.reservations_user().get(i));
                }
            }
            
            
            response.addCookie(u);
            response.addCookie(g);
            ReservationDAO dao = new ReservationDAO();
            Reservation ll = dao.getDetailID(idr);
            
                        
            String Servicename = dao.getDetailService(idr);
            
            
            Reservation_detail rd = dao.getReDe(idr);
            
            Service s = dao.getServiceDe(idr);
            
            request.setAttribute("detailreser", ll);
            request.setAttribute("servicename", Servicename);
            request.setAttribute("ReDetail", rd);
            request.setAttribute("SerDe", s);
            request.setAttribute("all", l);

            request.getRequestDispatcher("ReservationInformation.jsp").forward(request, response);

        } catch (Exception e) {
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
