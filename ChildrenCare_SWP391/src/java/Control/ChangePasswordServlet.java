/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DAO.UserDAO;
import Entity.Mail;
import Entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;
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
@WebServlet(name = "ChangePasswordServlet", urlPatterns = {"/ChangePassword"})
public class ChangePasswordServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("loginsuccess");
        if (u != null) {
            response.sendRedirect("ChangePassword.jsp");
        } else {
            response.sendRedirect("login.jsp");
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
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("loginsuccess");
        if (u != null) {
            try {
                String oldpass = request.getParameter("oldpass");
                if (!u.getPassword().equals(oldpass)) {
                    String mess = "old password not correct";
                    request.setAttribute("mess", mess);
                    request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
                }
                String newpass = request.getParameter("newpass");
                String retypepass = request.getParameter("retypepass");
                if (newpass.equals(retypepass)) {
                    String User_ID = u.getUser_ID() + "";
                    UserDAO dao = new UserDAO();
                    dao.updateaccount(User_ID, newpass);
                    String mess = "Change password successfully";
                    request.setAttribute("mess", mess);
                    request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);

                } else {

                    String mess2 = "Failed to change password";
                    String mess3 = "Retype password not same New Password";
                    request.setAttribute("mess", mess2);
                    request.setAttribute("mess1", mess3);
                    request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
                }
            } catch (IOException | ServletException e) {
            }
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
