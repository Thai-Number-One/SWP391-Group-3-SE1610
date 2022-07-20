/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.DashboardDAO;
import DAO.SliderDetailDAO;
import Entity.Slider;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author thaic
 */
@WebServlet(name = "AddSliderControl", urlPatterns = {"/AddSliderControl"})
public class AddSliderControl extends HttpServlet {

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
       String title = request.getParameter("Tittle");
        String image = request.getParameter("Image");
        String backLink = request.getParameter("BackLink");
        
         Pattern p = Pattern.compile("^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]");
            while (true) {
                if (p.matcher(backLink).find()) {

                    break;
                } else {
                    String mess = "Backlink is invalid, please enter again";
                    request.setAttribute("mess", mess);
                    
                    request.getRequestDispatcher("addSilder.jsp").forward(request, response);
                }
            }
            
         request.removeAttribute("mess1");
        request.removeAttribute("mess2");
        request.removeAttribute("mess3");
        request.removeAttribute("mess4");
        request.removeAttribute("mess5");
        request.removeAttribute("mess6");
        request.removeAttribute("mess7");
        
        Pattern p3 = Pattern.compile("^[a-zA-Z]+(\\s[a-zA-Z]+)+$");
        if(!p3.matcher(title).find()){
            request.setAttribute("mess5", "Title not empty");
            request.getRequestDispatcher("addSilder.jsp").forward(request, response);
        }

        
        int status = Integer.parseInt(request.getParameter("status"));
       
        
        DashboardDAO dao = new DashboardDAO();
        
        dao.insertSlider(title,image,backLink,status);
        response.sendRedirect("SliderControl");
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
