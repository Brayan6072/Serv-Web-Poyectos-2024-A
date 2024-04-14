package controladores;

import modelos.User; // Importa la clase User del paquete modelos
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtiene los parámetros del formulario de registro
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validación de datos del formulario
        if (username == null || email == null || password == null ||
            username.isEmpty() || email.isEmpty() || password.isEmpty()) {
            // Si algún campo está vacío, redirige de vuelta al formulario de registro con un mensaje de error
            response.sendRedirect("registro.jsp?error=emptyFields");
            return; // Termina la ejecución del método para evitar más procesamiento
        }

        // Validación de formato de correo electrónico
        if (!isValidEmail(email)) {
            // Si el formato del correo electrónico no es válido, redirige de vuelta al formulario de registro con un mensaje de error
            response.sendRedirect("registro.jsp?error=invalidEmail");
            return;
        }

        // Validación de longitud mínima de la contraseña
        if (password.length() < 8) {
            // Si la longitud de la contraseña es menor que 8 caracteres, redirige de vuelta al formulario de registro con un mensaje de error
            response.sendRedirect("registro.jsp?error=shortPassword");
            return;
        }

        // Si llegamos hasta aquí, significa que los datos del formulario son válidos
        // Ahora podemos crear un nuevo objeto User y guardarlo en la base de datos o en algún otro almacenamiento
        User newUser = new User(username, email, password);

        // Aquí iría la lógica para guardar el usuario en la base de datos o en algún almacenamiento

        // Redireccionamos al usuario a una página de registro exitoso
        response.sendRedirect("registro_exitoso.jsp");
    }

    // Método para validar el formato del correo electrónico usando una expresión regular
    private boolean isValidEmail(String email) {
        // Expresión regular para validar el formato del correo electrónico
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        return email.matches(emailRegex);
    }
}
