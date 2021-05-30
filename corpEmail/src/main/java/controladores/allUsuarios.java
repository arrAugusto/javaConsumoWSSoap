/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.conectionUser;

/**
 *
 * @author agr12
 */
public class allUsuarios extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    conectionUser conexionUsuario = new conectionUser();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        response.setContentType("text/html;charset=UTF-8");
        conectionUser conexionUsuario = new conectionUser();
        controladorServlet.ArrayOfString dataUsuario = conexionUsuario.AllUser();

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int contador = 0;
            for (String s : dataUsuario.getString()) {
                contador++;
            }
            int iterador = contador / 7;

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet allUsuarios</title>");
            out.println("<link rel='stylesheet' type='text/css' href='https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css'></link>");

            out.println("</head>");
            out.println("<body>");
            out.println("<table>");
            out.println("<tbody>");
            out.println("<thead style='background-color: #81BEF7;color: white; font-weight: bold;'>");
            out.println("<tr>");
            out.println("<th style='whidth:5px'>#</th>");
            out.println("<th>Nit</th>");
            out.println("<th>Nombre de empresa</th>");
            out.println("<th>Contacto</th>");
            out.println("<th>Telefono</th>");
            out.println("<th>Email</th>");
            out.println("<th>Acciones</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");

            out.println("</table>");

            out.println("</body>");
            out.println("<script type='text/javascript' charset='utf8' src='https://cdn.datatables.net/1.10.24/js/jquery.dataTables.js'></script>");
            out.println(" <script>$('#tablasGeneral').DataTable({'language': { 'sProcessing': 'Procesando...','sLengthMenu': 'Mostrar _MENU_ registros',\n"
                    + "'sZeroRecords': 'No se encontraron resultados', 'sEmptyTable': 'Ningún dato disponible en esta tabla', 'sInfo': 'Mostrando registros del _START_ al _END_ de un total de _TOTAL_', 'sInfoEmpty': 'Mostrando registros del 0 al 0 de un total de 0', 'sInfoFiltered': '(filtrado de un total de _MAX_ registros)', 'sInfoPostFix': '', 'sSearch': 'Busqueda:', 'sUrl': '', 'sInfoThousands': ',', 'sLoadingRecords': 'Cargando...', 'oPaginate': { 'sFirst': 'Primero', 'sLast': 'Último', 'sNext': 'Siguiente', 'sPrevious': 'Anterior'  }, 'oAria': { 'sSortAscending': ': Activar para ordenar la columna de manera ascendente', 'sSortDescending': ': Activar para ordenar la columna de manera descendente' } } });</script>");
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
