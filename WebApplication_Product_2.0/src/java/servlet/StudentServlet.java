/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entites.Student;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Phong_learning
 */
public class StudentServlet extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet StudentServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet StudentServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }

//save into db
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("WebApplication_Product_2.0PU");
        EntityManager em = factory.createEntityManager();

        Query query = em.createNamedQuery("Student.findAll", Student.class);
        List<Student> list = query.getResultList();

        for (Student s : list) {
            System.out.println(s.getFullName());
        }
        request.setAttribute("display", list); // = Viewdata mvc
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/studentList.jsp");
        dispatcher.forward(request, response);
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
        String nameSearch = request.getParameter("studentf");
        String id_delete = request.getParameter("id_delete");
        
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("WebApplication_Product_2.0PU");
            EntityManager em = factory.createEntityManager();
            
        if (id_delete != null && !id_delete.isEmpty()) {
            int id = Integer.parseInt(id_delete);

            

            Student std = em.find(Student.class, id);

            em.getTransaction().begin();
            em.remove(std);
            em.getTransaction().commit();
        }

        Student std = new Student(0);
        String id_edit = request.getParameter("id_edit");
        if (id_edit != null && !id_edit.isEmpty()) {
            int id = Integer.parseInt(id_edit);
            std = em.find(Student.class, id);
            request.setAttribute("std", std); // = Viewdata mvc
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/editStudent.jsp");
            dispatcher.forward(request, response);
        }
        
        if(nameSearch != null){
             Query query = em.createNamedQuery("Student.findByFullName").setParameter("fullName", nameSearch);
        List<Student> list = query.getResultList();
        
        for (Student s : list) {
            System.out.println(s.getFullName());
        }
        request.setAttribute("display", list); // = Viewdata mvc
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/studentList.jsp");
        dispatcher.forward(request, response);
        }
        
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

        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String address = request.getParameter("address");

        if (request.getParameter("id") != null) {

            EntityManagerFactory factory = Persistence.createEntityManagerFactory("WebApplication_Product_2.0PU");
            EntityManager em = factory.createEntityManager();
            int id = Integer.parseInt(request.getParameter("id"));
            Student std = em.find(Student.class, id);

            em.getTransaction().begin();
            std.setFullName(name);
            std.setAge(age);
            std.setAddress(address);
            em.getTransaction().commit();
        }else{
          EntityManagerFactory factory = Persistence.createEntityManagerFactory("WebApplication_Product_2.0PU");
            EntityManager em = factory.createEntityManager();

            Student std = new Student();

            std.setFullName(name);
            std.setAge(age);
            std.setAddress(address);

            em.getTransaction().begin();
            em.persist(std);
            em.getTransaction().commit();
        }
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
