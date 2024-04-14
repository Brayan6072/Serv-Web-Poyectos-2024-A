package controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String logemail = request.getParameter("logemail");
        String logpass = request.getParameter("logpass");
        
        // Aquí iría la lógica para validar las credenciales del usuario
        // Por ejemplo, podrías llamar a un método en tu clase de modelo (UsuarioDAO) para verificar las credenciales
        
        // Por ahora, simplemente redireccionamos al usuario a una página de bienvenida
        response.sendRedirect("welcome.jsp");
    }
}
