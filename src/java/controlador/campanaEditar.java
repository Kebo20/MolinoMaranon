/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.campañaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.campaña;

/**
 *
 * @author kevin
 */
public class campanaEditar extends HttpServlet {

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

            int id = Integer.parseInt(request.getParameter("id"));
            String codigo = request.getParameter("codigo");
            String fecha = request.getParameter("fecha");
            int numero_sacos = Integer.parseInt(request.getParameter("numero_sacos"));
            double prestamo = Double.valueOf(request.getParameter("prestamo"));
            int agricultor = Integer.parseInt(request.getParameter("agricultor"));

            campaña c = new campaña();
            c.setId(id);
            c.setCodigo(codigo);
            c.setFecha(fecha);
            c.setNumero_sacos(numero_sacos);
            c.setPrestamo(prestamo);

            if (campañaDao.actualizar(c)) {
                for (campaña cam : campañaDao.listar(agricultor)) {
                    out.print("<tr id='" + cam.getId() + "'>"
                            + "<td >" + cam.getCodigo() + "</td>"
                            + "<td >" + cam.getFecha() + "</td>"
                            + "<td >" + cam.getNumero_sacos() + "</td>"
                            + "<td >" + cam.getPrestamo() + " Kg</td>");
                    if (cam.getEstado().equals("activo")) {
                        out.print("<td ><button class=\"btn bg-teal  btn-lg waves-effect btn-xs\" onclick=\"liquidar('" + cam.getId() + "')\" >" + cam.getEstado() + "</button></td>\n");
                    } else {
                        out.print("<td ><button class=\"btn btn-danger  waves-effect btn-xs\"  >" + cam.getEstado() + "</button></td>\n");
                    }
                    out.print("<td class='text-center'><a href=\"produccion.jsp?campana=" + cam.getId() + "\" class='btn bg-teal btn-lg waves-effect btn-xs'>Produccion</a></td>"
                            + " <td class='text-center'><a href=\"resumen.jsp?campana=" + cam.getId() + "\" class='btn bg-teal btn-lg waves-effect btn-xs'>Resumen</a></td>"
                            + " <td class='text-center'><a href=\"gastos_campana.jsp?campana=" + cam.getId() + "\" class='btn bg-teal btn-lg waves-effect btn-xs'>Gastos</a></td>\n"
                            + "<td class='text-center'><a href=\"liquidacion.jsp?campana=" + cam.getId() + "\" class='btn bg-teal btn-lg waves-effect btn-xs'>Liquidación</a></td>"
                            + "<td class='text-center'><button   onclick=\"editar('" + cam.getId() + "','" + cam.getCodigo() + "','" + cam.getFecha() + "','" + cam.getNumero_sacos() + "','" + cam.getPrestamo() + "')\"   class='btn bg-teal btn-lg waves-effect btn-xs'>Editar</button></td>"
                            + "<td class='text-center'><button  onclick=\'eliminar(" + cam.getId() + ")\' class='btn bg-teal btn-lg waves-effect btn-xs'>Eliminar</button></td>"
                            + "</tr>");
                }

            } else {
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
