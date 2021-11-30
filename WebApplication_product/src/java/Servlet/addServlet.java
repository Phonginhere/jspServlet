/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAO.CategoryDAO;
import Entites.Category;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Phong_learning
 */
@WebServlet("/list")
public class addServlet extends HttpServlet {

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
            out.println("<title>Servlet addServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addServlet at " + request.getContextPath() + "</h1>");
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
        String name = request.getParameter("name");

        HttpSession session = request.getSession(true);
        session.setAttribute("assign", name);
        response.sendRedirect(request.getContextPath() + "/assign.jsp");
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
        int id_product = 0;
        int id_cate = 0;
        String name = request.getParameter("name");
        if(name == null){
              response.sendRedirect(request.getContextPath() + "/productlist.jsp");
        }
        String cate_name = request.getParameter("name_category");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdb", "root", "");
            Statement st = con.createStatement();

            //begin select id from product
            String sql_product = "Select product_ID from product where Name = '"+name+"'";
            ResultSet rs = st.executeQuery(sql_product);

            while (rs.next()) {
                id_product = rs.getInt(1);
            }
            //end  select id from product
            
            
            //begin select id from category
            String sql_cate = "Select category_ID from category where Name= '"+cate_name+"'";
            ResultSet rs_cate = st.executeQuery(sql_cate);

            while (rs_cate.next()) {
                id_cate = rs_cate.getInt(1);
            }
            //end select id from category
            
            
            //begin update category id in product id rows
            String sql_update = "Update product set category_ID = ? where product_ID = ?";
            PreparedStatement ps = con.prepareStatement(sql_update);
            HttpSession session = request.getSession(true);
            ps.setInt(1, id_cate);
            ps.setInt(2, id_product);
            int check = ps.executeUpdate();
            if (check > 0) {
                session.setAttribute("succesful", "Succesful updating");
                response.sendRedirect(request.getContextPath() + "/productlist.jsp");
            } 
            else {
                session.setAttribute("fail", "update fail, pls try again");
                response.sendRedirect(request.getContextPath() + "/productadd.jsp");
            }
            //end update category id in product id rows
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addServlet.class.getName()).log(Level.SEVERE, null, ex);
            PrintWriter printWriter = response.getWriter();
            printWriter.print(id_product);

        } catch (SQLException ex) {
            Logger.getLogger(addServlet.class.getName()).log(Level.SEVERE, null, ex);
            PrintWriter printWriter = response.getWriter();
            printWriter.print(id_product);
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
