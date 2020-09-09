/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.produccionDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.produccion;

/**
 *
 * @author kevin
 */
public class produccionEditar extends HttpServlet {

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
           String productos=request.getParameter("producto");
            int numero_sacos=Integer.parseInt(request.getParameter("numero_sacos"));
            int id=Integer.parseInt(request.getParameter("produccion"));
            int campaña=Integer.parseInt(request.getParameter("campana"));
            int numero_kilos;
            
            
             if (request.getParameter("numero_kilos").equals("")) {
                numero_kilos=0;
            }else
            {
                numero_kilos=Integer.parseInt(request.getParameter("numero_kilos"));
            }
            
            produccion p= new produccion();
            p.setProducto(productos); 
            p.setId(id);
            p.setNumero_sacos(numero_sacos);
            p.setNumero_kilos(numero_kilos);
            p.setId_campaña(campaña);
           
           
            if (produccionDao.actualizar(p)) {
                for(produccion pr:produccionDao.listar(String.valueOf(p.getId_campaña()) )) {
                    
                    String producto=" ";
                                                    switch (pr.getProducto()) {
                                                        case "1":
                                                            producto = "Arroz";
                                                            break;
                                                        case "2":
                                                            producto = "Arrocillo";
                                                            break;
                                                        case "3":
                                                            producto = "Descarte";
                                                            break;
                                                        case "4":
                                                            producto = "Polvillo";
                                                            break;
                                                        case "5":
                                                            producto = "Ñelen";
                                                            break;

                                                    }
                out.print(" <tr >\n" +
"                                               <td>"+producto+" </td>\n" +
"                                               <td>"+pr.getNumero_sacos()+" </td>\n" +
"                                               <td>"+pr.getNumero_kilos()+" </td>\n" +
"                                               n" +
"                                               \n" +
"                                              \n" +
"                                                <td class='text-center'><button onclick=\"editar('"+pr.getId()+"','"+pr.getProducto()+"','"+pr.getNumero_sacos()+"','"+pr.getNumero_kilos() +"')\"   class='btn bg-teal btn-lg waves-effect btn-xs'>Editar</button></td>\n" +
"                                                <td class='text-center'><button onclick=\"eliminar("+pr.getId()+")\" class='btn bg-teal btn-lg waves-effect btn-xs'>Eliminar</button></td>\n" +
"                                                   \n" +
"                                               \n" +
"                                           </tr>  ");
                
            }
            }else{
                 out.print("");
           
            
            
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
