/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ModeloReporte;

import ControladorReporte.AccionReporte;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author ben10
 */

public class MdReportes extends HttpServlet {

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
            
            LocalDate fechaActual = LocalDate.now();            
            DateTimeFormatter formateador = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            String fechaFormateada = fechaActual.format(formateador);
            LocalTime horaActual = LocalTime.now();
            DateTimeFormatter formateadort = DateTimeFormatter.ofPattern("HH:mm:ss");
            String horaFormateada = horaActual.format(formateadort);
            
                String date =  fechaFormateada;     
                
                 String time = horaFormateada;
                 String estado = request.getParameter("Estado");
                 String etiqueta = request.getParameter("EtiquetaU");
                 int ide =0;
                if("Lleno".equals(estado)){
                    ide = 1;
                }
                
          
          Reporte rpt = new Reporte();
           
            
                   
            rpt.setFecha(date);
            rpt.setHora(time);           
            rpt.setEtiquetaU(etiqueta); 
            rpt.setId_estado(ide);
            
            int estatus = AccionReporte.IngresarReporte(rpt);
            
            if(estatus > 0){                
                response.sendRedirect("Mapeo/Index.jsp"); 
                
            }else{                
                response.sendRedirect("<p>Error</p>");     
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
