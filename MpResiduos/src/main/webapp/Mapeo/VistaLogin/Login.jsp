

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html lang="es">
    
    <head>
        
        <meta charset="utf-8">
        
        <title> Formulario de Acceso </title>    
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        
        
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css?family=Overpass&display=swap" rel="stylesheet">
        

        <link rel="stylesheet" href="../css/Login.css">
        
        <style type="text/css">
            
        </style>
        
        <script type="text/javascript">
        
        </script>
        
    </head>
    
    <body>
        
        <div id="contenedor">
            <div id="central">
                <div id="login">
                    <div class="titulo">
                        Bienvenido
                    </div>
                    
                    
                    <form id="loginform" method="post" action="/MpResiduos/ValidarUs">
                        <input type="text" name="Nombre" placeholder="Nombre" required>                        
                        <input type="password" placeholder="Contraseña" name="Password" required>
                          
                       

                        <button type="submit" title="Ingresar" name="Ingresar">Ingresar</button> 
                        
                        
                      
                    </form>
                    
                    <div class="pie-form">
                        <a href="ActualizarU.jsp">¿Perdiste tu contraseña?</a>
                        <a href="InsertarU.jsp">¿No tienes Cuenta? Registrate</a>
                    </div>
                </div>
                <div class="inferior">
                    <a href="../Index.jsp">Volver</a>
                </div>
            </div>
        </div>
            
    </body>
</html>