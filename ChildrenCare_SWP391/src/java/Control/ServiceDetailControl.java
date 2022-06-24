/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DAO.ServiceDetailDAO;
import Entity.Service;
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
@WebServlet(name = "ServiceDetailControl", urlPatterns = {"/service_detail"})
public class ServiceDetailControl extends HttpServlet {

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
            int id = Integer.parseInt(request.getParameter("id"));
            Service s = dao.GetServiceByID(id);
            request.setAttribute("servicedetail", s);
            request.getRequestDispatcher("ServiceDetail.jsp").forward(request, response);
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
            String name = request.getParameter("ServiceName");
            String type = request.getParameter("Type");
            String title = request.getParameter("Title");
            float price = Float.parseFloat(request.getParameter("Price"));
            int discount = Integer.parseInt(request.getParameter("Discount"));
            String description = request.getParameter("Description");
            String status = request.getParameter("Status");
            int Status = Integer.parseInt(status);

            if (discount >= 100) {
                Service s = dao.GetServiceByID(1);
                request.setAttribute("mess1", "Discount must < 100% !");
                request.setAttribute("servicedetail", s);
                request.getRequestDispatcher("ServiceDetail.jsp").forward(request, response);
            } else {
                dao.UpdateServiceByID(1, name, type, title, price, discount, description, Status);
                Service s = dao.GetServiceByID(1);
                request.setAttribute("mess2", "Edit success !");
                request.setAttribute("servicedetail", s);
                request.getRequestDispatcher("ServiceDetail.jsp").forward(request, response);
            }

            //response.sendRedirect("service_detail?id=" + 1);
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
