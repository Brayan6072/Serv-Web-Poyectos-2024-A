<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/Estilos.css"/>
        <title>Eliminar</title>
    </head>
    <body>
        <div class="tabla-contenedor">
            <h1>Eliminar Registro!</h1>
            
            <form method="post" name="Eliminar" action="../EliminarU">
                <table>
                    <tr>
                        <td>Codigo</td>
                        <td><input type="text" name="Codigo" pattern="[^a-zA-Z]+" oninput="this.value = this.value.replace(/[^0-9]/g, '');" ></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Enviar"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
