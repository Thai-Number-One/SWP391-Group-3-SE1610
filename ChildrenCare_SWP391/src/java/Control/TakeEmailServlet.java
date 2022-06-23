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
import java.util.List;
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
@WebServlet(name = "TakeEmailServlet", urlPatterns = {"/TakeEmail"})
public class TakeEmailServlet extends HttpServlet {

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
        try {
            String email = request.getParameter("email");
            
            
            UserDAO dao = new UserDAO();
            List<User> list = dao.checkemailexit(email);
            

            if(email == null || list.size() == 0){
                request.setAttribute("mess", "Your email does not have an account");
                request.getRequestDispatcher("TakeEmailj.jsp").forward(request, response);
            }else {
                
                String User_ID;
                    
                User_ID = String.valueOf(list.get(0).getUser_ID());

                HttpSession session = request.getSession();
                session.setAttribute("acc", list);
                
                Cookie e = new Cookie("emaild",email);
                Cookie u = new Cookie("user_id",User_ID);
                u.setMaxAge(360*360);
                response.addCookie(u);
                e.setMaxAge(360*360);
                response.addCookie(e);
                
                request.setAttribute("userd", list);
                request.getRequestDispatcher("ConfirmEmail.jsp").forward(request, response);
                
            }
   
            
        } catch (Exception e) {
            e.printStackTrace();
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
