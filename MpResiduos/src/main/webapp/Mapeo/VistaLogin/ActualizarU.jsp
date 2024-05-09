<%@page import="ModeloLogin.Usuarios"%>
<%@page import="ControladorReporte.AccionUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/Estilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="tabla-contenedor">
            <form action="IndexU.jsp">
                <button type="button" class="Regresar">Menu</button>
            </form>        
            <h1>Actualizar Datos</h1>
            <form method="post" name="Actualizar" action="../ActualizarU">
                <%
                    int id = Integer.parseInt(request.getParameter("Codigo"));     
                    Usuarios us = AccionUsuarios.BuscarAlumno(id);
                %>
                <table>
                    <tr>
                        <td>Codigo</td>
                        <td><input type="text" name="Codigo2" value="<%=id%>" pattern="[^a-zA-Z]+" oninput="this.value = this.value.replace(/[^0-9]/g, '');" readonly></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="Nombre2" value="<%=us.getNombre()%>"></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="Email2" value="<%=us.getEmail()%>"></td>
                    </tr>
                    <tr>
                        <td>Telefono</td>
                        <td><input type="text" name="Telefono2" value="<%=us.getTelefono()%>" pattern="[^a-zA-Z]+" oninput="this.value = this.value.replace(/[^0-9]/g, '');" ></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="Password2" value="<%=us.getPassword()%>"></td>
                    </tr>                    
                   
                    <tr>
                        <td>Estado</td>
                        <td>
                                <select name="Estado2" value="<%=us.getEstado()%>">
                                        <option value="Activo">Activo</option>
                                        <option value="Inactivo">Inactivo</option>
                                </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Enviar"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
