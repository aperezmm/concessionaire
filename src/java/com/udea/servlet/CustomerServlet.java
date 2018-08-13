/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.CustomersFacadeLocal;
import com.udea.entity.Customers;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alejo
 */
public class CustomerServlet extends HttpServlet {

    @EJB
    private CustomersFacadeLocal customersFacade;

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
        response.setContentType("tPrintWriterext/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    try{
        String action = request.getParameter("action");
        String url ="index.jsp";
        
        if("list".equals(action)){
            List<Customers> findAll = customersFacade.findAll();
            request.getSession().setAttribute("customers", findAll);
            url = "listCustomers.jsp";
        } else if("login".equals(action)){
            String u = request.getParameter("username");
            String p = request.getParameter("password");
            boolean checklogin = customersFacade.checkLogin(u, p);
            if(checklogin){
                request.getSession().setAttribute("login", u);
                url = "manager.jsp";
            } else {
                url = "login.jsp?error=1";
            }
        } else if("insert".equals(action)){
            Customers a = new Customers();
            a.setUsername(request.getParameter("username"));
            a.setPassword(request.getParameter("password"));
            a.setNames(request.getParameter("names"));
            a.setId(request.getParameter("id"));
            a.setEmail(request.getParameter("email"));
            a.setCellPhone(request.getParameter("cellPhone"));
            customersFacade.create(a);
            url = "login.jsp";
        } else if("delete".equals(action)){
            String id = request.getParameter("id");
            Customers a = customersFacade.find(Integer.valueOf(id));
            customersFacade.remove(a);
            url = "CustomerServlet?action=list";
        } else if("logout".equals(action)){
            request.getSession().removeAttribute("login");
            url = "login.jsp";
        }
        response.sendRedirect(url);
    } finally{
        out.close();
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