/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.DashboardDAO;
import Entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
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
@WebServlet(name = "AddPostControl", urlPatterns = {"/AddPostControl"})
public class AddPostControl extends HttpServlet {

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
        String content = request.getParameter("Content");
        String image = request.getParameter("Image");
        int author = Integer.parseInt(request.getParameter("author"));
        int status = Integer.parseInt(request.getParameter("status"));
        int category = Integer.parseInt(request.getParameter("Category"));
        
        request.removeAttribute("mess1");
        request.removeAttribute("mess2");
        request.removeAttribute("mess3");
        request.removeAttribute("mess4");
        request.removeAttribute("mess5");
        request.removeAttribute("mess6");
        request.removeAttribute("mess7");
        
        Pattern p3 = Pattern.compile("^[a-zA-Z]+(\\s[a-zA-Z]+)+$");
        if(!p3.matcher(title).find()){
            request.setAttribute("mess5", "Title not empty!");
            request.getRequestDispatcher("addPost.jsp").forward(request, response);
        }
       
        
        DashboardDAO dao = new DashboardDAO();
        
        dao.insertPost(title, content,image,author,status,category);
        response.sendRedirect("Post");
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
