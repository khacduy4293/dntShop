/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package AdminController;

import bean.CategoriesFacadeLocal;
import bean.CustomersFacadeLocal;
import bean.OrdersFacadeLocal;
import bean.ProductsFacadeLocal;
import entity.Orders;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duy
 */
@WebServlet(name = "adminViewDashBoard", urlPatterns = {"/adminViewDashBoard"})
public class adminViewDashBoard extends HttpServlet {

    @EJB CustomersFacadeLocal cusFacade;
    @EJB ProductsFacadeLocal proFacade;
    @EJB CategoriesFacadeLocal cateFacade;
    @EJB OrdersFacadeLocal orderFacade;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        request.setAttribute("totalUserRegis", cusFacade.findAll().size());
        request.setAttribute("totalProducts", proFacade.findAll().size());
        request.setAttribute("totalCategories", cateFacade.findAll().size());
        request.setAttribute("totalOrders", orderFacade.findAll().size());
        int totalProfit=0;
//        for (int i = 0; i < orderFacade.OrderListByMonth().size(); i++) {
//            if(!orderFacade.OrderListByMonth("10").get(i).getProcessStatus().equals("Canceled")){
//                totalProfit+=orderFacade.OrderListByMonth("10").get(i).getTotal();
//            }
//        }
        request.setAttribute("totalProfit", totalProfit);
        List<Orders> orderList = orderFacade.findAll();
        Collections.reverse(orderList);
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("adminDashboard.jsp").forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
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
