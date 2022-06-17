/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControllerPostDetail;

import DAO.PostDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author s
 */
@WebServlet(name = "UpdatePost", urlPatterns = {"/UpdatePost"})
public class UpdatePost extends HttpServlet {

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
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        
        try {
            String image = request.getParameter("image");
            String title = request.getParameter("title");
            String choice = request.getParameter("choincate");
            String content = request.getParameter("content");
            String Post_id = request.getParameter("post_id");
            String User_id = request.getParameter("user_id");
            
            int Pid = Integer.parseInt(Post_id);
            int Uid = Integer.parseInt(User_id);
            
            
            String category = "";
            
            
            if(choice.equals("Family")){
                category = "Family";
            }else if(choice.equals("Health")){
                category = "Health";
            }else if(choice.equals("Education")){
                category = "Education";
            }else{
                category = "Family";
            }
           
            String choicestatus = request.getParameter("choicestatus");
            int status = 1;
            
            if(choicestatus.equals("Show")){
                status = 1;
            }else if(choice.equals("Hide")){
                status = 0;
            }else{
                status = 1;
            }
            

            PostDetailDAO dao = new PostDetailDAO();
            dao.updatenews(title, content, Uid, image, status, category, Pid);

            response.sendRedirect("LoadPostD");
        } catch (Exception e) {
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