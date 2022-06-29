/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DAO.BlogDAO;
import DAO.FeedbacksDAO;
import Entity.allfeedbacks;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "BlogDetailsServlet", urlPatterns = {"/blogdetails"})
public class BlogDetailsServlet extends HttpServlet {

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
            try {
                /* TODO output your page here. You may use following sample code. */
                int blog_id = Integer.parseInt(request.getParameter("postid"));
                BlogDAO BDao = new BlogDAO();
                FeedbacksDAO FDao = new FeedbacksDAO();
                List lst = new ArrayList();
                List lst2 = new ArrayList();
                List<allfeedbacks> lst3 = new ArrayList<>();

                int index = 0;
                for (int i = 0; i < BDao.Blogs().size(); i++) {
                    if (BDao.Blogs().get(i).getPosts().getPost_ID() == blog_id) {
                        lst.add(BDao.Blogs().get(i));
                        index = BDao.Blogs().get(i).getService().getServiceid();
                    }
                }
                for (int i = 0; i < BDao.Blogs().size(); i++) {
                    if (BDao.Blogs().get(i).getPosts().getService_ID() == index) {
                        lst2.add(BDao.Blogs().get(i));
                    }
                }
                for (int i = 0; i < FDao.allfeedbacks().size(); i++) {
                    if (FDao.allfeedbacks().get(i).getService().getServiceid() == index && FDao.allfeedbacks().get(i).getFeedbacks().getStatus() == 1) {
                        lst3.add(FDao.allfeedbacks().get(i));
                    }
                }
                request.setAttribute("blogdetails", lst);
                request.setAttribute("contactlink", lst2);
                request.setAttribute("feedback", lst3);
                request.getRequestDispatcher("Blogdetails.jsp").forward(request, response);
            } catch (Exception ex) {
                Logger.getLogger(BlogDetailsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
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
