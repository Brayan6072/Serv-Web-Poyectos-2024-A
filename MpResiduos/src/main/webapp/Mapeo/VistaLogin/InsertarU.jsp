
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
            <h1>Insertar Datos</h1>
            <form method="post" name="Insertar" action="/MpResiduos/InsertarU">
                <table>
                    
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="Nombre"></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="Email"></td>
                    </tr>
                    <tr>
                        <td>Telefono</td>
                        <td><input type="text" name="Telefono" pattern="[^a-zA-Z]+" oninput="this.value = this.value.replace(/[^0-9]/g, '');" ></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="Password"></td>
                    </tr>
                                   
                    <tr>
                        <td colspan="2"><input type="submit" value="Enviar"></td>
                    </tr>
                </table>
           </form>
        </div>
    </body>
</html>

