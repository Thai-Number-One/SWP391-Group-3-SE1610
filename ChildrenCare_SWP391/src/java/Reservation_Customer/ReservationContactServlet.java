/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Reservation_Customer;

import DAO.UserDAO;
import Entity.ReservationCustomer;
import Entity.User;
import controller_staff.ReservationCompletion;
import dal_staff.reservatonsDAO;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model_staff.reservationdetail;

/**
 *
 * @author HP
 */
@WebServlet(name = "ReservationContactServlet", urlPatterns = {"/reservationcontact"})
public class ReservationContactServlet extends HttpServlet {

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
        processRequest(request, response);
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
        HttpSession session = request.getSession();
        Object u = session.getAttribute("loginsuccess");
        User user = (User) u;
        List<ReservationCompletion> lstC = new ArrayList<>();
        List<reservationdetail> lstRD = new ArrayList<>();
        if (user != null) {
            try {
                Object obj = session.getAttribute("rd");
                Object obj2 = session.getAttribute("completion");
                if (obj2 != null) {
                    session.removeAttribute("completion");
                }
                reservatonsDAO dao = new reservatonsDAO();
                UserDAO uDAO = new UserDAO();
                List<ReservationCustomer> lst;
                lst = (List<ReservationCustomer>) obj;
                for (int i = 0; i < lst.size(); i++) {
                    request.removeAttribute("mess1");
                    request.removeAttribute("mess2");
                    String ChildrenName = request.getParameter("children" + lst.get(i).getId());
                    Pattern p1 = Pattern.compile("^[a-zA-Z]+(\\s[a-zA-Z]+)+$");
                    
                    int Age = Integer.parseInt(request.getParameter("Age" + lst.get(i).getId()));
                    String sDate = request.getParameter("Date" + lst.get(i).getId());

                    int Service_ID = lst.get(i).getService_id();
                    Date date = new SimpleDateFormat("yyyy-mm-dd").parse(sDate);
                    String Time = request.getParameter("Time" + lst.get(i).getId());
                    int Doctor = Integer.parseInt(request.getParameter("Doctor" + lst.get(i).getId()));
                    String Doctor_Name = uDAO.GetUserByID(Doctor).getFullName();
                    
                    if (!p1.matcher(ChildrenName).find()) {
                        request.setAttribute("mess1", "Please check your name again!");
                        request.getRequestDispatcher("ReservationContact.jsp").forward(request, response);
                    }
                    else{
                    lstC.add(new ReservationCompletion(i, Age, lst.get(i).getService_Name(), ChildrenName, Doctor_Name, Time, sDate, lst.get(i).getTotal()));
                    dao.AddNewReservation(0, date, lst.get(i).getPrice());
                    int Prescription_ID = dao.TotalReservationDetails() + 1;
                    int Reservation_ID = dao.TakeFinalReservationID();
                    int user_id = user.getUser_ID();
                    reservationdetail rd = new reservationdetail(Prescription_ID, Reservation_ID, Service_ID, user_id, Doctor, Age, Time, ChildrenName);
                    lstRD.add(rd);
                    dao.AddToReservationDetails(rd);
                    }
                }

            } catch (ParseException ex) {
                Logger.getLogger(ReservationContactServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            session.setAttribute("completion", lstC);
            session.setAttribute("reservationdetail", lstRD);
            request.getRequestDispatcher("/reservationcompletion").forward(request, response);
        } else {
            response.sendRedirect("login.jsp");
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
