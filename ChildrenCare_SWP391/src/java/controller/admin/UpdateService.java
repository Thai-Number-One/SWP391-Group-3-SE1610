/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.ServiceDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Service;

/**
 *
 * @author dathp
 */
public class UpdateService extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateService</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateService at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
           ServiceDAO d = new ServiceDAO();
           String raw_id = request.getParameter("pid");
           int id = Integer.parseInt(raw_id);
           List<Service> list = new ArrayList<>();
           for (int i = 0; i < d.getAllServices().size(); i++) {
               if(d.getAllServices().get(i).getServiceid()==id)
                   list.add(d.getAllServices().get(i));
        }
           request.setAttribute("list", list);
           request.getRequestDispatcher("UpdateService.jsp").forward(request, response);
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
        ServiceDAO d = new ServiceDAO();
        int Service_ID= Integer.parseInt( request.getParameter("ServiceId"));
        String Service_Name = request.getParameter("Service_Name");
        String Detail = request.getParameter("Detail"); 
        String Image = request.getParameter("Image");
        String Title = request.getParameter("Title");
        String type = request.getParameter("type");
        float Price = Float.parseFloat(request.getParameter("Price"));
        int Discount = Integer.parseInt(request.getParameter("Discount"));
        float Rate = Float.parseFloat(request.getParameter("Rate"));
        int status = Integer.parseInt(request.getParameter("status"));
        d.upService(Service_ID, Service_Name, Detail, "img/img_service/"+Image, Title, Price, Discount, Rate, status, type);
        response.sendRedirect("servicecontroller");
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
