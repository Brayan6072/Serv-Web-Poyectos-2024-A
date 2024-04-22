/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ModeloLogin;

import ControladorReporte.AccionUsuarios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.crypto.bcrypt.BCrypt;

/**
 *
 * @author ben10
 */
public class InsertarU extends HttpServlet {

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
            try {
               String nombre = request.getParameter("Nombre");
               String email = request.getParameter("Email");
               String telefono =request.getParameter("Telefono");
               String psw = request.getParameter("Password");
               String tpuser = request.getParameter("usertype");
               String est = "Activo";

               // Aplicar hashing a la contraseña antes de guardarla
               psw = BCrypt.hashpw(psw, BCrypt.gensalt());
               
               Usuarios us = new Usuarios();
               us.setNombre(nombre);         
               us.setEmail(email);
               us.setTelefono(telefono);
               us.setPassword(psw);          
               us.setTpuser(tpuser);
               us.setEstado(est);

               int estatus = AccionUsuarios.IngresarUsuario(us);

               if (estatus > 0) {
                   response.sendRedirect("Mapeo//VistaLogin/Login.jsp");
               } else {
                   // Mejora: enviar mensaje a través de la redirección
                   response.sendRedirect("error.jsp?message=Error%20al%20insertar%20usuario");
               }
           } catch (NumberFormatException e) {
               // Mejora: enviar mensaje a través de la redirección
               response.sendRedirect("error.jsp?message=Formato%20de%20telefono%20incorrecto");
           } catch (Exception e) {
               // Mejora: enviar mensaje a través de la redirección
               response.sendRedirect("error.jsp?message=Error%20interno%20del%20servidor");
           }
        }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
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
