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
import java.time.LocalDate;
import static java.util.Collections.list;
import java.util.List;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author win
 */
@WebServlet(name = "RegisterControl", urlPatterns = {"/register"})
public class RegisterControl extends HttpServlet {

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
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String repass = request.getParameter("repassword");
        Date dob = Date.valueOf(request.getParameter("birthday"));
        int gender = Integer.parseInt(request.getParameter("gender"));
        
        request.removeAttribute("mess1");
        request.removeAttribute("mess2");
        request.removeAttribute("mess3");
        request.removeAttribute("mess4");
        request.removeAttribute("mess5");
        request.removeAttribute("mess6");
        request.removeAttribute("mess7");
        
        Pattern p3 = Pattern.compile("^[a-zA-Z]+(\\s[a-zA-Z]+)+$");
        if(!p3.matcher(fullname).find()){
            request.setAttribute("mess5", "Please check your name again!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        
        Pattern p2 = Pattern.compile("^[0-9]{10}$");
        if(!p2.matcher(phone).find()){
            request.setAttribute("mess4", "Please check your phone number again!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        
        if(!pass.equals(repass)){
            request.setAttribute("mess1", "Pass and ConfirmPass are not the same !");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        Pattern p4 = Pattern.compile("^[a-zA-Z0-9]+$");
        if(!p4.matcher(user).find()){
            request.setAttribute("mess6", "Username must not have space !");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        UserDAO u = new UserDAO();
        String account = u.CheckUserNameExists(user);
        if(account != null){
            
            request.setAttribute("mess2", "User name already exists!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        Pattern p1 = Pattern.compile("^[a-zA-Z][a-zA-Z0-9]+@[a-zA-Z]+(\\.[a-zA-Z]+)+$");
        if(!p1.matcher(email).find()){
            request.setAttribute("mess3", "Please check your Email again !");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        
        Date now = Date.valueOf(java.time.LocalDate.now());
        if(dob.compareTo(now)>=1){
            request.setAttribute("mess7", "Please choose your date of birth !");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        else{
        u.CreateUser(fullname,phone,address,email,user,pass,dob,gender);
        
        request.setAttribute("mess2", "Sign up success, Please login in. ");
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
