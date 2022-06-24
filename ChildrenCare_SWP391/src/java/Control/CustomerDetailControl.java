/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DAO.ServiceDetailDAO;
import Entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author win
 */
@WebServlet(name = "Customer_Detail", urlPatterns = {"/customerdetail"})
public class CustomerDetailControl extends HttpServlet {

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
        try {
            processRequest(request, response);
            ServiceDetailDAO dao = new ServiceDetailDAO();
            //int id = Integer.parseInt(request.getParameter("id"));
            User u = dao.GetCustomerByID(1);
            request.setAttribute("customerdetail", u);
            request.getRequestDispatcher("CustomerDetail.jsp").forward(request, response);
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
        try {
            ServiceDetailDAO dao = new ServiceDetailDAO();
            String fullname = request.getParameter("fullname");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            int gender = Integer.parseInt(request.getParameter("gender"));
            dao.UpdateCustomerByID(gender, fullname, phone, email, address, gender);
            User u = dao.GetCustomerByID(1);
            request.setAttribute("mess", "Save success");
            request.setAttribute("customerdetail", u);
            request.getRequestDispatcher("CustomerDetail.jsp").forward(request, response);

        } catch (Exception e){
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
