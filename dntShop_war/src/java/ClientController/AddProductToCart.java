/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ClientController;

import bean.ProductsFacadeLocal;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import entity.Cart;
import entity.Items;
import entity.Products;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nam_Nguyen
 */
@WebServlet(name = "AddProductToCart", urlPatterns = {"/AddProductToCart"})
public class AddProductToCart extends HttpServlet {

    @EJB
    private ProductsFacadeLocal productsFacade;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        /*HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }
        String productId=request.getParameter("productId");
        int qty = Integer.parseInt(request.getParameter("qty"));
        Products products=productsFacade.find(productId);
        cart.addToCart(products, qty);
         session.setAttribute("cart", cart);
            HashMap<Products, Integer> items = cart.getCartItem();
            session.setAttribute("cartItems", items);
            session.setAttribute("subTotal", cart.subTotal());
            HashMap<String, String> cartmini = new HashMap<>();
            cartmini.put("status", "SUCCESS");
            cartmini.put("message", "Product was added to your shopping cart.");
            String cartminiHTML="";
            for (Products product : items.keySet()) {
                cartminiHTML="<tr>\n" +
"                                            <th scope=\"row\">\n" +
"                                                <img src=\"img/icon/close-icon.png\" alt=\"\">\n" +
"                                            </th>\n" +
"                                            <td>\n" +
"                                                <div class=\"media\">\n" +
"                                                    <div class=\"d-flex\">\n" +
"                                                        <img src=\""+product.getImage1()+"\" alt=\"\">\n" +
"                                                    </div>\n" +
"                                                    <div class=\"media-body\">\n" +
"                                                        <h4>"+product.getProductName()+" </h4>\n" +
"                                                    </div>\n" +
"                                                </div>\n" +
"                                            </td>\n" +
"                                            <td><p class=\"red\">$150</p></td>\n" +
"                                            <td>\n" +
"                                                <div class=\"quantity\">\n" +
"                                                    <h6>Quantity</h6>\n" +
"                                                    <div class=\"custom\">\n" +
"                                                        <button onclick=\"var result = document.getElementById('sst2'); var sst2 = result.value; if( !isNaN( sst2 ) &amp;&amp; sst2 > 0 ) result.value--;return false;\" class=\"reduced items-count\" type=\"button\"><i class=\"icon_minus-06\"></i></button>\n" +
"                                                        <input type=\"text\" name=\"qty\" id=\"sst2\" maxlength=\"12\" value=\""+items.get(items)+"\" title=\"Quantity:\" class=\"input-text qty\">\n" +
"                                                        <button onclick=\"var result = document.getElementById('sst2'); var sst2 = result.value; if( !isNaN( sst2 )) result.value++;return false;\" class=\"increase items-count\" type=\"button\"><i class=\"icon_plus\"></i></button>\n" +
"                                                    </div>\n" +
"                                                </div>\n" +
"                                            </td>\n" +
"                                            <td><p>"+product.getPrice()+"</p></td>\n" +
"                                        </tr>";
            }
                
            cartmini.put("cartmini", cartminiHTML);
            cartmini.put("stickycart", cartminiHTML);
            cartmini.put("sidebar", cartminiHTML);
            Gson gson = new GsonBuilder().disableHtmlEscaping().create();
            String json = gson.toJson(cartmini);
            out.print(json);*/
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String productID = request.getParameter("productID");
        Cart cart = (Cart) session.getAttribute("cart");
        
        try {
            
            Products product = productsFacade.find(productID);
            
            switch (command) {
                case "plus":
                    if (cart.getCartItems().containsKey(productID)) {
                        cart.plusToCart(productID, new Items(product,
                                cart.getCartItems().get(productID).getQuantity()));
                    } else {
                        cart.plusToCart(productID, new Items(product, 1));
                    }
                    break;
                case "remove":
                    cart.removeToCart(productID);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("index.jsp");
        }
        session.setAttribute("cart", cart);
        response.sendRedirect("index.jsp");
                
            
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
