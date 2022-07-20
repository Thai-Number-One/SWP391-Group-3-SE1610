/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.DashboardDAO;
import DAO.UserDAO;
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
 * @author thaic
 */
@WebServlet(name = "AddControl", urlPatterns = {"/AddControl"})
public class AddControl extends HttpServlet {

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
        
        String fullname = request.getParameter("fullName");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        Date date = Date.valueOf(request.getParameter("date") ) ;
        String user = request.getParameter("userName");
        String password = request.getParameter("password");
        String avatar = request.getParameter("avatar");
        int gender = Integer.parseInt(request.getParameter("gender"));
        int role = Integer.parseInt(request.getParameter("role"));
        int status = Integer.parseInt(request.getParameter("status"));
        
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
            request.getRequestDispatcher("AddUser.jsp").forward(request, response);
        }
        
//        Pattern p2 = Pattern.compile("^[0-9]{10}$");
//        if(!p2.matcher(phone).find()){
//            request.setAttribute("mess4", "Please check your phone number again!");
//            request.getRequestDispatcher("register.jsp").forward(request, response);
//        }
//        
//        if(!pass.equals(repass)){
//            request.setAttribute("mess1", "Pass and ConfirmPass are not the same !");
//            request.getRequestDispatcher("register.jsp").forward(request, response);
//        }
        Pattern p4 = Pattern.compile("^[a-zA-Z0-9]+$");
        if(!p4.matcher(user).find()){
            request.setAttribute("mess6", "Username must not have space !");
            request.getRequestDispatcher("AddUser.jsp").forward(request, response);
        }
        UserDAO u = new UserDAO();
        String account = u.CheckUserNameExists(user);
        if(account != null){
            
            request.setAttribute("mess2", "User name already exists!");
            request.getRequestDispatcher("AddUser.jsp").forward(request, response);
        }
        Pattern p1 = Pattern.compile("^[a-zA-Z][a-zA-Z0-9]+@[a-zA-Z]+(\\.[a-zA-Z]+)+$");
        if(!p1.matcher(email).find()){
            request.setAttribute("mess3", "Please check your Email again !");
            request.getRequestDispatcher("AddUser.jsp").forward(request, response);
        }
//        
        Date now = Date.valueOf(java.time.LocalDate.now());
        if(date.compareTo(now)>=1){
            request.setAttribute("mess7", "Please choose your date of birth !");
            request.getRequestDispatcher("AddUser.jsp").forward(request, response);
        }
        else{
            DashboardDAO dao = new DashboardDAO();
        dao.insertProduct( fullname, address, phone, email, date, user, password, avatar, gender, role,status);
        
    
        }
        
        String subject = "Your information abount account childrencare.";
        String message = "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "\n"
                + "<head>\n"
                + "</head>\n"
                + "\n"
                + "<body>\n"
                + "    <h3 style=\"color: blue;\">Your order has been processing.</h3>\n"
                + "    <div>Full Name :  </div>" + fullname 
                + "    <div>Phone :  </div>" + phone 
                + "    <div>address :  </div>" +  address 
                 + "    <div>user :  </div>" +  user 
                 + "    <div>password :  </div>" +  password 
                + "    <h3 style=\"color: blue;\">Thank you very much!</h3>\n"
                + "\n"
                + "</body>\n"
                + "\n"
                + "</html>";
        
        DashboardDAO dao = new DashboardDAO();
        dao.send(email, subject, message,"leemuld10@gmail.com", "levu050721");
        
        response.sendRedirect("manager");
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
