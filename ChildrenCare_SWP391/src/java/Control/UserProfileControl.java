/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DAO.UserDAO;
import Entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "UserProfileControl", urlPatterns = {"/userprofile"})
public class UserProfileControl extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loginsuccess");
        if (user == null) {
            response.sendRedirect("login.jsp");
        } else {
            UserDAO dao = new UserDAO();
            User u = dao.GetUserByID(user.getUser_ID());
            request.setAttribute("userprofile", u);
            request.getRequestDispatcher("UserProfile.jsp").forward(request, response);
        }
    }

    /*public static void main(String[] args) {
        UserDAO dao = new UserDAO();
            //int id = Integer.parseInt(request.getParameter("id"));
            User u = dao.GetUserByID(1);
            System.out.println(u);
    }*/
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loginsuccess");
        if (user == null) {
            response.sendRedirect("login.jsp");
        } else {
        try {
            UserDAO dao = new UserDAO();
            int id = user.getUser_ID();
            String fullname = request.getParameter("fullname");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            Date dob = Date.valueOf(request.getParameter("date"));
            int gender = Integer.parseInt(request.getParameter("gender"));

            Pattern p2 = Pattern.compile("^[0-9]{10}$");
            if (!p2.matcher(phone).find()) {
                User u = dao.GetUserByID(id);
                request.setAttribute("mess1", "Please check your phone number again!");
                request.setAttribute("userprofile", u);
                request.getRequestDispatcher("UserProfile.jsp").forward(request, response);
            } else {
                dao.UpdateUserProfileByID(id, fullname, address, phone, dob, gender);
                User u = dao.GetUserByID(id);
                request.setAttribute("messSuccess", "Update profile success.");
                request.setAttribute("userprofile", u);
                request.getRequestDispatcher("UserProfile.jsp").forward(request, response);
            }
        } catch (Exception e) {
        }
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
