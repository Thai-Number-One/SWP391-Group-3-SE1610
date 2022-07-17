
package ReservationController;

import DAO.ReservationDAO;
import Entity.Reservation;
import Entity.User;
import dal_staff.reservatonsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model_staff.reservations_user;

/**
 *
 * @author s
 */
@WebServlet(name = "LoadMyReservation", urlPatterns = {"/LoadMyReservation"})
public class LoadMyReservation extends HttpServlet {

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
            
            HttpSession session = request.getSession();
            User u = (User) session.getAttribute("loginsuccess");

            int idd = u.getUser_ID();

            reservatonsDAO r = new reservatonsDAO();
            List<reservations_user> l = new ArrayList<>();
            for (int i = 0; i < r.reservations_user().size(); i++) {
                if(r.reservations_user().get(i).getRedetail().getUserid() == idd){
                    l.add(r.reservations_user().get(i));
                }
            }
            request.setAttribute("detailreser", l);

            request.getRequestDispatcher("MyReservation.jsp").forward(request, response);

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
        //processRequest(request, response);
        
        
        try {
            Cookie arr[] = request.getCookies();
            
            if (arr != null) {
                for (Cookie o : arr) {
                    if (o.getName().equals("Uid")) {
                        String id = o.getValue();
                        int idd = Integer.parseInt(id);
                        
                        reservatonsDAO r = new reservatonsDAO();
                        List<reservations_user> l = new ArrayList<>();
                        for (int i = 0; i < r.reservations_user().size(); i++) {
                            if (r.reservations_user().get(i).getRedetail().getUserid() == idd) {
                                l.add(r.reservations_user().get(i));
                            }
                        }
                        request.setAttribute("detailreser", l);

                        request.getRequestDispatcher("MyReservation.jsp").forward(request, response);
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
