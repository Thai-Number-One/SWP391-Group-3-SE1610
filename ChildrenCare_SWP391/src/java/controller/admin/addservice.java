/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.DashboardDAO;
import DAO.ServiceDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author phong
 */
@WebServlet(name = "addservice", urlPatterns = {"/addservice"})
public class addservice extends HttpServlet {

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
        ServiceDAO d = new ServiceDAO();
        int Service_ID=d.getAllServices().get(d.getAllServices().size()-1).getServiceid()+1;
        String Service_Name = request.getParameter("Service_Name");
        String Detail = request.getParameter("Detail");
        String Type = request.getParameter("Type");
        
        String Image = request.getParameter("Image");
        String Title = request.getParameter("Title");
        float Price = Float.parseFloat(request.getParameter("Price"));
        int Discount = Integer.parseInt(request.getParameter("Discount"));
        float Rate = Float.parseFloat(request.getParameter("Rate"));
        int status = Integer.parseInt(request.getParameter("status"));
        
        request.removeAttribute("mess1");
        request.removeAttribute("mess2");
        request.removeAttribute("mess3");
        request.removeAttribute("mess4");
        
        Pattern p1 = Pattern.compile("^[a-zA-Z]+(\\s[a-zA-Z]+)+$");
        if(!p1.matcher(Service_Name).find()){
            request.setAttribute("mess1", "Please check your Service name again!");
            request.getRequestDispatcher("Addservice.jsp").forward(request, response);
        }
        if(!p1.matcher(Detail).find()){
            request.setAttribute("mess2", "Please check your Detail again!");
            request.getRequestDispatcher("Addservice.jsp").forward(request, response);
        }
        if(!p1.matcher(Type).find()){
            request.setAttribute("mess3", "Please check your Type again!");
            request.getRequestDispatcher("Addservice.jsp").forward(request, response);
        }
        if(!p1.matcher(Title).find()){
            request.setAttribute("mess4", "Please check your Title again!");
            request.getRequestDispatcher("Addservice.jsp").forward(request, response);
        }
        else{
        d.insertService(Service_ID, Service_Name, Detail, Type, "img/img_service/"+Image, Title, Price, Discount, Rate, status);
        response.sendRedirect("servicecontroller");
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
