/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControllerPostDetail;

import DAO.PostDetailDAO;
import DAO.SliderDetailDAO;
import Entity.Posts;
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
 * @author s
 */
@WebServlet(name = "EditSlider", urlPatterns = {"/EditSlider"})
public class EditSlider extends HttpServlet {

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
            String image = request.getParameter("image");
            String title = request.getParameter("title");
            String choicestatus = request.getParameter("choicestatus");
            String backlink = request.getParameter("backlink");
            String slider_id = request.getParameter("slider_id");
            String User_id = request.getParameter("user_id");

            int Sid = Integer.parseInt(slider_id);
            int Uid = Integer.parseInt(User_id);

            int status = 1;

            int choice = Integer.parseInt(choicestatus);

            if (choice == 1) {
                status = 1;
            } else if (choice == 0) {
                status = 0;
            } else {
                status = 1;
            }

            Pattern p = Pattern.compile("^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]");
            while (true) {
                if (p.matcher(backlink).find()) {

                    break;
                } else {
                    String mess = "Backlink is invalid, please enter again";
                    request.setAttribute("mess", mess);
                    SliderDetailDAO dao = new SliderDetailDAO();

                    Slider d = dao.getDetailSilder(Sid);

                    request.setAttribute("SliderD", d);
                    request.getRequestDispatcher("SliderDetail.jsp").forward(request, response);
                }
            }
            
            Pattern p2 = Pattern.compile("^[a-zA-Z0-9 ]+$");
            while (true) {
                if (p2.matcher(title).find()) {

                    break;
                } else if(title != null) {
                    String messa = "Title is invalid, please enter again";
                    request.setAttribute("messTitle", messa);
                    
                   SliderDetailDAO dao = new SliderDetailDAO();

                    Slider d = dao.getDetailSilder(Sid);


                    request.setAttribute("SliderD", d);
                    request.getRequestDispatcher("SliderDetail.jsp").forward(request, response);
                }else{
                    break;
                }
            }
            
            
            SliderDetailDAO dao = new SliderDetailDAO();
            dao.updateslider(title, backlink, Uid, image, status, Sid);

            response.sendRedirect("SliderControl");

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
