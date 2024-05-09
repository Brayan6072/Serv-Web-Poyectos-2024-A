

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="../css/Login.css">
    <title>Iniciar Sesion</title>
</head>

<body>
    <div class="container" id="container">
        <div class="form-container sign-up">
            
            <form method="post" name="Insertar" action="/InsertarU">
                <h1>Crear Cuenta</h1>
                <input name = "Nombre" type="text" placeholder="Nombre" oninput="this.value = this.value.replace(/[^a-zA-Z ]/g, '');">
                <input name="Email" type="email" placeholder="Correo">
                <input name="Telefono" type="text" placeholder="Telefono" pattern="[^a-zA-Z]+" oninput="this.value = this.value.replace(/[^0-9]/g, '');" maxlength="10">
                <input  name="Password" type="password" placeholder="Contraseña">
                <select name="usertype" id="usertype">
                    <option value="encargado">Encargado</option>
                    <option value="administrador">Administrador</option>
                </select>
                <div id="clave-field" style="display:none;">
                    <input type="password" placeholder="Clave Administrador">
                </div>
                <div id="clave-extra-field" style="display:none;">
                </div>
                <button type="submit" title="Ingresar" name="crear">Crear</button>
            </form>
            
        </div>
        
        
        <div class="form-container sign-in">
            
            <form method="post" action="/ValidarUs">
                <h1>Iniciar Sesion</h1>
                <input name="correo" type="email" placeholder="Correo">
                <input name="password" type="password" placeholder="Contraseña">
                <a href="#">¿Olvidó su contraseña?</a>
                <button type="submit" name="Ingresar">Entrar</button>
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Hola de nuevo!</h1>
                    <p>Si ya tiene una cuenta con nosotros, inicie sesión aquí</p>
                    <button class="hidden" id="login">Iniciar Sesion</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Hola Amigo!</h1>
                    <p>Regístrese si aún no tiene una cuenta con nosotros</p>
                    <button class="hidden" id="register" >Registrate Aqui</button>
                </div>
            </div>
        </div>
    </div>
    <script src="../js/scriptlg.js"></script>
</body>

</html>